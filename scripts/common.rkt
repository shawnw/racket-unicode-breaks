#lang racket

;;; Routines used by multiple scripts.
(require racket/match (prefix-in is- data/integer-set) net/url)
(provide cache-file read-unicode-tables unicode-tables->vector create-source-file generate-tests
         test-func
         (struct-out char-range))

(struct char-range (lower upper category) #:prefab)

(define test-func (make-parameter 'error))

(define (cache-file url filename)
  (unless (file-exists? filename)
    (call-with-output-file filename
      (lambda (out-port)
        (call/input-url
         url get-pure-port
         (lambda (in-port)
           (printf "Downloading ~A to ~A~%" (url->string url) (path->string filename))
           (copy-port in-port out-port)))))))

(define (read-unicode-tables)
  (for/fold ([tables (hasheq)])
            ([line (in-lines)])
    (match line
      [(pregexp #px"^([[:xdigit:]]{4,6})\\s*;\\s*([[:word:]]+)" (list _ num name))
       (hash-update tables (string->symbol name)
                    (lambda (cps) (is-union cps (is-make-range (string->number num 16))))
                    is-make-range)]
      [(pregexp #px"^([[:xdigit:]]{4,6})\\.\\.([[:xdigit:]]{4,6})\\s*;\\s([[:word:]]+)" (list _ begin end name))
       (hash-update tables (string->symbol name)
                    (lambda (cps) (is-union cps (is-make-range (string->number begin 16) (string->number end 16))))
                    is-make-range)]
      [_ tables])))

(define (unicode-tables->vector tables)
  (let ([vec (for*/vector
        ([(category cps) (in-hash tables)]
         [range (in-list (is-integer-set-contents cps))])
               (char-range (integer->char (car range)) (integer->char (cdr range)) category))])
    (vector-sort! vec (lambda (a b) (char<? (char-range-upper a) (char-range-lower b))))
    vec))

(define (generate-tests)
  (displayln "#lang racket/base")
  (displayln "; Auto-generated file. Do not edit.")
  (displayln "(module+ test")
  (displayln "(require rackunit \"../main.rkt\")")
  (for ([line (in-lines)])
    (cond
      [(regexp-match #px"^(÷\\s+(?:[[:xdigit:]]{4,6}\\s+[÷×]\\s+)+)#\\s+(.*)" line)
       => (lambda (match-data)
            (let ([str (list->string
                        (map (lambda (hex-cp) (integer->char (string->number hex-cp 16)))
                             (regexp-match* #px"[[:xdigit:]]+" (second match-data))))]
                  [breaks (for/list ([break? (in-list (regexp-match* #px"[÷×]" (second match-data)))]
                                     [idx (in-naturals)]
                                     #:when (string=? break? "÷"))
                            idx)])
              (pretty-write `(test-equal? ,(format "~A: ~A" str (third match-data))
                                          (,(test-func) ,str)
                                          (quote ,breaks)))))]
      [else (void)]))
  (displayln ")"))

(define (create-source-file master-url cached-file destination-source-file proc)
  (cache-file master-url cached-file)
  (call-with-input-file cached-file
    (lambda (in-port)
      (parameterize ([pretty-print-columns 80]
                     [current-input-port in-port])
        (printf "Generating ~A from ~A~%" (path->string destination-source-file) (path->string cached-file))
        (with-output-to-file destination-source-file #:exists 'replace
          proc)))))

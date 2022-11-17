#lang racket/base
; Auto-generated file. Do not edit.
(module+ test
(require rackunit "../main.rkt")
(test-equal?
 "\u0001\u0001: ÷ [0.2] <START OF HEADING> (Other) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\u0001")
 '(0 2))
(test-equal?
 "\u0001̈\u0001: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\u0001")
 '(0 3))
(test-equal?
 "\u0001\r: ÷ [0.2] <START OF HEADING> (Other) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\r")
 '(0 2))
(test-equal?
 "\u0001̈\r: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\r")
 '(0 3))
(test-equal?
 "\u0001\n: ÷ [0.2] <START OF HEADING> (Other) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\n")
 '(0 2))
(test-equal?
 "\u0001̈\n: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\n")
 '(0 3))
(test-equal?
 "\u0001\u0085: ÷ [0.2] <START OF HEADING> (Other) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\u0085")
 '(0 2))
(test-equal?
 "\u0001̈\u0085: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\u0085")
 '(0 3))
(test-equal?
 "\u0001\t: ÷ [0.2] <START OF HEADING> (Other) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\t")
 '(0 2))
(test-equal?
 "\u0001̈\t: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\t")
 '(0 3))
(test-equal?
 "\u0001a: ÷ [0.2] <START OF HEADING> (Other) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001a")
 '(0 2))
(test-equal?
 "\u0001̈a: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈a")
 '(0 3))
(test-equal?
 "\u0001A: ÷ [0.2] <START OF HEADING> (Other) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001A")
 '(0 2))
(test-equal?
 "\u0001̈A: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈A")
 '(0 3))
(test-equal?
 "\u0001ƻ: ÷ [0.2] <START OF HEADING> (Other) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001ƻ")
 '(0 2))
(test-equal?
 "\u0001̈ƻ: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈ƻ")
 '(0 3))
(test-equal?
 "\u00010: ÷ [0.2] <START OF HEADING> (Other) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u00010")
 '(0 2))
(test-equal?
 "\u0001̈0: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈0")
 '(0 3))
(test-equal?
 "\u0001.: ÷ [0.2] <START OF HEADING> (Other) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001.")
 '(0 2))
(test-equal?
 "\u0001̈.: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈.")
 '(0 3))
(test-equal?
 "\u0001!: ÷ [0.2] <START OF HEADING> (Other) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001!")
 '(0 2))
(test-equal?
 "\u0001̈!: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈!")
 '(0 3))
(test-equal?
 "\u0001\": ÷ [0.2] <START OF HEADING> (Other) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\"")
 '(0 2))
(test-equal?
 "\u0001̈\": ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\"")
 '(0 3))
(test-equal?
 "\u0001,: ÷ [0.2] <START OF HEADING> (Other) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001,")
 '(0 2))
(test-equal?
 "\u0001̈,: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈,")
 '(0 3))
(test-equal?
 "\u0001\u00AD: ÷ [0.2] <START OF HEADING> (Other) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001\u00AD")
 '(0 2))
(test-equal?
 "\u0001̈\u00AD: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈\u00AD")
 '(0 3))
(test-equal?
 "\u0001̀: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̀")
 '(0 2))
(test-equal?
 "\u0001̈̀: ÷ [0.2] <START OF HEADING> (Other) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0001̈̀")
 '(0 3))
(test-equal?
 "\r\u0001: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\r\u0001")
 '(0 1 2))
(test-equal?
 "\r̈\u0001: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\u0001")
 '(0 1 3))
(test-equal?
 "\r\r: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\r\r")
 '(0 1 2))
(test-equal?
 "\r̈\r: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\r")
 '(0 1 3))
(test-equal?
 "\r\n: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) × [3.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\r\n")
 '(0 2))
(test-equal?
 "\r̈\n: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\n")
 '(0 1 3))
(test-equal?
 "\r\u0085: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\r\u0085")
 '(0 1 2))
(test-equal?
 "\r̈\u0085: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\u0085")
 '(0 1 3))
(test-equal?
 "\r\t: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\r\t")
 '(0 1 2))
(test-equal?
 "\r̈\t: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\t")
 '(0 1 3))
(test-equal?
 "\ra: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\ra")
 '(0 1 2))
(test-equal?
 "\r̈a: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈a")
 '(0 1 3))
(test-equal?
 "\rA: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\rA")
 '(0 1 2))
(test-equal?
 "\r̈A: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈A")
 '(0 1 3))
(test-equal?
 "\rƻ: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\rƻ")
 '(0 1 2))
(test-equal?
 "\r̈ƻ: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈ƻ")
 '(0 1 3))
(test-equal?
 "\r0: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\r0")
 '(0 1 2))
(test-equal?
 "\r̈0: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈0")
 '(0 1 3))
(test-equal?
 "\r.: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\r.")
 '(0 1 2))
(test-equal?
 "\r̈.: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈.")
 '(0 1 3))
(test-equal?
 "\r!: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\r!")
 '(0 1 2))
(test-equal?
 "\r̈!: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈!")
 '(0 1 3))
(test-equal?
 "\r\": ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\r\"")
 '(0 1 2))
(test-equal?
 "\r̈\": ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\"")
 '(0 1 3))
(test-equal?
 "\r,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\r,")
 '(0 1 2))
(test-equal?
 "\r̈,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈,")
 '(0 1 3))
(test-equal?
 "\r\u00AD: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\r\u00AD")
 '(0 1 2))
(test-equal?
 "\r̈\u00AD: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈\u00AD")
 '(0 1 3))
(test-equal?
 "\r̀: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\r̀")
 '(0 1 2))
(test-equal?
 "\r̈̀: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\r̈̀")
 '(0 1 3))
(test-equal?
 "\n\u0001: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\n\u0001")
 '(0 1 2))
(test-equal?
 "\n̈\u0001: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\u0001")
 '(0 1 3))
(test-equal?
 "\n\r: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\n\r")
 '(0 1 2))
(test-equal?
 "\n̈\r: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\r")
 '(0 1 3))
(test-equal?
 "\n\n: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\n\n")
 '(0 1 2))
(test-equal?
 "\n̈\n: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\n")
 '(0 1 3))
(test-equal?
 "\n\u0085: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\n\u0085")
 '(0 1 2))
(test-equal?
 "\n̈\u0085: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\u0085")
 '(0 1 3))
(test-equal?
 "\n\t: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\n\t")
 '(0 1 2))
(test-equal?
 "\n̈\t: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\t")
 '(0 1 3))
(test-equal?
 "\na: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\na")
 '(0 1 2))
(test-equal?
 "\n̈a: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈a")
 '(0 1 3))
(test-equal?
 "\nA: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\nA")
 '(0 1 2))
(test-equal?
 "\n̈A: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈A")
 '(0 1 3))
(test-equal?
 "\nƻ: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\nƻ")
 '(0 1 2))
(test-equal?
 "\n̈ƻ: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈ƻ")
 '(0 1 3))
(test-equal?
 "\n0: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\n0")
 '(0 1 2))
(test-equal?
 "\n̈0: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈0")
 '(0 1 3))
(test-equal?
 "\n.: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\n.")
 '(0 1 2))
(test-equal?
 "\n̈.: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈.")
 '(0 1 3))
(test-equal?
 "\n!: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\n!")
 '(0 1 2))
(test-equal?
 "\n̈!: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈!")
 '(0 1 3))
(test-equal?
 "\n\": ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\n\"")
 '(0 1 2))
(test-equal?
 "\n̈\": ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\"")
 '(0 1 3))
(test-equal?
 "\n,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\n,")
 '(0 1 2))
(test-equal?
 "\n̈,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈,")
 '(0 1 3))
(test-equal?
 "\n\u00AD: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\n\u00AD")
 '(0 1 2))
(test-equal?
 "\n̈\u00AD: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈\u00AD")
 '(0 1 3))
(test-equal?
 "\ǹ: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\ǹ")
 '(0 1 2))
(test-equal?
 "\n̈̀: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\n̈̀")
 '(0 1 3))
(test-equal?
 "\u0085\u0001: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\u0001")
 '(0 1 2))
(test-equal?
 "\u0085̈\u0001: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\u0001")
 '(0 1 3))
(test-equal?
 "\u0085\r: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\r")
 '(0 1 2))
(test-equal?
 "\u0085̈\r: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\r")
 '(0 1 3))
(test-equal?
 "\u0085\n: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\n")
 '(0 1 2))
(test-equal?
 "\u0085̈\n: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\n")
 '(0 1 3))
(test-equal?
 "\u0085\u0085: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\u0085")
 '(0 1 2))
(test-equal?
 "\u0085̈\u0085: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\u0085")
 '(0 1 3))
(test-equal?
 "\u0085\t: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\t")
 '(0 1 2))
(test-equal?
 "\u0085̈\t: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\t")
 '(0 1 3))
(test-equal?
 "\u0085a: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085a")
 '(0 1 2))
(test-equal?
 "\u0085̈a: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈a")
 '(0 1 3))
(test-equal?
 "\u0085A: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085A")
 '(0 1 2))
(test-equal?
 "\u0085̈A: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈A")
 '(0 1 3))
(test-equal?
 "\u0085ƻ: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085ƻ")
 '(0 1 2))
(test-equal?
 "\u0085̈ƻ: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈ƻ")
 '(0 1 3))
(test-equal?
 "\u00850: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u00850")
 '(0 1 2))
(test-equal?
 "\u0085̈0: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈0")
 '(0 1 3))
(test-equal?
 "\u0085.: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085.")
 '(0 1 2))
(test-equal?
 "\u0085̈.: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈.")
 '(0 1 3))
(test-equal?
 "\u0085!: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085!")
 '(0 1 2))
(test-equal?
 "\u0085̈!: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈!")
 '(0 1 3))
(test-equal?
 "\u0085\": ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\"")
 '(0 1 2))
(test-equal?
 "\u0085̈\": ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\"")
 '(0 1 3))
(test-equal?
 "\u0085,: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085,")
 '(0 1 2))
(test-equal?
 "\u0085̈,: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈,")
 '(0 1 3))
(test-equal?
 "\u0085\u00AD: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085\u00AD")
 '(0 1 2))
(test-equal?
 "\u0085̈\u00AD: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈\u00AD")
 '(0 1 3))
(test-equal?
 "\u0085̀: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̀")
 '(0 1 2))
(test-equal?
 "\u0085̈̀: ÷ [0.2] <NEXT LINE (NEL)> (Sep) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u0085̈̀")
 '(0 1 3))
(test-equal?
 "\t\u0001: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\t\u0001")
 '(0 2))
(test-equal?
 "\ẗ\u0001: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\u0001")
 '(0 3))
(test-equal?
 "\t\r: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\t\r")
 '(0 2))
(test-equal?
 "\ẗ\r: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\r")
 '(0 3))
(test-equal?
 "\t\n: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\t\n")
 '(0 2))
(test-equal?
 "\ẗ\n: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\n")
 '(0 3))
(test-equal?
 "\t\u0085: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\t\u0085")
 '(0 2))
(test-equal?
 "\ẗ\u0085: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\u0085")
 '(0 3))
(test-equal?
 "\t\t: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\t\t")
 '(0 2))
(test-equal?
 "\ẗ\t: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\t")
 '(0 3))
(test-equal?
 "\ta: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\ta")
 '(0 2))
(test-equal?
 "\ẗa: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗa")
 '(0 3))
(test-equal?
 "\tA: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\tA")
 '(0 2))
(test-equal?
 "\ẗA: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗA")
 '(0 3))
(test-equal?
 "\tƻ: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\tƻ")
 '(0 2))
(test-equal?
 "\ẗƻ: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗƻ")
 '(0 3))
(test-equal?
 "\t0: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\t0")
 '(0 2))
(test-equal?
 "\ẗ0: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ0")
 '(0 3))
(test-equal?
 "\t.: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\t.")
 '(0 2))
(test-equal?
 "\ẗ.: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ.")
 '(0 3))
(test-equal?
 "\t!: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\t!")
 '(0 2))
(test-equal?
 "\ẗ!: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ!")
 '(0 3))
(test-equal?
 "\t\": ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\t\"")
 '(0 2))
(test-equal?
 "\ẗ\": ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\"")
 '(0 3))
(test-equal?
 "\t,: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\t,")
 '(0 2))
(test-equal?
 "\ẗ,: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ,")
 '(0 3))
(test-equal?
 "\t\u00AD: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\t\u00AD")
 '(0 2))
(test-equal?
 "\ẗ\u00AD: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ\u00AD")
 '(0 3))
(test-equal?
 "\t̀: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\t̀")
 '(0 2))
(test-equal?
 "\ẗ̀: ÷ [0.2] <CHARACTER TABULATION> (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\ẗ̀")
 '(0 3))
(test-equal?
 "a\u0001: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "a\u0001")
 '(0 2))
(test-equal?
 "ä\u0001: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "ä\u0001")
 '(0 3))
(test-equal?
 "a\r: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "a\r")
 '(0 2))
(test-equal?
 "ä\r: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "ä\r")
 '(0 3))
(test-equal?
 "a\n: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "a\n")
 '(0 2))
(test-equal?
 "ä\n: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "ä\n")
 '(0 3))
(test-equal?
 "a\u0085: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "a\u0085")
 '(0 2))
(test-equal?
 "ä\u0085: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "ä\u0085")
 '(0 3))
(test-equal?
 "a\t: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "a\t")
 '(0 2))
(test-equal?
 "ä\t: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "ä\t")
 '(0 3))
(test-equal?
 "aa: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "aa")
 '(0 2))
(test-equal?
 "äa: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "äa")
 '(0 3))
(test-equal?
 "aA: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "aA")
 '(0 2))
(test-equal?
 "äA: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "äA")
 '(0 3))
(test-equal?
 "aƻ: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "aƻ")
 '(0 2))
(test-equal?
 "äƻ: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "äƻ")
 '(0 3))
(test-equal?
 "a0: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "a0")
 '(0 2))
(test-equal?
 "ä0: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "ä0")
 '(0 3))
(test-equal?
 "a.: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "a.")
 '(0 2))
(test-equal?
 "ä.: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "ä.")
 '(0 3))
(test-equal?
 "a!: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "a!")
 '(0 2))
(test-equal?
 "ä!: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "ä!")
 '(0 3))
(test-equal?
 "a\": ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "a\"")
 '(0 2))
(test-equal?
 "ä\": ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "ä\"")
 '(0 3))
(test-equal?
 "a,: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "a,")
 '(0 2))
(test-equal?
 "ä,: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "ä,")
 '(0 3))
(test-equal?
 "a\u00AD: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "a\u00AD")
 '(0 2))
(test-equal?
 "ä\u00AD: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ä\u00AD")
 '(0 3))
(test-equal?
 "à: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "à")
 '(0 2))
(test-equal?
 "ä̀: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ä̀")
 '(0 3))
(test-equal?
 "A\u0001: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "A\u0001")
 '(0 2))
(test-equal?
 "Ä\u0001: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\u0001")
 '(0 3))
(test-equal?
 "A\r: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "A\r")
 '(0 2))
(test-equal?
 "Ä\r: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\r")
 '(0 3))
(test-equal?
 "A\n: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "A\n")
 '(0 2))
(test-equal?
 "Ä\n: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\n")
 '(0 3))
(test-equal?
 "A\u0085: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "A\u0085")
 '(0 2))
(test-equal?
 "Ä\u0085: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\u0085")
 '(0 3))
(test-equal?
 "A\t: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "A\t")
 '(0 2))
(test-equal?
 "Ä\t: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\t")
 '(0 3))
(test-equal?
 "Aa: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "Aa")
 '(0 2))
(test-equal?
 "Äa: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "Äa")
 '(0 3))
(test-equal?
 "AA: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "AA")
 '(0 2))
(test-equal?
 "ÄA: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "ÄA")
 '(0 3))
(test-equal?
 "Aƻ: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "Aƻ")
 '(0 2))
(test-equal?
 "Äƻ: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "Äƻ")
 '(0 3))
(test-equal?
 "A0: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "A0")
 '(0 2))
(test-equal?
 "Ä0: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "Ä0")
 '(0 3))
(test-equal?
 "A.: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "A.")
 '(0 2))
(test-equal?
 "Ä.: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "Ä.")
 '(0 3))
(test-equal?
 "A!: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "A!")
 '(0 2))
(test-equal?
 "Ä!: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "Ä!")
 '(0 3))
(test-equal?
 "A\": ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "A\"")
 '(0 2))
(test-equal?
 "Ä\": ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\"")
 '(0 3))
(test-equal?
 "A,: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "A,")
 '(0 2))
(test-equal?
 "Ä,: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "Ä,")
 '(0 3))
(test-equal?
 "A\u00AD: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "A\u00AD")
 '(0 2))
(test-equal?
 "Ä\u00AD: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "Ä\u00AD")
 '(0 3))
(test-equal?
 "À: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "À")
 '(0 2))
(test-equal?
 "Ä̀: ÷ [0.2] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "Ä̀")
 '(0 3))
(test-equal?
 "ƻ\u0001: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\u0001")
 '(0 2))
(test-equal?
 "ƻ̈\u0001: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\u0001")
 '(0 3))
(test-equal?
 "ƻ\r: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\r")
 '(0 2))
(test-equal?
 "ƻ̈\r: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\r")
 '(0 3))
(test-equal?
 "ƻ\n: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\n")
 '(0 2))
(test-equal?
 "ƻ̈\n: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\n")
 '(0 3))
(test-equal?
 "ƻ\u0085: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\u0085")
 '(0 2))
(test-equal?
 "ƻ̈\u0085: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\u0085")
 '(0 3))
(test-equal?
 "ƻ\t: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\t")
 '(0 2))
(test-equal?
 "ƻ̈\t: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\t")
 '(0 3))
(test-equal?
 "ƻa: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "ƻa")
 '(0 2))
(test-equal?
 "ƻ̈a: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈a")
 '(0 3))
(test-equal?
 "ƻA: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "ƻA")
 '(0 2))
(test-equal?
 "ƻ̈A: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈A")
 '(0 3))
(test-equal?
 "ƻƻ: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "ƻƻ")
 '(0 2))
(test-equal?
 "ƻ̈ƻ: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈ƻ")
 '(0 3))
(test-equal?
 "ƻ0: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ0")
 '(0 2))
(test-equal?
 "ƻ̈0: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈0")
 '(0 3))
(test-equal?
 "ƻ.: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ.")
 '(0 2))
(test-equal?
 "ƻ̈.: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈.")
 '(0 3))
(test-equal?
 "ƻ!: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ!")
 '(0 2))
(test-equal?
 "ƻ̈!: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈!")
 '(0 3))
(test-equal?
 "ƻ\": ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\"")
 '(0 2))
(test-equal?
 "ƻ̈\": ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\"")
 '(0 3))
(test-equal?
 "ƻ,: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ,")
 '(0 2))
(test-equal?
 "ƻ̈,: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈,")
 '(0 3))
(test-equal?
 "ƻ\u00AD: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ\u00AD")
 '(0 2))
(test-equal?
 "ƻ̈\u00AD: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈\u00AD")
 '(0 3))
(test-equal?
 "ƻ̀: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̀")
 '(0 2))
(test-equal?
 "ƻ̈̀: ÷ [0.2] LATIN LETTER TWO WITH STROKE (OLetter) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ƻ̈̀")
 '(0 3))
(test-equal?
 "0\u0001: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "0\u0001")
 '(0 2))
(test-equal?
 "0̈\u0001: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\u0001")
 '(0 3))
(test-equal?
 "0\r: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "0\r")
 '(0 2))
(test-equal?
 "0̈\r: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\r")
 '(0 3))
(test-equal?
 "0\n: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "0\n")
 '(0 2))
(test-equal?
 "0̈\n: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\n")
 '(0 3))
(test-equal?
 "0\u0085: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "0\u0085")
 '(0 2))
(test-equal?
 "0̈\u0085: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\u0085")
 '(0 3))
(test-equal?
 "0\t: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "0\t")
 '(0 2))
(test-equal?
 "0̈\t: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\t")
 '(0 3))
(test-equal?
 "0a: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "0a")
 '(0 2))
(test-equal?
 "0̈a: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "0̈a")
 '(0 3))
(test-equal?
 "0A: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "0A")
 '(0 2))
(test-equal?
 "0̈A: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "0̈A")
 '(0 3))
(test-equal?
 "0ƻ: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "0ƻ")
 '(0 2))
(test-equal?
 "0̈ƻ: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "0̈ƻ")
 '(0 3))
(test-equal?
 "00: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "00")
 '(0 2))
(test-equal?
 "0̈0: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "0̈0")
 '(0 3))
(test-equal?
 "0.: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "0.")
 '(0 2))
(test-equal?
 "0̈.: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "0̈.")
 '(0 3))
(test-equal?
 "0!: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "0!")
 '(0 2))
(test-equal?
 "0̈!: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "0̈!")
 '(0 3))
(test-equal?
 "0\": ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "0\"")
 '(0 2))
(test-equal?
 "0̈\": ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\"")
 '(0 3))
(test-equal?
 "0,: ÷ [0.2] DIGIT ZERO (Numeric) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "0,")
 '(0 2))
(test-equal?
 "0̈,: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "0̈,")
 '(0 3))
(test-equal?
 "0\u00AD: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "0\u00AD")
 '(0 2))
(test-equal?
 "0̈\u00AD: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "0̈\u00AD")
 '(0 3))
(test-equal?
 "0̀: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "0̀")
 '(0 2))
(test-equal?
 "0̈̀: ÷ [0.2] DIGIT ZERO (Numeric) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "0̈̀")
 '(0 3))
(test-equal?
 ".\u0001: ÷ [0.2] FULL STOP (ATerm) ÷ [11.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes ".\u0001")
 '(0 1 2))
(test-equal?
 ".̈\u0001: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\u0001")
 '(0 2 3))
(test-equal?
 ".\r: ÷ [0.2] FULL STOP (ATerm) × [9.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes ".\r")
 '(0 2))
(test-equal?
 ".̈\r: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\r")
 '(0 3))
(test-equal?
 ".\n: ÷ [0.2] FULL STOP (ATerm) × [9.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes ".\n")
 '(0 2))
(test-equal?
 ".̈\n: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\n")
 '(0 3))
(test-equal?
 ".\u0085: ÷ [0.2] FULL STOP (ATerm) × [9.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes ".\u0085")
 '(0 2))
(test-equal?
 ".̈\u0085: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\u0085")
 '(0 3))
(test-equal?
 ".\t: ÷ [0.2] FULL STOP (ATerm) × [9.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes ".\t")
 '(0 2))
(test-equal?
 ".̈\t: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\t")
 '(0 3))
(test-equal?
 ".a: ÷ [0.2] FULL STOP (ATerm) × [8.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes ".a")
 '(0 2))
(test-equal?
 ".̈a: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes ".̈a")
 '(0 3))
(test-equal?
 ".A: ÷ [0.2] FULL STOP (ATerm) ÷ [11.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes ".A")
 '(0 1 2))
(test-equal?
 ".̈A: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes ".̈A")
 '(0 2 3))
(test-equal?
 ".ƻ: ÷ [0.2] FULL STOP (ATerm) ÷ [11.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes ".ƻ")
 '(0 1 2))
(test-equal?
 ".̈ƻ: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes ".̈ƻ")
 '(0 2 3))
(test-equal?
 ".0: ÷ [0.2] FULL STOP (ATerm) × [6.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes ".0")
 '(0 2))
(test-equal?
 ".̈0: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [6.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes ".̈0")
 '(0 3))
(test-equal?
 "..: ÷ [0.2] FULL STOP (ATerm) × [8.1] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "..")
 '(0 2))
(test-equal?
 ".̈.: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes ".̈.")
 '(0 3))
(test-equal?
 ".!: ÷ [0.2] FULL STOP (ATerm) × [8.1] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes ".!")
 '(0 2))
(test-equal?
 ".̈!: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes ".̈!")
 '(0 3))
(test-equal?
 ".\": ÷ [0.2] FULL STOP (ATerm) × [9.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes ".\"")
 '(0 2))
(test-equal?
 ".̈\": ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\"")
 '(0 3))
(test-equal?
 ".,: ÷ [0.2] FULL STOP (ATerm) × [8.1] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes ".,")
 '(0 2))
(test-equal?
 ".̈,: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes ".̈,")
 '(0 3))
(test-equal?
 ".\u00AD: ÷ [0.2] FULL STOP (ATerm) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes ".\u00AD")
 '(0 2))
(test-equal?
 ".̈\u00AD: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes ".̈\u00AD")
 '(0 3))
(test-equal?
 ".̀: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes ".̀")
 '(0 2))
(test-equal?
 ".̈̀: ÷ [0.2] FULL STOP (ATerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes ".̈̀")
 '(0 3))
(test-equal?
 "!\u0001: ÷ [0.2] EXCLAMATION MARK (STerm) ÷ [11.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "!\u0001")
 '(0 1 2))
(test-equal?
 "!̈\u0001: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\u0001")
 '(0 2 3))
(test-equal?
 "!\r: ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "!\r")
 '(0 2))
(test-equal?
 "!̈\r: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\r")
 '(0 3))
(test-equal?
 "!\n: ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "!\n")
 '(0 2))
(test-equal?
 "!̈\n: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\n")
 '(0 3))
(test-equal?
 "!\u0085: ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "!\u0085")
 '(0 2))
(test-equal?
 "!̈\u0085: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\u0085")
 '(0 3))
(test-equal?
 "!\t: ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "!\t")
 '(0 2))
(test-equal?
 "!̈\t: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\t")
 '(0 3))
(test-equal?
 "!a: ÷ [0.2] EXCLAMATION MARK (STerm) ÷ [11.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "!a")
 '(0 1 2))
(test-equal?
 "!̈a: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "!̈a")
 '(0 2 3))
(test-equal?
 "!A: ÷ [0.2] EXCLAMATION MARK (STerm) ÷ [11.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "!A")
 '(0 1 2))
(test-equal?
 "!̈A: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "!̈A")
 '(0 2 3))
(test-equal?
 "!ƻ: ÷ [0.2] EXCLAMATION MARK (STerm) ÷ [11.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "!ƻ")
 '(0 1 2))
(test-equal?
 "!̈ƻ: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "!̈ƻ")
 '(0 2 3))
(test-equal?
 "!0: ÷ [0.2] EXCLAMATION MARK (STerm) ÷ [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "!0")
 '(0 1 2))
(test-equal?
 "!̈0: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "!̈0")
 '(0 2 3))
(test-equal?
 "!.: ÷ [0.2] EXCLAMATION MARK (STerm) × [8.1] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "!.")
 '(0 2))
(test-equal?
 "!̈.: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "!̈.")
 '(0 3))
(test-equal?
 "!!: ÷ [0.2] EXCLAMATION MARK (STerm) × [8.1] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "!!")
 '(0 2))
(test-equal?
 "!̈!: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "!̈!")
 '(0 3))
(test-equal?
 "!\": ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "!\"")
 '(0 2))
(test-equal?
 "!̈\": ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [9.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\"")
 '(0 3))
(test-equal?
 "!,: ÷ [0.2] EXCLAMATION MARK (STerm) × [8.1] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "!,")
 '(0 2))
(test-equal?
 "!̈,: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.1] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "!̈,")
 '(0 3))
(test-equal?
 "!\u00AD: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "!\u00AD")
 '(0 2))
(test-equal?
 "!̈\u00AD: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "!̈\u00AD")
 '(0 3))
(test-equal?
 "!̀: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "!̀")
 '(0 2))
(test-equal?
 "!̈̀: ÷ [0.2] EXCLAMATION MARK (STerm) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "!̈̀")
 '(0 3))
(test-equal?
 "\"\u0001: ÷ [0.2] QUOTATION MARK (Close) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\"\u0001")
 '(0 2))
(test-equal?
 "\"̈\u0001: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\u0001")
 '(0 3))
(test-equal?
 "\"\r: ÷ [0.2] QUOTATION MARK (Close) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\"\r")
 '(0 2))
(test-equal?
 "\"̈\r: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\r")
 '(0 3))
(test-equal?
 "\"\n: ÷ [0.2] QUOTATION MARK (Close) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\"\n")
 '(0 2))
(test-equal?
 "\"̈\n: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\n")
 '(0 3))
(test-equal?
 "\"\u0085: ÷ [0.2] QUOTATION MARK (Close) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\"\u0085")
 '(0 2))
(test-equal?
 "\"̈\u0085: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\u0085")
 '(0 3))
(test-equal?
 "\"\t: ÷ [0.2] QUOTATION MARK (Close) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\"\t")
 '(0 2))
(test-equal?
 "\"̈\t: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\t")
 '(0 3))
(test-equal?
 "\"a: ÷ [0.2] QUOTATION MARK (Close) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\"a")
 '(0 2))
(test-equal?
 "\"̈a: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈a")
 '(0 3))
(test-equal?
 "\"A: ÷ [0.2] QUOTATION MARK (Close) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\"A")
 '(0 2))
(test-equal?
 "\"̈A: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈A")
 '(0 3))
(test-equal?
 "\"ƻ: ÷ [0.2] QUOTATION MARK (Close) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\"ƻ")
 '(0 2))
(test-equal?
 "\"̈ƻ: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈ƻ")
 '(0 3))
(test-equal?
 "\"0: ÷ [0.2] QUOTATION MARK (Close) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\"0")
 '(0 2))
(test-equal?
 "\"̈0: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈0")
 '(0 3))
(test-equal?
 "\".: ÷ [0.2] QUOTATION MARK (Close) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\".")
 '(0 2))
(test-equal?
 "\"̈.: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈.")
 '(0 3))
(test-equal?
 "\"!: ÷ [0.2] QUOTATION MARK (Close) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\"!")
 '(0 2))
(test-equal?
 "\"̈!: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈!")
 '(0 3))
(test-equal?
 "\"\": ÷ [0.2] QUOTATION MARK (Close) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\"\"")
 '(0 2))
(test-equal?
 "\"̈\": ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\"")
 '(0 3))
(test-equal?
 "\",: ÷ [0.2] QUOTATION MARK (Close) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\",")
 '(0 2))
(test-equal?
 "\"̈,: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈,")
 '(0 3))
(test-equal?
 "\"\u00AD: ÷ [0.2] QUOTATION MARK (Close) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\"\u00AD")
 '(0 2))
(test-equal?
 "\"̈\u00AD: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈\u00AD")
 '(0 3))
(test-equal?
 "\"̀: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\"̀")
 '(0 2))
(test-equal?
 "\"̈̀: ÷ [0.2] QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\"̈̀")
 '(0 3))
(test-equal?
 ",\u0001: ÷ [0.2] COMMA (SContinue) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes ",\u0001")
 '(0 2))
(test-equal?
 ",̈\u0001: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\u0001")
 '(0 3))
(test-equal?
 ",\r: ÷ [0.2] COMMA (SContinue) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes ",\r")
 '(0 2))
(test-equal?
 ",̈\r: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\r")
 '(0 3))
(test-equal?
 ",\n: ÷ [0.2] COMMA (SContinue) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes ",\n")
 '(0 2))
(test-equal?
 ",̈\n: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\n")
 '(0 3))
(test-equal?
 ",\u0085: ÷ [0.2] COMMA (SContinue) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes ",\u0085")
 '(0 2))
(test-equal?
 ",̈\u0085: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\u0085")
 '(0 3))
(test-equal?
 ",\t: ÷ [0.2] COMMA (SContinue) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes ",\t")
 '(0 2))
(test-equal?
 ",̈\t: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\t")
 '(0 3))
(test-equal?
 ",a: ÷ [0.2] COMMA (SContinue) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes ",a")
 '(0 2))
(test-equal?
 ",̈a: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes ",̈a")
 '(0 3))
(test-equal?
 ",A: ÷ [0.2] COMMA (SContinue) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes ",A")
 '(0 2))
(test-equal?
 ",̈A: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes ",̈A")
 '(0 3))
(test-equal?
 ",ƻ: ÷ [0.2] COMMA (SContinue) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes ",ƻ")
 '(0 2))
(test-equal?
 ",̈ƻ: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes ",̈ƻ")
 '(0 3))
(test-equal?
 ",0: ÷ [0.2] COMMA (SContinue) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes ",0")
 '(0 2))
(test-equal?
 ",̈0: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes ",̈0")
 '(0 3))
(test-equal?
 ",.: ÷ [0.2] COMMA (SContinue) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes ",.")
 '(0 2))
(test-equal?
 ",̈.: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes ",̈.")
 '(0 3))
(test-equal?
 ",!: ÷ [0.2] COMMA (SContinue) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes ",!")
 '(0 2))
(test-equal?
 ",̈!: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes ",̈!")
 '(0 3))
(test-equal?
 ",\": ÷ [0.2] COMMA (SContinue) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes ",\"")
 '(0 2))
(test-equal?
 ",̈\": ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\"")
 '(0 3))
(test-equal?
 ",,: ÷ [0.2] COMMA (SContinue) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes ",,")
 '(0 2))
(test-equal?
 ",̈,: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes ",̈,")
 '(0 3))
(test-equal?
 ",\u00AD: ÷ [0.2] COMMA (SContinue) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes ",\u00AD")
 '(0 2))
(test-equal?
 ",̈\u00AD: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes ",̈\u00AD")
 '(0 3))
(test-equal?
 ",̀: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes ",̀")
 '(0 2))
(test-equal?
 ",̈̀: ÷ [0.2] COMMA (SContinue) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes ",̈̀")
 '(0 3))
(test-equal?
 "\u00AD\u0001: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\u0001")
 '(0 2))
(test-equal?
 "\u00AD̈\u0001: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\u0001")
 '(0 3))
(test-equal?
 "\u00AD\r: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\r")
 '(0 2))
(test-equal?
 "\u00AD̈\r: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\r")
 '(0 3))
(test-equal?
 "\u00AD\n: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\n")
 '(0 2))
(test-equal?
 "\u00AD̈\n: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\n")
 '(0 3))
(test-equal?
 "\u00AD\u0085: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\u0085")
 '(0 2))
(test-equal?
 "\u00AD̈\u0085: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\u0085")
 '(0 3))
(test-equal?
 "\u00AD\t: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\t")
 '(0 2))
(test-equal?
 "\u00AD̈\t: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\t")
 '(0 3))
(test-equal?
 "\u00ADa: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u00ADa")
 '(0 2))
(test-equal?
 "\u00AD̈a: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈a")
 '(0 3))
(test-equal?
 "\u00ADA: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u00ADA")
 '(0 2))
(test-equal?
 "\u00AD̈A: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈A")
 '(0 3))
(test-equal?
 "\u00ADƻ: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u00ADƻ")
 '(0 2))
(test-equal?
 "\u00AD̈ƻ: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈ƻ")
 '(0 3))
(test-equal?
 "\u00AD0: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD0")
 '(0 2))
(test-equal?
 "\u00AD̈0: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈0")
 '(0 3))
(test-equal?
 "\u00AD.: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD.")
 '(0 2))
(test-equal?
 "\u00AD̈.: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈.")
 '(0 3))
(test-equal?
 "\u00AD!: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD!")
 '(0 2))
(test-equal?
 "\u00AD̈!: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈!")
 '(0 3))
(test-equal?
 "\u00AD\": ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\"")
 '(0 2))
(test-equal?
 "\u00AD̈\": ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\"")
 '(0 3))
(test-equal?
 "\u00AD,: ÷ [0.2] SOFT HYPHEN (Format_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD,")
 '(0 2))
(test-equal?
 "\u00AD̈,: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈,")
 '(0 3))
(test-equal?
 "\u00AD\u00AD: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD\u00AD")
 '(0 2))
(test-equal?
 "\u00AD̈\u00AD: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈\u00AD")
 '(0 3))
(test-equal?
 "\u00AD̀: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̀")
 '(0 2))
(test-equal?
 "\u00AD̈̀: ÷ [0.2] SOFT HYPHEN (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u00AD̈̀")
 '(0 3))
(test-equal?
 "̀\u0001: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "̀\u0001")
 '(0 2))
(test-equal?
 "̀̈\u0001: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\u0001")
 '(0 3))
(test-equal?
 "̀\r: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "̀\r")
 '(0 2))
(test-equal?
 "̀̈\r: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\r")
 '(0 3))
(test-equal?
 "̀\n: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "̀\n")
 '(0 2))
(test-equal?
 "̀̈\n: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\n")
 '(0 3))
(test-equal?
 "̀\u0085: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "̀\u0085")
 '(0 2))
(test-equal?
 "̀̈\u0085: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <NEXT LINE (NEL)> (Sep) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\u0085")
 '(0 3))
(test-equal?
 "̀\t: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "̀\t")
 '(0 2))
(test-equal?
 "̀̈\t: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] <CHARACTER TABULATION> (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\t")
 '(0 3))
(test-equal?
 "̀a: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "̀a")
 '(0 2))
(test-equal?
 "̀̈a: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN SMALL LETTER A (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈a")
 '(0 3))
(test-equal?
 "̀A: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "̀A")
 '(0 2))
(test-equal?
 "̀̈A: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER A (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈A")
 '(0 3))
(test-equal?
 "̀ƻ: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "̀ƻ")
 '(0 2))
(test-equal?
 "̀̈ƻ: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN LETTER TWO WITH STROKE (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈ƻ")
 '(0 3))
(test-equal?
 "̀0: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "̀0")
 '(0 2))
(test-equal?
 "̀̈0: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈0")
 '(0 3))
(test-equal?
 "̀.: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "̀.")
 '(0 2))
(test-equal?
 "̀̈.: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈.")
 '(0 3))
(test-equal?
 "̀!: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "̀!")
 '(0 2))
(test-equal?
 "̀̈!: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] EXCLAMATION MARK (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈!")
 '(0 3))
(test-equal?
 "̀\": ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "̀\"")
 '(0 2))
(test-equal?
 "̀̈\": ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] QUOTATION MARK (Close) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\"")
 '(0 3))
(test-equal?
 "̀,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "̀,")
 '(0 2))
(test-equal?
 "̀̈,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [998.0] COMMA (SContinue) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈,")
 '(0 3))
(test-equal?
 "̀\u00AD: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "̀\u00AD")
 '(0 2))
(test-equal?
 "̀̈\u00AD: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈\u00AD")
 '(0 3))
(test-equal?
 "̀̀: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "̀̀")
 '(0 2))
(test-equal?
 "̀̈̀: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "̀̈̀")
 '(0 3))
(test-equal?
 "\r\na\n̈: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) × [3.0] <LINE FEED (LF)> (LF) ÷ [4.0] LATIN SMALL LETTER A (Lower) × [998.0] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\r\na\n̈")
 '(0 2 4 5))
(test-equal?
 "ä: ÷ [0.2] LATIN SMALL LETTER A (Lower) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [0.3]"
 (string-sentence-break-indexes "ä")
 '(0 2))
(test-equal?
 " \u200Dن: ÷ [0.2] SPACE (Sp) × [5.0] ZERO WIDTH JOINER (Extend_FE) × [998.0] ARABIC LETTER NOON (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes " \u200Dن")
 '(0 3))
(test-equal?
 "ن‍ : ÷ [0.2] ARABIC LETTER NOON (OLetter) × [5.0] ZERO WIDTH JOINER (Extend_FE) × [998.0] SPACE (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "ن‍ ")
 '(0 3))
(test-equal?
 "(\"Go.\") (He did.): ÷ [0.2] LEFT PARENTHESIS (Close) × [998.0] QUOTATION MARK (Close) × [998.0] LATIN CAPITAL LETTER G (Upper) × [998.0] LATIN SMALL LETTER O (Lower) × [998.0] FULL STOP (ATerm) × [9.0] QUOTATION MARK (Close) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] SPACE (Sp) ÷ [11.0] LEFT PARENTHESIS (Close) × [998.0] LATIN CAPITAL LETTER H (Upper) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] SPACE (Sp) × [998.0] LATIN SMALL LETTER D (Lower) × [998.0] LATIN SMALL LETTER I (Lower) × [998.0] LATIN SMALL LETTER D (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) ÷ [0.3]"
 (string-sentence-break-indexes "(\"Go.\") (He did.)")
 '(0 8 17))
(test-equal?
 "(“Go?”) (He did.): ÷ [0.2] LEFT PARENTHESIS (Close) × [998.0] LEFT DOUBLE QUOTATION MARK (Close) × [998.0] LATIN CAPITAL LETTER G (Upper) × [998.0] LATIN SMALL LETTER O (Lower) × [998.0] QUESTION MARK (STerm) × [9.0] RIGHT DOUBLE QUOTATION MARK (Close) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] SPACE (Sp) ÷ [11.0] LEFT PARENTHESIS (Close) × [998.0] LATIN CAPITAL LETTER H (Upper) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] SPACE (Sp) × [998.0] LATIN SMALL LETTER D (Lower) × [998.0] LATIN SMALL LETTER I (Lower) × [998.0] LATIN SMALL LETTER D (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) ÷ [0.3]"
 (string-sentence-break-indexes "(“Go?”) (He did.)")
 '(0 8 17))
(test-equal?
 "U.S.À. is: ÷ [0.2] LATIN CAPITAL LETTER U (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER S (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] FULL STOP (ATerm) × [8.0] SPACE (Sp) × [8.0] LATIN SMALL LETTER I (Lower) × [998.0] LATIN SMALL LETTER S (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "U.S.À. is")
 '(0 10))
(test-equal?
 "U.S.À? He: ÷ [0.2] LATIN CAPITAL LETTER U (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER S (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] QUESTION MARK (STerm) × [9.0] SPACE (Sp) ÷ [11.0] LATIN CAPITAL LETTER H (Upper) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "U.S.À? He")
 '(0 8 10))
(test-equal?
 "U.S.À.: ÷ [0.2] LATIN CAPITAL LETTER U (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER S (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] FULL STOP (ATerm) ÷ [0.3]"
 (string-sentence-break-indexes "U.S.À.")
 '(0 7))
(test-equal?
 "3.4: ÷ [0.2] DIGIT THREE (Numeric) × [998.0] FULL STOP (ATerm) × [6.0] DIGIT FOUR (Numeric) ÷ [0.3]"
 (string-sentence-break-indexes "3.4")
 '(0 3))
(test-equal?
 "c.d: ÷ [0.2] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [8.0] LATIN SMALL LETTER D (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "c.d")
 '(0 3))
(test-equal?
 "C.d: ÷ [0.2] LATIN CAPITAL LETTER C (Upper) × [998.0] FULL STOP (ATerm) × [8.0] LATIN SMALL LETTER D (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "C.d")
 '(0 3))
(test-equal?
 "c.D: ÷ [0.2] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER D (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "c.D")
 '(0 3))
(test-equal?
 "C.D: ÷ [0.2] LATIN CAPITAL LETTER C (Upper) × [998.0] FULL STOP (ATerm) × [7.0] LATIN CAPITAL LETTER D (Upper) ÷ [0.3]"
 (string-sentence-break-indexes "C.D")
 '(0 3))
(test-equal?
 "etc.)’ the: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [8.0] RIGHT PARENTHESIS (Close) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [8.0] NO-BREAK SPACE (Sp) × [8.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ the")
 '(0 10))
(test-equal?
 "etc.)’ The: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [9.0] NO-BREAK SPACE (Sp) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ The")
 '(0 7 10))
(test-equal?
 "etc.)’ ‘(the: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [8.0] RIGHT PARENTHESIS (Close) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [8.0] NO-BREAK SPACE (Sp) × [8.0] LEFT SINGLE QUOTATION MARK (Close) × [998.0] LEFT PARENTHESIS (Close) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ ‘(the")
 '(0 12))
(test-equal?
 "etc.)’ ‘(The: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [9.0] NO-BREAK SPACE (Sp) ÷ [11.0] LEFT SINGLE QUOTATION MARK (Close) × [998.0] LEFT PARENTHESIS (Close) × [998.0] LATIN CAPITAL LETTER T (Upper) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ ‘(The")
 '(0 7 12))
(test-equal?
 "etc.)’ ̈the: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [8.0] RIGHT PARENTHESIS (Close) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [8.0] NO-BREAK SPACE (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ ̈the")
 '(0 11))
(test-equal?
 "etc.)’ ̈The: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [9.0] NO-BREAK SPACE (Sp) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’ ̈The")
 '(0 8 11))
(test-equal?
 "etc.)’̈The: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)’̈The")
 '(0 7 10))
(test-equal?
 "etc.)\n̈The: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [9.0] RIGHT PARENTHESIS (Close) × [9.0] <LINE FEED (LF)> (LF) ÷ [4.0] COMBINING DIAERESIS (Extend_FE) × [998.0] LATIN CAPITAL LETTER T (Upper) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "etc.)\n̈The")
 '(0 6 10))
(test-equal?
 "the resp. leaders are: ÷ [0.2] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER H (Lower) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] SPACE (Sp) × [998.0] LATIN SMALL LETTER R (Lower) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER S (Lower) × [998.0] LATIN SMALL LETTER P (Lower) × [998.0] FULL STOP (ATerm) × [8.0] SPACE (Sp) × [8.0] LATIN SMALL LETTER L (Lower) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER A (Lower) × [998.0] LATIN SMALL LETTER D (Lower) × [998.0] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER R (Lower) × [998.0] LATIN SMALL LETTER S (Lower) × [998.0] SPACE (Sp) × [998.0] LATIN SMALL LETTER A (Lower) × [998.0] LATIN SMALL LETTER R (Lower) × [998.0] LATIN SMALL LETTER E (Lower) ÷ [0.3]"
 (string-sentence-break-indexes "the resp. leaders are")
 '(0 21))
(test-equal?
 "字.字: ÷ [0.2] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) × [998.0] FULL STOP (ATerm) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "字.字")
 '(0 2 3))
(test-equal?
 "etc.它: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B83 (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "etc.它")
 '(0 4 5))
(test-equal?
 "etc.。: ÷ [0.2] LATIN SMALL LETTER E (Lower) × [998.0] LATIN SMALL LETTER T (Lower) × [998.0] LATIN SMALL LETTER C (Lower) × [998.0] FULL STOP (ATerm) × [8.1] IDEOGRAPHIC FULL STOP (STerm) ÷ [0.3]"
 (string-sentence-break-indexes "etc.。")
 '(0 5))
(test-equal?
 "字。它: ÷ [0.2] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) × [998.0] IDEOGRAPHIC FULL STOP (STerm) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B83 (OLetter) ÷ [0.3]"
 (string-sentence-break-indexes "字。它")
 '(0 2 3))
(test-equal?
 "!  : ÷ [0.2] EXCLAMATION MARK (STerm) × [9.0] SPACE (Sp) × [10.0] SPACE (Sp) ÷ [0.3]"
 (string-sentence-break-indexes "!  ")
 '(0 3))
(test-equal?
 "\u2060(\u2060\"\u2060G\u2060o\u2060.\u2060\"\u2060)\u2060 \u2060(\u2060H\u2060e\u2060 \u2060d\u2060i\u2060d\u2060.\u2060)\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER G (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER O (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER H (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER I (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060(\u2060\"\u2060G\u2060o\u2060.\u2060\"\u2060)\u2060 \u2060(\u2060H\u2060e\u2060 \u2060d\u2060i\u2060d\u2060.\u2060)\u2060\u2060")
 '(0 17 36))
(test-equal?
 "\u2060(\u2060“\u2060G\u2060o\u2060?\u2060”\u2060)\u2060 \u2060(\u2060H\u2060e\u2060 \u2060d\u2060i\u2060d\u2060.\u2060)\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LEFT DOUBLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER G (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER O (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] QUESTION MARK (STerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT DOUBLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER H (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER I (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060(\u2060“\u2060G\u2060o\u2060?\u2060”\u2060)\u2060 \u2060(\u2060H\u2060e\u2060 \u2060d\u2060i\u2060d\u2060.\u2060)\u2060\u2060")
 '(0 17 36))
(test-equal?
 "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀.\u2060 \u2060i\u2060s\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER U (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER S (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [8.0] LATIN SMALL LETTER I (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER S (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀.\u2060 \u2060i\u2060s\u2060\u2060")
 '(0 21))
(test-equal?
 "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀?\u2060 \u2060H\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER U (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER S (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] QUESTION MARK (STerm) × [5.0] WORD JOINER (Format_FE) × [9.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] LATIN CAPITAL LETTER H (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀?\u2060 \u2060H\u2060e\u2060\u2060")
 '(0 16 21))
(test-equal?
 "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀.\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER U (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER S (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER A (Upper) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING GRAVE ACCENT (Extend_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060U\u2060.\u2060S\u2060.\u2060A\u2060̀.\u2060\u2060")
 '(0 15))
(test-equal?
 "\u20603\u2060.\u20604\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] DIGIT THREE (Numeric) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [6.0] DIGIT FOUR (Numeric) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u20603\u2060.\u20604\u2060\u2060")
 '(0 8))
(test-equal?
 "\u2060c\u2060.\u2060d\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060c\u2060.\u2060d\u2060\u2060")
 '(0 8))
(test-equal?
 "\u2060C\u2060.\u2060d\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER C (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060C\u2060.\u2060d\u2060\u2060")
 '(0 8))
(test-equal?
 "\u2060c\u2060.\u2060D\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER D (Upper) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060c\u2060.\u2060D\u2060\u2060")
 '(0 8))
(test-equal?
 "\u2060C\u2060.\u2060D\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER C (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER D (Upper) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060C\u2060.\u2060D\u2060\u2060")
 '(0 8))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060t\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [8.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060t\u2060h\u2060e\u2060\u2060")
 '(0 22))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060T\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060T\u2060h\u2060e\u2060\u2060")
 '(0 15 22))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060‘\u2060(\u2060t\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [8.0] LEFT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060‘\u2060(\u2060t\u2060h\u2060e\u2060\u2060")
 '(0 26))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060‘\u2060(\u2060T\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] LEFT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LEFT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER T (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060‘\u2060(\u2060T\u2060h\u2060e\u2060\u2060")
 '(0 15 26))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060̈t\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [8.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [8.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060̈t\u2060h\u2060e\u2060\u2060")
 '(0 23))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060̈T\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] NO-BREAK SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060 \u2060̈T\u2060h\u2060e\u2060\u2060")
 '(0 16 23))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060̈T\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT SINGLE QUOTATION MARK (Close) × [5.0] WORD JOINER (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) ÷ [11.0] LATIN CAPITAL LETTER T (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060’\u2060̈T\u2060h\u2060e\u2060\u2060")
 '(0 14 21))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060\n\u2060̈\u2060T\u2060h\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [9.0] RIGHT PARENTHESIS (Close) × [5.0] WORD JOINER (Format_FE) × [9.0] <LINE FEED (LF)> (LF) ÷ [4.0] WORD JOINER (Format_FE) × [5.0] COMBINING DIAERESIS (Extend_FE) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN CAPITAL LETTER T (Upper) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060)\u2060\n\u2060̈\u2060T\u2060h\u2060e\u2060\u2060")
 '(0 12 22))
(test-equal?
 "\u2060t\u2060h\u2060e\u2060 \u2060r\u2060e\u2060s\u2060p\u2060.\u2060 \u2060l\u2060e\u2060a\u2060d\u2060e\u2060r\u2060s\u2060 \u2060a\u2060r\u2060e\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER H (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER R (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER S (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER P (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [8.0] LATIN SMALL LETTER L (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER A (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER D (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER R (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER S (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER A (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER R (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060t\u2060h\u2060e\u2060 \u2060r\u2060e\u2060s\u2060p\u2060.\u2060 \u2060l\u2060e\u2060a\u2060d\u2060e\u2060r\u2060s\u2060 \u2060a\u2060r\u2060e\u2060\u2060")
 '(0 44))
(test-equal?
 "\u2060字\u2060.\u2060字\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060字\u2060.\u2060字\u2060\u2060")
 '(0 5 8))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060它\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B83 (OLetter) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060它\u2060\u2060")
 '(0 9 12))
(test-equal?
 "\u2060e\u2060t\u2060c\u2060.\u2060。\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER E (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER T (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] LATIN SMALL LETTER C (Lower) × [5.0] WORD JOINER (Format_FE) × [998.0] FULL STOP (ATerm) × [5.0] WORD JOINER (Format_FE) × [8.1] IDEOGRAPHIC FULL STOP (STerm) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes
  "\u2060e\u2060t\u2060c\u2060.\u2060。\u2060\u2060")
 '(0 12))
(test-equal?
 "\u2060字\u2060。\u2060它\u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] CJK UNIFIED IDEOGRAPH-5B57 (OLetter) × [5.0] WORD JOINER (Format_FE) × [998.0] IDEOGRAPHIC FULL STOP (STerm) × [5.0] WORD JOINER (Format_FE) ÷ [11.0] CJK UNIFIED IDEOGRAPH-5B83 (OLetter) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060字\u2060。\u2060它\u2060\u2060")
 '(0 5 8))
(test-equal?
 "\u2060!\u2060 \u2060 \u2060\u2060: ÷ [0.2] WORD JOINER (Format_FE) × [998.0] EXCLAMATION MARK (STerm) × [5.0] WORD JOINER (Format_FE) × [9.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [10.0] SPACE (Sp) × [5.0] WORD JOINER (Format_FE) × [5.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-sentence-break-indexes "\u2060!\u2060 \u2060 \u2060\u2060")
 '(0 8))
)

#lang scribble/manual
@require[@for-label[unicode-breaks
                    racket/base racket/sequence]]

@title{Unicode Break Algorithms}
@author[@author+email["Shawn Wagner" "shawnw.mobile@gmail.com"]]

@defmodule[unicode-breaks]

Racket 8.7 added basic support for working with Unicode grapheme clusters, where multiple codepoints make up an entity that is rendered as a single character. This module expands that functionality, and adds word and sentence breaks from @hyperlink["https://www.unicode.org/reports/tr29/tr29-39.html"]{Unicode Annex #29, Text Segmentation}. It does not attempt to provide language/locale specific algorithms.

The rules used are in accordance with Unicode 14.0, to match Racket 8.7.

This is currently very much a work in progress, and not tested very well.

@section{Grapheme Breaks}

@defproc[(in-graphemes [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (sequence/c string?)]{

Returns a sequence that produces a series of strings, one grapheme of the specified range of @code{str} per entry. It is undefined if @code{start} is not the initial index of a grapheme sequence.

}

@defproc[(string-split-graphemes [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof string?)]{

Returns a list of the graphemes of the specified range of @code{str}. It is undefined if @code{start} is not the initial index of a grapheme sequence.

}

@defproc[(string-split-graphemes/immutable [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof (and/c string? immutable?))]{

Same as @code{string-split-graphemes}, but returns immutable strings.

}

@defproc[(string-grapheme-indexes [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof (cons/c exact-nonnegative-integer? exact-nonnegative-integer?))]{

Returns a list of the indexes of each grapheme in the specified range of @code{str}. The @code{car} of each pair is the start index, and the @code{cdr} is one past the last codepoint in the grapheme, so that they can be used as the arguments of @code{substring} and other functions. It is undefined if @code{start} is not the initial index of a grapheme sequence.

}

@section{Word Breaks}

@defproc[(string-word-span [str string?] [start exact-nonnegative-integer?] [end exact-nonnegative-integer? (string-length str)])
         exact-nonnegative-integer?]{

Returns the number of characters/codepoints in the string before the next Unicode word break starting from @code{start} and not going past @code{end}.
                                                                                                           
}

@defproc[(in-words [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)] [#:skip-blanks? skip-blanks? any/c #f])
         (sequence/c string?)]{

Returns a sequence that produces a series of strings, one word of the specified range of @code{str} per entry. If @code{#:skip-blanks?} is true, "words" that consist only of white space are omitted.

}

@defproc[(string-split-words [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)] [#:skip-blanks? skip-blanks? any/c #f])
         (listof string?)]{

Returns a list of the words in the specified range of @code{str}. If @code{#:skip-blanks?} is true, "words" that consist only of white space are omitted.

}

@defproc[(string-split-words/immutable [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)] [#:skip-blanks? skip-blanks? any/c #f])
         (listof (and/c string? immutable?))]{

Same as @code{string-split-words}, but returns immutable strings.

}

@defproc[(string-word-break-indexes [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof exact-nonnegative-integer?)]{

Returns a list of the indexes of each word break in the specified range of @code{str}. The implicit breaks at the beginning and end of the string are not included.

}

@section{Sentence Breaks}

Not yet implemented.
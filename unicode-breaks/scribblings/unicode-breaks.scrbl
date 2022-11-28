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
         (listof exact-nonnegative-integer?)]{

Returns a list of the starting indexes of each grapheme in the
specified range of @code{str}. It is undefined if @code{start} is not
the initial index of a grapheme sequence.

}

@section{Word Breaks}

@defproc[(char-word-break-property [ch char?]) symbol?]{

 Returns the Unicode word break property of the given character, which
 is one of the following symbols: @code{'ALetter}, @code{'CR},
 @code{'Double_Quote}, @code{'Extend} @code{'ExtendNumLet},
 @code{'Format}, @code{'Hebrew_Letter}, @code{'Katakana}, @code{'LF},
 @code{'MidLetter}, @code{'MidNum}, @code{'MidNumLet},
 @code{'Newline}, @code{'Numeric}, @code{'Other},
 @code{'Regional_Indicator}, @code{'Single_Quote}, @code{'WSegSpace}
 or @code{'ZWJ}.

 }

@defproc[(string-word-break-at? [str string?] [i exact-nonnegative-integer?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         boolean?]{

 Returns @code{#t} if a word break exists before the character at index @code{i}. There is always a break before @code{start} and @code{end}.

}


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

Returns a list of the indexes of each word break in the specified range of @code{str}. The implicit breaks at the beginning and end of the string @emph{are} included.

}

@section{Sentence Breaks}

@defproc[(char-sentence-break-property [ch char?]) symbol?]{

Return the Unicode sentence break property of the given character, which is one of the following symbols:
@code{'ATerm}, @code{'CR}, @code{'Close}, @code{'Extend}, @code{'Format}, @code{'LF}, @code{'Lower}, @code{'Numeric}, @code{'OLetter}, @code{'Other}, @code{'SContinue}, @code{'STerm}, @code{'Sep}, @code{'Sp} or @code{'Upper}.

}

@defproc[(in-sentences [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (sequence/c string?)]{

Returns a sequence that produces a series of strings, one sentence in the specified range of @code{str} per entry. It is undefined if @code{start} is not the initial index of a sentence.

}

@defproc[(string-split-sentences [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof string?)]{

Returns a list of the sentences of the specified range of @code{str}. It is undefined if @code{start} is not the initial index of a sentence.

}

@defproc[(string-split-sentencess/immutable [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof (and/c string? immutable?))]{

Same as @code{string-split-sentencess}, but returns immutable strings.

}

@defproc[(string-sentence-indexes [str string?] [start exact-nonnegative-integer? 0] [end exact-nonnegative-integer? (string-length str)])
         (listof exact-nonnegative-integer?)]{

Returns a list of the indexes of the start of each sentence  in the specified range of @code{str}. It is undefined if @code{start} is not the initial index of a sentence.

}

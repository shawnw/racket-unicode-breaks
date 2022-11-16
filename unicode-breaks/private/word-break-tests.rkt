#lang racket/base
; Auto-generated file. Do not edit.
(module+ test
(require rackunit "../main.rkt")
(test-equal?
 "\u0001\u0001: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u0001\u0001")
 '(0 1 2))
(test-equal?
 "\u0001̈\u0001: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\u0001")
 '(0 2 3))
(test-equal?
 "\u0001\r: ÷ [0.2] <START OF HEADING> (Other) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u0001\r")
 '(0 1 2))
(test-equal?
 "\u0001̈\r: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\r")
 '(0 2 3))
(test-equal?
 "\u0001\n: ÷ [0.2] <START OF HEADING> (Other) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u0001\n")
 '(0 1 2))
(test-equal?
 "\u0001̈\n: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\n")
 '(0 2 3))
(test-equal?
 "\u0001\v: ÷ [0.2] <START OF HEADING> (Other) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u0001\v")
 '(0 1 2))
(test-equal?
 "\u0001̈\v: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\v")
 '(0 2 3))
(test-equal?
 "\u0001〱: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u0001〱")
 '(0 1 2))
(test-equal?
 "\u0001̈〱: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈〱")
 '(0 2 3))
(test-equal?
 "\u0001A: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001A")
 '(0 1 2))
(test-equal?
 "\u0001̈A: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈A")
 '(0 2 3))
(test-equal?
 "\u0001:: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001:")
 '(0 1 2))
(test-equal?
 "\u0001̈:: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈:")
 '(0 2 3))
(test-equal?
 "\u0001,: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u0001,")
 '(0 1 2))
(test-equal?
 "\u0001̈,: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈,")
 '(0 2 3))
(test-equal?
 "\u0001.: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u0001.")
 '(0 1 2))
(test-equal?
 "\u0001̈.: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈.")
 '(0 2 3))
(test-equal?
 "\u00010: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u00010")
 '(0 1 2))
(test-equal?
 "\u0001̈0: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈0")
 '(0 2 3))
(test-equal?
 "\u0001_: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u0001_")
 '(0 1 2))
(test-equal?
 "\u0001̈_: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈_")
 '(0 2 3))
(test-equal?
 "\u0001🇦: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u0001🇦")
 '(0 1 2))
(test-equal?
 "\u0001̈🇦: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈🇦")
 '(0 2 3))
(test-equal?
 "\u0001א: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u0001א")
 '(0 1 2))
(test-equal?
 "\u0001̈א: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈א")
 '(0 2 3))
(test-equal?
 "\u0001\": ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001\"")
 '(0 1 2))
(test-equal?
 "\u0001̈\": ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\"")
 '(0 2 3))
(test-equal?
 "\u0001': ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001'")
 '(0 1 2))
(test-equal?
 "\u0001̈': ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈'")
 '(0 2 3))
(test-equal?
 "\u0001⌚: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u0001⌚")
 '(0 1 2))
(test-equal?
 "\u0001̈⌚: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈⌚")
 '(0 2 3))
(test-equal?
 "\u0001 : ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u0001 ")
 '(0 1 2))
(test-equal?
 "\u0001̈ : ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈ ")
 '(0 2 3))
(test-equal?
 "\u0001\u00AD: ÷ [0.2] <START OF HEADING> (Other) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001\u00AD")
 '(0 2))
(test-equal?
 "\u0001̈\u00AD: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈\u00AD")
 '(0 3))
(test-equal?
 "\u0001̀: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̀")
 '(0 2))
(test-equal?
 "\u0001̈̀: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈̀")
 '(0 3))
(test-equal?
 "\u0001\u200D: ÷ [0.2] <START OF HEADING> (Other) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001\u200D")
 '(0 2))
(test-equal?
 "\u0001̈‍: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈‍")
 '(0 3))
(test-equal?
 "\u0001a\u2060: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001a\u2060")
 '(0 1 3))
(test-equal?
 "\u0001̈a\u2060: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈a\u2060")
 '(0 2 4))
(test-equal?
 "\u0001a:: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001a:")
 '(0 1 2 3))
(test-equal?
 "\u0001̈a:: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈a:")
 '(0 2 3 4))
(test-equal?
 "\u0001a': ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001a'")
 '(0 1 2 3))
(test-equal?
 "\u0001̈a': ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈a'")
 '(0 2 3 4))
(test-equal?
 "\u0001a'\u2060: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001a'\u2060")
 '(0 1 2 4))
(test-equal?
 "\u0001̈a'\u2060: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "\u0001a,: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u0001a,")
 '(0 1 2 3))
(test-equal?
 "\u0001̈a,: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈a,")
 '(0 2 3 4))
(test-equal?
 "\u00011:: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00011:")
 '(0 1 2 3))
(test-equal?
 "\u0001̈1:: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈1:")
 '(0 2 3 4))
(test-equal?
 "\u00011': ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00011'")
 '(0 1 2 3))
(test-equal?
 "\u0001̈1': ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈1'")
 '(0 2 3 4))
(test-equal?
 "\u00011,: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00011,")
 '(0 1 2 3))
(test-equal?
 "\u0001̈1,: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈1,")
 '(0 2 3 4))
(test-equal?
 "\u00011.\u2060: ÷ [0.2] <START OF HEADING> (Other) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00011.\u2060")
 '(0 1 2 4))
(test-equal?
 "\u0001̈1.\u2060: ÷ [0.2] <START OF HEADING> (Other) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u0001̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "\r\u0001: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\r\u0001")
 '(0 1 2))
(test-equal?
 "\r̈\u0001: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\r̈\u0001")
 '(0 1 2 3))
(test-equal?
 "\r\r: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\r\r")
 '(0 1 2))
(test-equal?
 "\r̈\r: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\r̈\r")
 '(0 1 2 3))
(test-equal?
 "\r\n: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) × [3.0] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\r\n")
 '(0 2))
(test-equal?
 "\r̈\n: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\r̈\n")
 '(0 1 2 3))
(test-equal?
 "\r\v: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\r\v")
 '(0 1 2))
(test-equal?
 "\r̈\v: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\r̈\v")
 '(0 1 2 3))
(test-equal?
 "\r〱: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\r〱")
 '(0 1 2))
(test-equal?
 "\r̈〱: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\r̈〱")
 '(0 1 2 3))
(test-equal?
 "\rA: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\rA")
 '(0 1 2))
(test-equal?
 "\r̈A: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\r̈A")
 '(0 1 2 3))
(test-equal?
 "\r:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\r:")
 '(0 1 2))
(test-equal?
 "\r̈:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\r̈:")
 '(0 1 2 3))
(test-equal?
 "\r,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\r,")
 '(0 1 2))
(test-equal?
 "\r̈,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\r̈,")
 '(0 1 2 3))
(test-equal?
 "\r.: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\r.")
 '(0 1 2))
(test-equal?
 "\r̈.: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\r̈.")
 '(0 1 2 3))
(test-equal?
 "\r0: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\r0")
 '(0 1 2))
(test-equal?
 "\r̈0: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\r̈0")
 '(0 1 2 3))
(test-equal?
 "\r_: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\r_")
 '(0 1 2))
(test-equal?
 "\r̈_: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\r̈_")
 '(0 1 2 3))
(test-equal?
 "\r🇦: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\r🇦")
 '(0 1 2))
(test-equal?
 "\r̈🇦: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\r̈🇦")
 '(0 1 2 3))
(test-equal?
 "\rא: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\rא")
 '(0 1 2))
(test-equal?
 "\r̈א: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\r̈א")
 '(0 1 2 3))
(test-equal?
 "\r\": ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r\"")
 '(0 1 2))
(test-equal?
 "\r̈\": ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r̈\"")
 '(0 1 2 3))
(test-equal?
 "\r': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r'")
 '(0 1 2))
(test-equal?
 "\r̈': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r̈'")
 '(0 1 2 3))
(test-equal?
 "\r⌚: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\r⌚")
 '(0 1 2))
(test-equal?
 "\r̈⌚: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\r̈⌚")
 '(0 1 2 3))
(test-equal?
 "\r : ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\r ")
 '(0 1 2))
(test-equal?
 "\r̈ : ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\r̈ ")
 '(0 1 2 3))
(test-equal?
 "\r\u00AD: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r\u00AD")
 '(0 1 2))
(test-equal?
 "\r̈\u00AD: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈\u00AD")
 '(0 1 3))
(test-equal?
 "\r̀: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̀")
 '(0 1 2))
(test-equal?
 "\r̈̀: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈̀")
 '(0 1 3))
(test-equal?
 "\r\u200D: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\r\u200D")
 '(0 1 2))
(test-equal?
 "\r̈‍: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈‍")
 '(0 1 3))
(test-equal?
 "\ra\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\ra\u2060")
 '(0 1 3))
(test-equal?
 "\r̈a\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈a\u2060")
 '(0 1 2 4))
(test-equal?
 "\ra:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\ra:")
 '(0 1 2 3))
(test-equal?
 "\r̈a:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\r̈a:")
 '(0 1 2 3 4))
(test-equal?
 "\ra': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\ra'")
 '(0 1 2 3))
(test-equal?
 "\r̈a': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r̈a'")
 '(0 1 2 3 4))
(test-equal?
 "\ra'\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\ra'\u2060")
 '(0 1 2 4))
(test-equal?
 "\r̈a'\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "\ra,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\ra,")
 '(0 1 2 3))
(test-equal?
 "\r̈a,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\r̈a,")
 '(0 1 2 3 4))
(test-equal?
 "\r1:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\r1:")
 '(0 1 2 3))
(test-equal?
 "\r̈1:: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\r̈1:")
 '(0 1 2 3 4))
(test-equal?
 "\r1': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r1'")
 '(0 1 2 3))
(test-equal?
 "\r̈1': ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\r̈1'")
 '(0 1 2 3 4))
(test-equal?
 "\r1,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\r1,")
 '(0 1 2 3))
(test-equal?
 "\r̈1,: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\r̈1,")
 '(0 1 2 3 4))
(test-equal?
 "\r1.\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\r̈1.\u2060: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\r̈1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "\n\u0001: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\n\u0001")
 '(0 1 2))
(test-equal?
 "\n̈\u0001: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\n̈\u0001")
 '(0 1 2 3))
(test-equal?
 "\n\r: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\n\r")
 '(0 1 2))
(test-equal?
 "\n̈\r: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\n̈\r")
 '(0 1 2 3))
(test-equal?
 "\n\n: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\n\n")
 '(0 1 2))
(test-equal?
 "\n̈\n: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\n̈\n")
 '(0 1 2 3))
(test-equal?
 "\n\v: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\n\v")
 '(0 1 2))
(test-equal?
 "\n̈\v: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\n̈\v")
 '(0 1 2 3))
(test-equal?
 "\n〱: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\n〱")
 '(0 1 2))
(test-equal?
 "\n̈〱: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\n̈〱")
 '(0 1 2 3))
(test-equal?
 "\nA: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\nA")
 '(0 1 2))
(test-equal?
 "\n̈A: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\n̈A")
 '(0 1 2 3))
(test-equal?
 "\n:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\n:")
 '(0 1 2))
(test-equal?
 "\n̈:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\n̈:")
 '(0 1 2 3))
(test-equal?
 "\n,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\n,")
 '(0 1 2))
(test-equal?
 "\n̈,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\n̈,")
 '(0 1 2 3))
(test-equal?
 "\n.: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\n.")
 '(0 1 2))
(test-equal?
 "\n̈.: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\n̈.")
 '(0 1 2 3))
(test-equal?
 "\n0: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\n0")
 '(0 1 2))
(test-equal?
 "\n̈0: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\n̈0")
 '(0 1 2 3))
(test-equal?
 "\n_: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\n_")
 '(0 1 2))
(test-equal?
 "\n̈_: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\n̈_")
 '(0 1 2 3))
(test-equal?
 "\n🇦: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\n🇦")
 '(0 1 2))
(test-equal?
 "\n̈🇦: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\n̈🇦")
 '(0 1 2 3))
(test-equal?
 "\nא: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\nא")
 '(0 1 2))
(test-equal?
 "\n̈א: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\n̈א")
 '(0 1 2 3))
(test-equal?
 "\n\": ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n\"")
 '(0 1 2))
(test-equal?
 "\n̈\": ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n̈\"")
 '(0 1 2 3))
(test-equal?
 "\n': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n'")
 '(0 1 2))
(test-equal?
 "\n̈': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n̈'")
 '(0 1 2 3))
(test-equal?
 "\n⌚: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\n⌚")
 '(0 1 2))
(test-equal?
 "\n̈⌚: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\n̈⌚")
 '(0 1 2 3))
(test-equal?
 "\n : ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\n ")
 '(0 1 2))
(test-equal?
 "\n̈ : ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\n̈ ")
 '(0 1 2 3))
(test-equal?
 "\n\u00AD: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n\u00AD")
 '(0 1 2))
(test-equal?
 "\n̈\u00AD: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈\u00AD")
 '(0 1 3))
(test-equal?
 "\ǹ: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\ǹ")
 '(0 1 2))
(test-equal?
 "\n̈̀: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈̀")
 '(0 1 3))
(test-equal?
 "\n\u200D: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\n\u200D")
 '(0 1 2))
(test-equal?
 "\n̈‍: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈‍")
 '(0 1 3))
(test-equal?
 "\na\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\na\u2060")
 '(0 1 3))
(test-equal?
 "\n̈a\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈a\u2060")
 '(0 1 2 4))
(test-equal?
 "\na:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\na:")
 '(0 1 2 3))
(test-equal?
 "\n̈a:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\n̈a:")
 '(0 1 2 3 4))
(test-equal?
 "\na': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\na'")
 '(0 1 2 3))
(test-equal?
 "\n̈a': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n̈a'")
 '(0 1 2 3 4))
(test-equal?
 "\na'\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\na'\u2060")
 '(0 1 2 4))
(test-equal?
 "\n̈a'\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "\na,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\na,")
 '(0 1 2 3))
(test-equal?
 "\n̈a,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\n̈a,")
 '(0 1 2 3 4))
(test-equal?
 "\n1:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\n1:")
 '(0 1 2 3))
(test-equal?
 "\n̈1:: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\n̈1:")
 '(0 1 2 3 4))
(test-equal?
 "\n1': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n1'")
 '(0 1 2 3))
(test-equal?
 "\n̈1': ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\n̈1'")
 '(0 1 2 3 4))
(test-equal?
 "\n1,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\n1,")
 '(0 1 2 3))
(test-equal?
 "\n̈1,: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\n̈1,")
 '(0 1 2 3 4))
(test-equal?
 "\n1.\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\n̈1.\u2060: ÷ [0.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\n̈1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "\v\u0001: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\v\u0001")
 '(0 1 2))
(test-equal?
 "\v̈\u0001: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\v̈\u0001")
 '(0 1 2 3))
(test-equal?
 "\v\r: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\v\r")
 '(0 1 2))
(test-equal?
 "\v̈\r: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\v̈\r")
 '(0 1 2 3))
(test-equal?
 "\v\n: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\v\n")
 '(0 1 2))
(test-equal?
 "\v̈\n: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\v̈\n")
 '(0 1 2 3))
(test-equal?
 "\v\v: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\v\v")
 '(0 1 2))
(test-equal?
 "\v̈\v: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\v̈\v")
 '(0 1 2 3))
(test-equal?
 "\v〱: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\v〱")
 '(0 1 2))
(test-equal?
 "\v̈〱: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\v̈〱")
 '(0 1 2 3))
(test-equal?
 "\vA: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\vA")
 '(0 1 2))
(test-equal?
 "\v̈A: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\v̈A")
 '(0 1 2 3))
(test-equal?
 "\v:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\v:")
 '(0 1 2))
(test-equal?
 "\v̈:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\v̈:")
 '(0 1 2 3))
(test-equal?
 "\v,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\v,")
 '(0 1 2))
(test-equal?
 "\v̈,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\v̈,")
 '(0 1 2 3))
(test-equal?
 "\v.: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\v.")
 '(0 1 2))
(test-equal?
 "\v̈.: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\v̈.")
 '(0 1 2 3))
(test-equal?
 "\v0: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\v0")
 '(0 1 2))
(test-equal?
 "\v̈0: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\v̈0")
 '(0 1 2 3))
(test-equal?
 "\v_: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\v_")
 '(0 1 2))
(test-equal?
 "\v̈_: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\v̈_")
 '(0 1 2 3))
(test-equal?
 "\v🇦: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\v🇦")
 '(0 1 2))
(test-equal?
 "\v̈🇦: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\v̈🇦")
 '(0 1 2 3))
(test-equal?
 "\vא: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\vא")
 '(0 1 2))
(test-equal?
 "\v̈א: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\v̈א")
 '(0 1 2 3))
(test-equal?
 "\v\": ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v\"")
 '(0 1 2))
(test-equal?
 "\v̈\": ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v̈\"")
 '(0 1 2 3))
(test-equal?
 "\v': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v'")
 '(0 1 2))
(test-equal?
 "\v̈': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v̈'")
 '(0 1 2 3))
(test-equal?
 "\v⌚: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\v⌚")
 '(0 1 2))
(test-equal?
 "\v̈⌚: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\v̈⌚")
 '(0 1 2 3))
(test-equal?
 "\v : ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\v ")
 '(0 1 2))
(test-equal?
 "\v̈ : ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\v̈ ")
 '(0 1 2 3))
(test-equal?
 "\v\u00AD: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v\u00AD")
 '(0 1 2))
(test-equal?
 "\v̈\u00AD: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈\u00AD")
 '(0 1 3))
(test-equal?
 "\v̀: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̀")
 '(0 1 2))
(test-equal?
 "\v̈̀: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈̀")
 '(0 1 3))
(test-equal?
 "\v\u200D: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\v\u200D")
 '(0 1 2))
(test-equal?
 "\v̈‍: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈‍")
 '(0 1 3))
(test-equal?
 "\va\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\va\u2060")
 '(0 1 3))
(test-equal?
 "\v̈a\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈a\u2060")
 '(0 1 2 4))
(test-equal?
 "\va:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\va:")
 '(0 1 2 3))
(test-equal?
 "\v̈a:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\v̈a:")
 '(0 1 2 3 4))
(test-equal?
 "\va': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\va'")
 '(0 1 2 3))
(test-equal?
 "\v̈a': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v̈a'")
 '(0 1 2 3 4))
(test-equal?
 "\va'\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\va'\u2060")
 '(0 1 2 4))
(test-equal?
 "\v̈a'\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "\va,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\va,")
 '(0 1 2 3))
(test-equal?
 "\v̈a,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\v̈a,")
 '(0 1 2 3 4))
(test-equal?
 "\v1:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\v1:")
 '(0 1 2 3))
(test-equal?
 "\v̈1:: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\v̈1:")
 '(0 1 2 3 4))
(test-equal?
 "\v1': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v1'")
 '(0 1 2 3))
(test-equal?
 "\v̈1': ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\v̈1'")
 '(0 1 2 3 4))
(test-equal?
 "\v1,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\v1,")
 '(0 1 2 3))
(test-equal?
 "\v̈1,: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\v̈1,")
 '(0 1 2 3 4))
(test-equal?
 "\v1.\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\v̈1.\u2060: ÷ [0.2] <LINE TABULATION> (Newline) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\v̈1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "〱\u0001: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "〱\u0001")
 '(0 1 2))
(test-equal?
 "〱̈\u0001: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "〱̈\u0001")
 '(0 2 3))
(test-equal?
 "〱\r: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "〱\r")
 '(0 1 2))
(test-equal?
 "〱̈\r: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "〱̈\r")
 '(0 2 3))
(test-equal?
 "〱\n: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "〱\n")
 '(0 1 2))
(test-equal?
 "〱̈\n: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "〱̈\n")
 '(0 2 3))
(test-equal?
 "〱\v: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "〱\v")
 '(0 1 2))
(test-equal?
 "〱̈\v: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "〱̈\v")
 '(0 2 3))
(test-equal?
 "〱〱: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [13.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "〱〱")
 '(0 2))
(test-equal?
 "〱̈〱: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "〱̈〱")
 '(0 3))
(test-equal?
 "〱A: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "〱A")
 '(0 1 2))
(test-equal?
 "〱̈A: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "〱̈A")
 '(0 2 3))
(test-equal?
 "〱:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱:")
 '(0 1 2))
(test-equal?
 "〱̈:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱̈:")
 '(0 2 3))
(test-equal?
 "〱,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱,")
 '(0 1 2))
(test-equal?
 "〱̈,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱̈,")
 '(0 2 3))
(test-equal?
 "〱.: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "〱.")
 '(0 1 2))
(test-equal?
 "〱̈.: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "〱̈.")
 '(0 2 3))
(test-equal?
 "〱0: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "〱0")
 '(0 1 2))
(test-equal?
 "〱̈0: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "〱̈0")
 '(0 2 3))
(test-equal?
 "〱_: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "〱_")
 '(0 2))
(test-equal?
 "〱̈_: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "〱̈_")
 '(0 3))
(test-equal?
 "〱🇦: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "〱🇦")
 '(0 1 2))
(test-equal?
 "〱̈🇦: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "〱̈🇦")
 '(0 2 3))
(test-equal?
 "〱א: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "〱א")
 '(0 1 2))
(test-equal?
 "〱̈א: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "〱̈א")
 '(0 2 3))
(test-equal?
 "〱\": ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱\"")
 '(0 1 2))
(test-equal?
 "〱̈\": ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱̈\"")
 '(0 2 3))
(test-equal?
 "〱': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱'")
 '(0 1 2))
(test-equal?
 "〱̈': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱̈'")
 '(0 2 3))
(test-equal?
 "〱⌚: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "〱⌚")
 '(0 1 2))
(test-equal?
 "〱̈⌚: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "〱̈⌚")
 '(0 2 3))
(test-equal?
 "〱 : ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "〱 ")
 '(0 1 2))
(test-equal?
 "〱̈ : ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "〱̈ ")
 '(0 2 3))
(test-equal?
 "〱\u00AD: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱\u00AD")
 '(0 2))
(test-equal?
 "〱̈\u00AD: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈\u00AD")
 '(0 3))
(test-equal?
 "〱̀: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̀")
 '(0 2))
(test-equal?
 "〱̈̀: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈̀")
 '(0 3))
(test-equal?
 "〱‍: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "〱‍")
 '(0 2))
(test-equal?
 "〱̈‍: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈‍")
 '(0 3))
(test-equal?
 "〱a\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱a\u2060")
 '(0 1 3))
(test-equal?
 "〱̈a\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈a\u2060")
 '(0 2 4))
(test-equal?
 "〱a:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱a:")
 '(0 1 2 3))
(test-equal?
 "〱̈a:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱̈a:")
 '(0 2 3 4))
(test-equal?
 "〱a': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱a'")
 '(0 1 2 3))
(test-equal?
 "〱̈a': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱̈a'")
 '(0 2 3 4))
(test-equal?
 "〱a'\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱a'\u2060")
 '(0 1 2 4))
(test-equal?
 "〱̈a'\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "〱a,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱a,")
 '(0 1 2 3))
(test-equal?
 "〱̈a,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱̈a,")
 '(0 2 3 4))
(test-equal?
 "〱1:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱1:")
 '(0 1 2 3))
(test-equal?
 "〱̈1:: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "〱̈1:")
 '(0 2 3 4))
(test-equal?
 "〱1': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱1'")
 '(0 1 2 3))
(test-equal?
 "〱̈1': ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "〱̈1'")
 '(0 2 3 4))
(test-equal?
 "〱1,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱1,")
 '(0 1 2 3))
(test-equal?
 "〱̈1,: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "〱̈1,")
 '(0 2 3 4))
(test-equal?
 "〱1.\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱1.\u2060")
 '(0 1 2 4))
(test-equal?
 "〱̈1.\u2060: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "〱̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "A\u0001: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "A\u0001")
 '(0 1 2))
(test-equal?
 "Ä\u0001: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "Ä\u0001")
 '(0 2 3))
(test-equal?
 "A\r: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "A\r")
 '(0 1 2))
(test-equal?
 "Ä\r: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "Ä\r")
 '(0 2 3))
(test-equal?
 "A\n: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "A\n")
 '(0 1 2))
(test-equal?
 "Ä\n: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "Ä\n")
 '(0 2 3))
(test-equal?
 "A\v: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "A\v")
 '(0 1 2))
(test-equal?
 "Ä\v: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "Ä\v")
 '(0 2 3))
(test-equal?
 "A〱: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "A〱")
 '(0 1 2))
(test-equal?
 "Ä〱: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "Ä〱")
 '(0 2 3))
(test-equal?
 "AA: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "AA")
 '(0 2))
(test-equal?
 "ÄA: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "ÄA")
 '(0 3))
(test-equal?
 "A:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "A:")
 '(0 1 2))
(test-equal?
 "Ä:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "Ä:")
 '(0 2 3))
(test-equal?
 "A,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "A,")
 '(0 1 2))
(test-equal?
 "Ä,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "Ä,")
 '(0 2 3))
(test-equal?
 "A.: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "A.")
 '(0 1 2))
(test-equal?
 "Ä.: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "Ä.")
 '(0 2 3))
(test-equal?
 "A0: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "A0")
 '(0 2))
(test-equal?
 "Ä0: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "Ä0")
 '(0 3))
(test-equal?
 "A_: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "A_")
 '(0 2))
(test-equal?
 "Ä_: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "Ä_")
 '(0 3))
(test-equal?
 "A🇦: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "A🇦")
 '(0 1 2))
(test-equal?
 "Ä🇦: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "Ä🇦")
 '(0 2 3))
(test-equal?
 "Aא: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "Aא")
 '(0 2))
(test-equal?
 "Äא: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "Äא")
 '(0 3))
(test-equal?
 "A\": ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "A\"")
 '(0 1 2))
(test-equal?
 "Ä\": ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "Ä\"")
 '(0 2 3))
(test-equal?
 "A': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "A'")
 '(0 1 2))
(test-equal?
 "Ä': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "Ä'")
 '(0 2 3))
(test-equal?
 "A⌚: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "A⌚")
 '(0 1 2))
(test-equal?
 "Ä⌚: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "Ä⌚")
 '(0 2 3))
(test-equal?
 "A : ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "A ")
 '(0 1 2))
(test-equal?
 "Ä : ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "Ä ")
 '(0 2 3))
(test-equal?
 "A\u00AD: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "A\u00AD")
 '(0 2))
(test-equal?
 "Ä\u00AD: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Ä\u00AD")
 '(0 3))
(test-equal?
 "À: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "À")
 '(0 2))
(test-equal?
 "Ä̀: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "Ä̀")
 '(0 3))
(test-equal?
 "A‍: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "A‍")
 '(0 2))
(test-equal?
 "Ä‍: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "Ä‍")
 '(0 3))
(test-equal?
 "Aa\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Aa\u2060")
 '(0 3))
(test-equal?
 "Äa\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Äa\u2060")
 '(0 4))
(test-equal?
 "Aa:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "Aa:")
 '(0 2 3))
(test-equal?
 "Äa:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "Äa:")
 '(0 3 4))
(test-equal?
 "Aa': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "Aa'")
 '(0 2 3))
(test-equal?
 "Äa': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "Äa'")
 '(0 3 4))
(test-equal?
 "Aa'\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Aa'\u2060")
 '(0 2 4))
(test-equal?
 "Äa'\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Äa'\u2060")
 '(0 3 5))
(test-equal?
 "Aa,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "Aa,")
 '(0 2 3))
(test-equal?
 "Äa,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "Äa,")
 '(0 3 4))
(test-equal?
 "A1:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "A1:")
 '(0 2 3))
(test-equal?
 "Ä1:: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "Ä1:")
 '(0 3 4))
(test-equal?
 "A1': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "A1'")
 '(0 2 3))
(test-equal?
 "Ä1': ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "Ä1'")
 '(0 3 4))
(test-equal?
 "A1,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "A1,")
 '(0 2 3))
(test-equal?
 "Ä1,: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "Ä1,")
 '(0 3 4))
(test-equal?
 "A1.\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "A1.\u2060")
 '(0 2 4))
(test-equal?
 "Ä1.\u2060: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "Ä1.\u2060")
 '(0 3 5))
(test-equal?
 ":\u0001: ÷ [0.2] COLON (MidLetter) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ":\u0001")
 '(0 1 2))
(test-equal?
 ":̈\u0001: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ":̈\u0001")
 '(0 2 3))
(test-equal?
 ":\r: ÷ [0.2] COLON (MidLetter) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ":\r")
 '(0 1 2))
(test-equal?
 ":̈\r: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ":̈\r")
 '(0 2 3))
(test-equal?
 ":\n: ÷ [0.2] COLON (MidLetter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ":\n")
 '(0 1 2))
(test-equal?
 ":̈\n: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ":̈\n")
 '(0 2 3))
(test-equal?
 ":\v: ÷ [0.2] COLON (MidLetter) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ":\v")
 '(0 1 2))
(test-equal?
 ":̈\v: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ":̈\v")
 '(0 2 3))
(test-equal?
 ":〱: ÷ [0.2] COLON (MidLetter) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ":〱")
 '(0 1 2))
(test-equal?
 ":̈〱: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ":̈〱")
 '(0 2 3))
(test-equal?
 ":A: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ":A")
 '(0 1 2))
(test-equal?
 ":̈A: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ":̈A")
 '(0 2 3))
(test-equal?
 "::: ÷ [0.2] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "::")
 '(0 1 2))
(test-equal?
 ":̈:: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ":̈:")
 '(0 2 3))
(test-equal?
 ":,: ÷ [0.2] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":,")
 '(0 1 2))
(test-equal?
 ":̈,: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":̈,")
 '(0 2 3))
(test-equal?
 ":.: ÷ [0.2] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes ":.")
 '(0 1 2))
(test-equal?
 ":̈.: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes ":̈.")
 '(0 2 3))
(test-equal?
 ":0: ÷ [0.2] COLON (MidLetter) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ":0")
 '(0 1 2))
(test-equal?
 ":̈0: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ":̈0")
 '(0 2 3))
(test-equal?
 ":_: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes ":_")
 '(0 1 2))
(test-equal?
 ":̈_: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes ":̈_")
 '(0 2 3))
(test-equal?
 ":🇦: ÷ [0.2] COLON (MidLetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ":🇦")
 '(0 1 2))
(test-equal?
 ":̈🇦: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ":̈🇦")
 '(0 2 3))
(test-equal?
 ":א: ÷ [0.2] COLON (MidLetter) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ":א")
 '(0 1 2))
(test-equal?
 ":̈א: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ":̈א")
 '(0 2 3))
(test-equal?
 ":\": ÷ [0.2] COLON (MidLetter) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ":\"")
 '(0 1 2))
(test-equal?
 ":̈\": ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ":̈\"")
 '(0 2 3))
(test-equal?
 ":': ÷ [0.2] COLON (MidLetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":'")
 '(0 1 2))
(test-equal?
 ":̈': ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":̈'")
 '(0 2 3))
(test-equal?
 ":⌚: ÷ [0.2] COLON (MidLetter) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ":⌚")
 '(0 1 2))
(test-equal?
 ":̈⌚: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ":̈⌚")
 '(0 2 3))
(test-equal?
 ": : ÷ [0.2] COLON (MidLetter) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ": ")
 '(0 1 2))
(test-equal?
 ":̈ : ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ":̈ ")
 '(0 2 3))
(test-equal?
 ":\u00AD: ÷ [0.2] COLON (MidLetter) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":\u00AD")
 '(0 2))
(test-equal?
 ":̈\u00AD: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈\u00AD")
 '(0 3))
(test-equal?
 ":̀: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ":̀")
 '(0 2))
(test-equal?
 ":̈̀: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈̀")
 '(0 3))
(test-equal?
 ":‍: ÷ [0.2] COLON (MidLetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ":‍")
 '(0 2))
(test-equal?
 ":̈‍: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈‍")
 '(0 3))
(test-equal?
 ":a\u2060: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":a\u2060")
 '(0 1 3))
(test-equal?
 ":̈a\u2060: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈a\u2060")
 '(0 2 4))
(test-equal?
 ":a:: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ":a:")
 '(0 1 2 3))
(test-equal?
 ":̈a:: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ":̈a:")
 '(0 2 3 4))
(test-equal?
 ":a': ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":a'")
 '(0 1 2 3))
(test-equal?
 ":̈a': ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":̈a'")
 '(0 2 3 4))
(test-equal?
 ":a'\u2060: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":a'\u2060")
 '(0 1 2 4))
(test-equal?
 ":̈a'\u2060: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 ":a,: ÷ [0.2] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":a,")
 '(0 1 2 3))
(test-equal?
 ":̈a,: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":̈a,")
 '(0 2 3 4))
(test-equal?
 ":1:: ÷ [0.2] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ":1:")
 '(0 1 2 3))
(test-equal?
 ":̈1:: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ":̈1:")
 '(0 2 3 4))
(test-equal?
 ":1': ÷ [0.2] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":1'")
 '(0 1 2 3))
(test-equal?
 ":̈1': ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ":̈1'")
 '(0 2 3 4))
(test-equal?
 ":1,: ÷ [0.2] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":1,")
 '(0 1 2 3))
(test-equal?
 ":̈1,: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ":̈1,")
 '(0 2 3 4))
(test-equal?
 ":1.\u2060: ÷ [0.2] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":1.\u2060")
 '(0 1 2 4))
(test-equal?
 ":̈1.\u2060: ÷ [0.2] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ":̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 ",\u0001: ÷ [0.2] COMMA (MidNum) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ",\u0001")
 '(0 1 2))
(test-equal?
 ",̈\u0001: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ",̈\u0001")
 '(0 2 3))
(test-equal?
 ",\r: ÷ [0.2] COMMA (MidNum) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ",\r")
 '(0 1 2))
(test-equal?
 ",̈\r: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ",̈\r")
 '(0 2 3))
(test-equal?
 ",\n: ÷ [0.2] COMMA (MidNum) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ",\n")
 '(0 1 2))
(test-equal?
 ",̈\n: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ",̈\n")
 '(0 2 3))
(test-equal?
 ",\v: ÷ [0.2] COMMA (MidNum) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ",\v")
 '(0 1 2))
(test-equal?
 ",̈\v: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ",̈\v")
 '(0 2 3))
(test-equal?
 ",〱: ÷ [0.2] COMMA (MidNum) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ",〱")
 '(0 1 2))
(test-equal?
 ",̈〱: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ",̈〱")
 '(0 2 3))
(test-equal?
 ",A: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ",A")
 '(0 1 2))
(test-equal?
 ",̈A: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ",̈A")
 '(0 2 3))
(test-equal?
 ",:: ÷ [0.2] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",:")
 '(0 1 2))
(test-equal?
 ",̈:: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",̈:")
 '(0 2 3))
(test-equal?
 ",,: ÷ [0.2] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",,")
 '(0 1 2))
(test-equal?
 ",̈,: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",̈,")
 '(0 2 3))
(test-equal?
 ",.: ÷ [0.2] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes ",.")
 '(0 1 2))
(test-equal?
 ",̈.: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes ",̈.")
 '(0 2 3))
(test-equal?
 ",0: ÷ [0.2] COMMA (MidNum) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ",0")
 '(0 1 2))
(test-equal?
 ",̈0: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ",̈0")
 '(0 2 3))
(test-equal?
 ",_: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes ",_")
 '(0 1 2))
(test-equal?
 ",̈_: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes ",̈_")
 '(0 2 3))
(test-equal?
 ",🇦: ÷ [0.2] COMMA (MidNum) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ",🇦")
 '(0 1 2))
(test-equal?
 ",̈🇦: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ",̈🇦")
 '(0 2 3))
(test-equal?
 ",א: ÷ [0.2] COMMA (MidNum) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ",א")
 '(0 1 2))
(test-equal?
 ",̈א: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ",̈א")
 '(0 2 3))
(test-equal?
 ",\": ÷ [0.2] COMMA (MidNum) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ",\"")
 '(0 1 2))
(test-equal?
 ",̈\": ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ",̈\"")
 '(0 2 3))
(test-equal?
 ",': ÷ [0.2] COMMA (MidNum) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",'")
 '(0 1 2))
(test-equal?
 ",̈': ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",̈'")
 '(0 2 3))
(test-equal?
 ",⌚: ÷ [0.2] COMMA (MidNum) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ",⌚")
 '(0 1 2))
(test-equal?
 ",̈⌚: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ",̈⌚")
 '(0 2 3))
(test-equal?
 ", : ÷ [0.2] COMMA (MidNum) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ", ")
 '(0 1 2))
(test-equal?
 ",̈ : ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ",̈ ")
 '(0 2 3))
(test-equal?
 ",\u00AD: ÷ [0.2] COMMA (MidNum) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",\u00AD")
 '(0 2))
(test-equal?
 ",̈\u00AD: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈\u00AD")
 '(0 3))
(test-equal?
 ",̀: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ",̀")
 '(0 2))
(test-equal?
 ",̈̀: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈̀")
 '(0 3))
(test-equal?
 ",‍: ÷ [0.2] COMMA (MidNum) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ",‍")
 '(0 2))
(test-equal?
 ",̈‍: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈‍")
 '(0 3))
(test-equal?
 ",a\u2060: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",a\u2060")
 '(0 1 3))
(test-equal?
 ",̈a\u2060: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈a\u2060")
 '(0 2 4))
(test-equal?
 ",a:: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",a:")
 '(0 1 2 3))
(test-equal?
 ",̈a:: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",̈a:")
 '(0 2 3 4))
(test-equal?
 ",a': ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",a'")
 '(0 1 2 3))
(test-equal?
 ",̈a': ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",̈a'")
 '(0 2 3 4))
(test-equal?
 ",a'\u2060: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",a'\u2060")
 '(0 1 2 4))
(test-equal?
 ",̈a'\u2060: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 ",a,: ÷ [0.2] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",a,")
 '(0 1 2 3))
(test-equal?
 ",̈a,: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",̈a,")
 '(0 2 3 4))
(test-equal?
 ",1:: ÷ [0.2] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",1:")
 '(0 1 2 3))
(test-equal?
 ",̈1:: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ",̈1:")
 '(0 2 3 4))
(test-equal?
 ",1': ÷ [0.2] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",1'")
 '(0 1 2 3))
(test-equal?
 ",̈1': ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ",̈1'")
 '(0 2 3 4))
(test-equal?
 ",1,: ÷ [0.2] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",1,")
 '(0 1 2 3))
(test-equal?
 ",̈1,: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ",̈1,")
 '(0 2 3 4))
(test-equal?
 ",1.\u2060: ÷ [0.2] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",1.\u2060")
 '(0 1 2 4))
(test-equal?
 ",̈1.\u2060: ÷ [0.2] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ",̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 ".\u0001: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ".\u0001")
 '(0 1 2))
(test-equal?
 ".̈\u0001: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes ".̈\u0001")
 '(0 2 3))
(test-equal?
 ".\r: ÷ [0.2] FULL STOP (MidNumLet) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ".\r")
 '(0 1 2))
(test-equal?
 ".̈\r: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes ".̈\r")
 '(0 2 3))
(test-equal?
 ".\n: ÷ [0.2] FULL STOP (MidNumLet) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ".\n")
 '(0 1 2))
(test-equal?
 ".̈\n: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes ".̈\n")
 '(0 2 3))
(test-equal?
 ".\v: ÷ [0.2] FULL STOP (MidNumLet) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ".\v")
 '(0 1 2))
(test-equal?
 ".̈\v: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes ".̈\v")
 '(0 2 3))
(test-equal?
 ".〱: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ".〱")
 '(0 1 2))
(test-equal?
 ".̈〱: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes ".̈〱")
 '(0 2 3))
(test-equal?
 ".A: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ".A")
 '(0 1 2))
(test-equal?
 ".̈A: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes ".̈A")
 '(0 2 3))
(test-equal?
 ".:: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".:")
 '(0 1 2))
(test-equal?
 ".̈:: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".̈:")
 '(0 2 3))
(test-equal?
 ".,: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".,")
 '(0 1 2))
(test-equal?
 ".̈,: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".̈,")
 '(0 2 3))
(test-equal?
 "..: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "..")
 '(0 1 2))
(test-equal?
 ".̈.: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes ".̈.")
 '(0 2 3))
(test-equal?
 ".0: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ".0")
 '(0 1 2))
(test-equal?
 ".̈0: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes ".̈0")
 '(0 2 3))
(test-equal?
 "._: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "._")
 '(0 1 2))
(test-equal?
 ".̈_: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes ".̈_")
 '(0 2 3))
(test-equal?
 ".🇦: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ".🇦")
 '(0 1 2))
(test-equal?
 ".̈🇦: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes ".̈🇦")
 '(0 2 3))
(test-equal?
 ".א: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ".א")
 '(0 1 2))
(test-equal?
 ".̈א: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes ".̈א")
 '(0 2 3))
(test-equal?
 ".\": ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ".\"")
 '(0 1 2))
(test-equal?
 ".̈\": ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes ".̈\"")
 '(0 2 3))
(test-equal?
 ".': ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".'")
 '(0 1 2))
(test-equal?
 ".̈': ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".̈'")
 '(0 2 3))
(test-equal?
 ".⌚: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ".⌚")
 '(0 1 2))
(test-equal?
 ".̈⌚: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes ".̈⌚")
 '(0 2 3))
(test-equal?
 ". : ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ". ")
 '(0 1 2))
(test-equal?
 ".̈ : ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes ".̈ ")
 '(0 2 3))
(test-equal?
 ".\u00AD: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".\u00AD")
 '(0 2))
(test-equal?
 ".̈\u00AD: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈\u00AD")
 '(0 3))
(test-equal?
 ".̀: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ".̀")
 '(0 2))
(test-equal?
 ".̈̀: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈̀")
 '(0 3))
(test-equal?
 ".‍: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ".‍")
 '(0 2))
(test-equal?
 ".̈‍: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈‍")
 '(0 3))
(test-equal?
 ".a\u2060: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".a\u2060")
 '(0 1 3))
(test-equal?
 ".̈a\u2060: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈a\u2060")
 '(0 2 4))
(test-equal?
 ".a:: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".a:")
 '(0 1 2 3))
(test-equal?
 ".̈a:: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".̈a:")
 '(0 2 3 4))
(test-equal?
 ".a': ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".a'")
 '(0 1 2 3))
(test-equal?
 ".̈a': ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".̈a'")
 '(0 2 3 4))
(test-equal?
 ".a'\u2060: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".a'\u2060")
 '(0 1 2 4))
(test-equal?
 ".̈a'\u2060: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 ".a,: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".a,")
 '(0 1 2 3))
(test-equal?
 ".̈a,: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".̈a,")
 '(0 2 3 4))
(test-equal?
 ".1:: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".1:")
 '(0 1 2 3))
(test-equal?
 ".̈1:: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes ".̈1:")
 '(0 2 3 4))
(test-equal?
 ".1': ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".1'")
 '(0 1 2 3))
(test-equal?
 ".̈1': ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes ".̈1'")
 '(0 2 3 4))
(test-equal?
 ".1,: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".1,")
 '(0 1 2 3))
(test-equal?
 ".̈1,: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes ".̈1,")
 '(0 2 3 4))
(test-equal?
 ".1.\u2060: ÷ [0.2] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".1.\u2060")
 '(0 1 2 4))
(test-equal?
 ".̈1.\u2060: ÷ [0.2] FULL STOP (MidNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes ".̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "0\u0001: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "0\u0001")
 '(0 1 2))
(test-equal?
 "0̈\u0001: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "0̈\u0001")
 '(0 2 3))
(test-equal?
 "0\r: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "0\r")
 '(0 1 2))
(test-equal?
 "0̈\r: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "0̈\r")
 '(0 2 3))
(test-equal?
 "0\n: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "0\n")
 '(0 1 2))
(test-equal?
 "0̈\n: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "0̈\n")
 '(0 2 3))
(test-equal?
 "0\v: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "0\v")
 '(0 1 2))
(test-equal?
 "0̈\v: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "0̈\v")
 '(0 2 3))
(test-equal?
 "0〱: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "0〱")
 '(0 1 2))
(test-equal?
 "0̈〱: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "0̈〱")
 '(0 2 3))
(test-equal?
 "0A: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "0A")
 '(0 2))
(test-equal?
 "0̈A: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "0̈A")
 '(0 3))
(test-equal?
 "0:: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "0:")
 '(0 1 2))
(test-equal?
 "0̈:: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "0̈:")
 '(0 2 3))
(test-equal?
 "0,: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "0,")
 '(0 1 2))
(test-equal?
 "0̈,: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "0̈,")
 '(0 2 3))
(test-equal?
 "0.: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "0.")
 '(0 1 2))
(test-equal?
 "0̈.: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "0̈.")
 '(0 2 3))
(test-equal?
 "00: ÷ [0.2] DIGIT ZERO (Numeric) × [8.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "00")
 '(0 2))
(test-equal?
 "0̈0: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [8.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "0̈0")
 '(0 3))
(test-equal?
 "0_: ÷ [0.2] DIGIT ZERO (Numeric) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "0_")
 '(0 2))
(test-equal?
 "0̈_: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "0̈_")
 '(0 3))
(test-equal?
 "0🇦: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "0🇦")
 '(0 1 2))
(test-equal?
 "0̈🇦: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "0̈🇦")
 '(0 2 3))
(test-equal?
 "0א: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "0א")
 '(0 2))
(test-equal?
 "0̈א: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "0̈א")
 '(0 3))
(test-equal?
 "0\": ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "0\"")
 '(0 1 2))
(test-equal?
 "0̈\": ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "0̈\"")
 '(0 2 3))
(test-equal?
 "0': ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "0'")
 '(0 1 2))
(test-equal?
 "0̈': ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "0̈'")
 '(0 2 3))
(test-equal?
 "0⌚: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "0⌚")
 '(0 1 2))
(test-equal?
 "0̈⌚: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "0̈⌚")
 '(0 2 3))
(test-equal?
 "0 : ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "0 ")
 '(0 1 2))
(test-equal?
 "0̈ : ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "0̈ ")
 '(0 2 3))
(test-equal?
 "0\u00AD: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0\u00AD")
 '(0 2))
(test-equal?
 "0̈\u00AD: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈\u00AD")
 '(0 3))
(test-equal?
 "0̀: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "0̀")
 '(0 2))
(test-equal?
 "0̈̀: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈̀")
 '(0 3))
(test-equal?
 "0‍: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "0‍")
 '(0 2))
(test-equal?
 "0̈‍: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈‍")
 '(0 3))
(test-equal?
 "0a\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0a\u2060")
 '(0 3))
(test-equal?
 "0̈a\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈a\u2060")
 '(0 4))
(test-equal?
 "0a:: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "0a:")
 '(0 2 3))
(test-equal?
 "0̈a:: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "0̈a:")
 '(0 3 4))
(test-equal?
 "0a': ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "0a'")
 '(0 2 3))
(test-equal?
 "0̈a': ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "0̈a'")
 '(0 3 4))
(test-equal?
 "0a'\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0a'\u2060")
 '(0 2 4))
(test-equal?
 "0̈a'\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈a'\u2060")
 '(0 3 5))
(test-equal?
 "0a,: ÷ [0.2] DIGIT ZERO (Numeric) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "0a,")
 '(0 2 3))
(test-equal?
 "0̈a,: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [10.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "0̈a,")
 '(0 3 4))
(test-equal?
 "01:: ÷ [0.2] DIGIT ZERO (Numeric) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "01:")
 '(0 2 3))
(test-equal?
 "0̈1:: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "0̈1:")
 '(0 3 4))
(test-equal?
 "01': ÷ [0.2] DIGIT ZERO (Numeric) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "01'")
 '(0 2 3))
(test-equal?
 "0̈1': ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "0̈1'")
 '(0 3 4))
(test-equal?
 "01,: ÷ [0.2] DIGIT ZERO (Numeric) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "01,")
 '(0 2 3))
(test-equal?
 "0̈1,: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "0̈1,")
 '(0 3 4))
(test-equal?
 "01.\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "01.\u2060")
 '(0 2 4))
(test-equal?
 "0̈1.\u2060: ÷ [0.2] DIGIT ZERO (Numeric) × [4.0] COMBINING DIAERESIS (Extend_FE) × [8.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "0̈1.\u2060")
 '(0 3 5))
(test-equal?
 "_\u0001: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "_\u0001")
 '(0 1 2))
(test-equal?
 "_̈\u0001: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "_̈\u0001")
 '(0 2 3))
(test-equal?
 "_\r: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "_\r")
 '(0 1 2))
(test-equal?
 "_̈\r: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "_̈\r")
 '(0 2 3))
(test-equal?
 "_\n: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "_\n")
 '(0 1 2))
(test-equal?
 "_̈\n: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "_̈\n")
 '(0 2 3))
(test-equal?
 "_\v: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "_\v")
 '(0 1 2))
(test-equal?
 "_̈\v: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "_̈\v")
 '(0 2 3))
(test-equal?
 "_〱: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "_〱")
 '(0 2))
(test-equal?
 "_̈〱: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "_̈〱")
 '(0 3))
(test-equal?
 "_A: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "_A")
 '(0 2))
(test-equal?
 "_̈A: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "_̈A")
 '(0 3))
(test-equal?
 "_:: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_:")
 '(0 1 2))
(test-equal?
 "_̈:: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_̈:")
 '(0 2 3))
(test-equal?
 "_,: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_,")
 '(0 1 2))
(test-equal?
 "_̈,: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_̈,")
 '(0 2 3))
(test-equal?
 "_.: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "_.")
 '(0 1 2))
(test-equal?
 "_̈.: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "_̈.")
 '(0 2 3))
(test-equal?
 "_0: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "_0")
 '(0 2))
(test-equal?
 "_̈0: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "_̈0")
 '(0 3))
(test-equal?
 "__: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "__")
 '(0 2))
(test-equal?
 "_̈_: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "_̈_")
 '(0 3))
(test-equal?
 "_🇦: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "_🇦")
 '(0 1 2))
(test-equal?
 "_̈🇦: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "_̈🇦")
 '(0 2 3))
(test-equal?
 "_א: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "_א")
 '(0 2))
(test-equal?
 "_̈א: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "_̈א")
 '(0 3))
(test-equal?
 "_\": ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "_\"")
 '(0 1 2))
(test-equal?
 "_̈\": ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "_̈\"")
 '(0 2 3))
(test-equal?
 "_': ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_'")
 '(0 1 2))
(test-equal?
 "_̈': ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_̈'")
 '(0 2 3))
(test-equal?
 "_⌚: ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "_⌚")
 '(0 1 2))
(test-equal?
 "_̈⌚: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "_̈⌚")
 '(0 2 3))
(test-equal?
 "_ : ÷ [0.2] LOW LINE (ExtendNumLet) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "_ ")
 '(0 1 2))
(test-equal?
 "_̈ : ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "_̈ ")
 '(0 2 3))
(test-equal?
 "_\u00AD: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_\u00AD")
 '(0 2))
(test-equal?
 "_̈\u00AD: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈\u00AD")
 '(0 3))
(test-equal?
 "_̀: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "_̀")
 '(0 2))
(test-equal?
 "_̈̀: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈̀")
 '(0 3))
(test-equal?
 "_‍: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "_‍")
 '(0 2))
(test-equal?
 "_̈‍: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈‍")
 '(0 3))
(test-equal?
 "_a\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_a\u2060")
 '(0 3))
(test-equal?
 "_̈a\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈a\u2060")
 '(0 4))
(test-equal?
 "_a:: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_a:")
 '(0 2 3))
(test-equal?
 "_̈a:: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_̈a:")
 '(0 3 4))
(test-equal?
 "_a': ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_a'")
 '(0 2 3))
(test-equal?
 "_̈a': ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_̈a'")
 '(0 3 4))
(test-equal?
 "_a'\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_a'\u2060")
 '(0 2 4))
(test-equal?
 "_̈a'\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈a'\u2060")
 '(0 3 5))
(test-equal?
 "_a,: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_a,")
 '(0 2 3))
(test-equal?
 "_̈a,: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_̈a,")
 '(0 3 4))
(test-equal?
 "_1:: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_1:")
 '(0 2 3))
(test-equal?
 "_̈1:: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "_̈1:")
 '(0 3 4))
(test-equal?
 "_1': ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_1'")
 '(0 2 3))
(test-equal?
 "_̈1': ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "_̈1'")
 '(0 3 4))
(test-equal?
 "_1,: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_1,")
 '(0 2 3))
(test-equal?
 "_̈1,: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "_̈1,")
 '(0 3 4))
(test-equal?
 "_1.\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_1.\u2060")
 '(0 2 4))
(test-equal?
 "_̈1.\u2060: ÷ [0.2] LOW LINE (ExtendNumLet) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "_̈1.\u2060")
 '(0 3 5))
(test-equal?
 "🇦\u0001: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "🇦\u0001")
 '(0 1 2))
(test-equal?
 "🇦̈\u0001: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\u0001")
 '(0 2 3))
(test-equal?
 "🇦\r: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "🇦\r")
 '(0 1 2))
(test-equal?
 "🇦̈\r: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\r")
 '(0 2 3))
(test-equal?
 "🇦\n: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "🇦\n")
 '(0 1 2))
(test-equal?
 "🇦̈\n: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\n")
 '(0 2 3))
(test-equal?
 "🇦\v: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "🇦\v")
 '(0 1 2))
(test-equal?
 "🇦̈\v: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\v")
 '(0 2 3))
(test-equal?
 "🇦〱: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "🇦〱")
 '(0 1 2))
(test-equal?
 "🇦̈〱: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "🇦̈〱")
 '(0 2 3))
(test-equal?
 "🇦A: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "🇦A")
 '(0 1 2))
(test-equal?
 "🇦̈A: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "🇦̈A")
 '(0 2 3))
(test-equal?
 "🇦:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦:")
 '(0 1 2))
(test-equal?
 "🇦̈:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦̈:")
 '(0 2 3))
(test-equal?
 "🇦,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦,")
 '(0 1 2))
(test-equal?
 "🇦̈,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦̈,")
 '(0 2 3))
(test-equal?
 "🇦.: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "🇦.")
 '(0 1 2))
(test-equal?
 "🇦̈.: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "🇦̈.")
 '(0 2 3))
(test-equal?
 "🇦0: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "🇦0")
 '(0 1 2))
(test-equal?
 "🇦̈0: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "🇦̈0")
 '(0 2 3))
(test-equal?
 "🇦_: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "🇦_")
 '(0 1 2))
(test-equal?
 "🇦̈_: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "🇦̈_")
 '(0 2 3))
(test-equal?
 "🇦🇦: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [15.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "🇦🇦")
 '(0 2))
(test-equal?
 "🇦̈🇦: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) × [15.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "🇦̈🇦")
 '(0 3))
(test-equal?
 "🇦א: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "🇦א")
 '(0 1 2))
(test-equal?
 "🇦̈א: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "🇦̈א")
 '(0 2 3))
(test-equal?
 "🇦\": ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦\"")
 '(0 1 2))
(test-equal?
 "🇦̈\": ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\"")
 '(0 2 3))
(test-equal?
 "🇦': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦'")
 '(0 1 2))
(test-equal?
 "🇦̈': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦̈'")
 '(0 2 3))
(test-equal?
 "🇦⌚: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "🇦⌚")
 '(0 1 2))
(test-equal?
 "🇦̈⌚: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "🇦̈⌚")
 '(0 2 3))
(test-equal?
 "🇦 : ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "🇦 ")
 '(0 1 2))
(test-equal?
 "🇦̈ : ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "🇦̈ ")
 '(0 2 3))
(test-equal?
 "🇦\u00AD: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦\u00AD")
 '(0 2))
(test-equal?
 "🇦̈\u00AD: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈\u00AD")
 '(0 3))
(test-equal?
 "🇦̀: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̀")
 '(0 2))
(test-equal?
 "🇦̈̀: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈̀")
 '(0 3))
(test-equal?
 "🇦‍: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦‍")
 '(0 2))
(test-equal?
 "🇦̈‍: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈‍")
 '(0 3))
(test-equal?
 "🇦a\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦a\u2060")
 '(0 1 3))
(test-equal?
 "🇦̈a\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈a\u2060")
 '(0 2 4))
(test-equal?
 "🇦a:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦a:")
 '(0 1 2 3))
(test-equal?
 "🇦̈a:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦̈a:")
 '(0 2 3 4))
(test-equal?
 "🇦a': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦a'")
 '(0 1 2 3))
(test-equal?
 "🇦̈a': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦̈a'")
 '(0 2 3 4))
(test-equal?
 "🇦a'\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦a'\u2060")
 '(0 1 2 4))
(test-equal?
 "🇦̈a'\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "🇦a,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦a,")
 '(0 1 2 3))
(test-equal?
 "🇦̈a,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦̈a,")
 '(0 2 3 4))
(test-equal?
 "🇦1:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦1:")
 '(0 1 2 3))
(test-equal?
 "🇦̈1:: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "🇦̈1:")
 '(0 2 3 4))
(test-equal?
 "🇦1': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦1'")
 '(0 1 2 3))
(test-equal?
 "🇦̈1': ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "🇦̈1'")
 '(0 2 3 4))
(test-equal?
 "🇦1,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦1,")
 '(0 1 2 3))
(test-equal?
 "🇦̈1,: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "🇦̈1,")
 '(0 2 3 4))
(test-equal?
 "🇦1.\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦1.\u2060")
 '(0 1 2 4))
(test-equal?
 "🇦̈1.\u2060: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "🇦̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "א\u0001: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "א\u0001")
 '(0 1 2))
(test-equal?
 "א̈\u0001: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "א̈\u0001")
 '(0 2 3))
(test-equal?
 "א\r: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "א\r")
 '(0 1 2))
(test-equal?
 "א̈\r: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "א̈\r")
 '(0 2 3))
(test-equal?
 "א\n: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "א\n")
 '(0 1 2))
(test-equal?
 "א̈\n: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "א̈\n")
 '(0 2 3))
(test-equal?
 "א\v: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "א\v")
 '(0 1 2))
(test-equal?
 "א̈\v: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "א̈\v")
 '(0 2 3))
(test-equal?
 "א〱: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "א〱")
 '(0 1 2))
(test-equal?
 "א̈〱: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "א̈〱")
 '(0 2 3))
(test-equal?
 "אA: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "אA")
 '(0 2))
(test-equal?
 "א̈A: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "א̈A")
 '(0 3))
(test-equal?
 "א:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "א:")
 '(0 1 2))
(test-equal?
 "א̈:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "א̈:")
 '(0 2 3))
(test-equal?
 "א,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "א,")
 '(0 1 2))
(test-equal?
 "א̈,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "א̈,")
 '(0 2 3))
(test-equal?
 "א.: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "א.")
 '(0 1 2))
(test-equal?
 "א̈.: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "א̈.")
 '(0 2 3))
(test-equal?
 "א0: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "א0")
 '(0 2))
(test-equal?
 "א̈0: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "א̈0")
 '(0 3))
(test-equal?
 "א_: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "א_")
 '(0 2))
(test-equal?
 "א̈_: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "א̈_")
 '(0 3))
(test-equal?
 "א🇦: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "א🇦")
 '(0 1 2))
(test-equal?
 "א̈🇦: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "א̈🇦")
 '(0 2 3))
(test-equal?
 "אא: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "אא")
 '(0 2))
(test-equal?
 "א̈א: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "א̈א")
 '(0 3))
(test-equal?
 "א\": ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "א\"")
 '(0 1 2))
(test-equal?
 "א̈\": ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "א̈\"")
 '(0 2 3))
(test-equal?
 "א': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [7.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א'")
 '(0 2))
(test-equal?
 "א̈': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א̈'")
 '(0 3))
(test-equal?
 "א⌚: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "א⌚")
 '(0 1 2))
(test-equal?
 "א̈⌚: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "א̈⌚")
 '(0 2 3))
(test-equal?
 "א : ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "א ")
 '(0 1 2))
(test-equal?
 "א̈ : ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "א̈ ")
 '(0 2 3))
(test-equal?
 "א\u00AD: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א\u00AD")
 '(0 2))
(test-equal?
 "א̈\u00AD: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈\u00AD")
 '(0 3))
(test-equal?
 "א̀: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "א̀")
 '(0 2))
(test-equal?
 "א̈̀: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈̀")
 '(0 3))
(test-equal?
 "א‍: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "א‍")
 '(0 2))
(test-equal?
 "א̈‍: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈‍")
 '(0 3))
(test-equal?
 "אa\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "אa\u2060")
 '(0 3))
(test-equal?
 "א̈a\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈a\u2060")
 '(0 4))
(test-equal?
 "אa:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "אa:")
 '(0 2 3))
(test-equal?
 "א̈a:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "א̈a:")
 '(0 3 4))
(test-equal?
 "אa': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "אa'")
 '(0 2 3))
(test-equal?
 "א̈a': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א̈a'")
 '(0 3 4))
(test-equal?
 "אa'\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "אa'\u2060")
 '(0 2 4))
(test-equal?
 "א̈a'\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈a'\u2060")
 '(0 3 5))
(test-equal?
 "אa,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "אa,")
 '(0 2 3))
(test-equal?
 "א̈a,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "א̈a,")
 '(0 3 4))
(test-equal?
 "א1:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "א1:")
 '(0 2 3))
(test-equal?
 "א̈1:: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "א̈1:")
 '(0 3 4))
(test-equal?
 "א1': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א1'")
 '(0 2 3))
(test-equal?
 "א̈1': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א̈1'")
 '(0 3 4))
(test-equal?
 "א1,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "א1,")
 '(0 2 3))
(test-equal?
 "א̈1,: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "א̈1,")
 '(0 3 4))
(test-equal?
 "א1.\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א1.\u2060")
 '(0 2 4))
(test-equal?
 "א̈1.\u2060: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "א̈1.\u2060")
 '(0 3 5))
(test-equal?
 "\"\u0001: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\"\u0001")
 '(0 1 2))
(test-equal?
 "\"̈\u0001: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\"̈\u0001")
 '(0 2 3))
(test-equal?
 "\"\r: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\"\r")
 '(0 1 2))
(test-equal?
 "\"̈\r: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\"̈\r")
 '(0 2 3))
(test-equal?
 "\"\n: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\"\n")
 '(0 1 2))
(test-equal?
 "\"̈\n: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\"̈\n")
 '(0 2 3))
(test-equal?
 "\"\v: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\"\v")
 '(0 1 2))
(test-equal?
 "\"̈\v: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\"̈\v")
 '(0 2 3))
(test-equal?
 "\"〱: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\"〱")
 '(0 1 2))
(test-equal?
 "\"̈〱: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\"̈〱")
 '(0 2 3))
(test-equal?
 "\"A: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\"A")
 '(0 1 2))
(test-equal?
 "\"̈A: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\"̈A")
 '(0 2 3))
(test-equal?
 "\":: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\":")
 '(0 1 2))
(test-equal?
 "\"̈:: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\"̈:")
 '(0 2 3))
(test-equal?
 "\",: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\",")
 '(0 1 2))
(test-equal?
 "\"̈,: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\"̈,")
 '(0 2 3))
(test-equal?
 "\".: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\".")
 '(0 1 2))
(test-equal?
 "\"̈.: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\"̈.")
 '(0 2 3))
(test-equal?
 "\"0: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\"0")
 '(0 1 2))
(test-equal?
 "\"̈0: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\"̈0")
 '(0 2 3))
(test-equal?
 "\"_: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\"_")
 '(0 1 2))
(test-equal?
 "\"̈_: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\"̈_")
 '(0 2 3))
(test-equal?
 "\"🇦: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\"🇦")
 '(0 1 2))
(test-equal?
 "\"̈🇦: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\"̈🇦")
 '(0 2 3))
(test-equal?
 "\"א: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\"א")
 '(0 1 2))
(test-equal?
 "\"̈א: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\"̈א")
 '(0 2 3))
(test-equal?
 "\"\": ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"\"")
 '(0 1 2))
(test-equal?
 "\"̈\": ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"̈\"")
 '(0 2 3))
(test-equal?
 "\"': ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"'")
 '(0 1 2))
(test-equal?
 "\"̈': ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"̈'")
 '(0 2 3))
(test-equal?
 "\"⌚: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\"⌚")
 '(0 1 2))
(test-equal?
 "\"̈⌚: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\"̈⌚")
 '(0 2 3))
(test-equal?
 "\" : ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\" ")
 '(0 1 2))
(test-equal?
 "\"̈ : ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\"̈ ")
 '(0 2 3))
(test-equal?
 "\"\u00AD: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"\u00AD")
 '(0 2))
(test-equal?
 "\"̈\u00AD: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈\u00AD")
 '(0 3))
(test-equal?
 "\"̀: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̀")
 '(0 2))
(test-equal?
 "\"̈̀: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈̀")
 '(0 3))
(test-equal?
 "\"\u200D: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\"\u200D")
 '(0 2))
(test-equal?
 "\"̈‍: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈‍")
 '(0 3))
(test-equal?
 "\"a\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"a\u2060")
 '(0 1 3))
(test-equal?
 "\"̈a\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈a\u2060")
 '(0 2 4))
(test-equal?
 "\"a:: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\"a:")
 '(0 1 2 3))
(test-equal?
 "\"̈a:: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\"̈a:")
 '(0 2 3 4))
(test-equal?
 "\"a': ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"a'")
 '(0 1 2 3))
(test-equal?
 "\"̈a': ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"̈a'")
 '(0 2 3 4))
(test-equal?
 "\"a'\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"a'\u2060")
 '(0 1 2 4))
(test-equal?
 "\"̈a'\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "\"a,: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\"a,")
 '(0 1 2 3))
(test-equal?
 "\"̈a,: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\"̈a,")
 '(0 2 3 4))
(test-equal?
 "\"1:: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\"1:")
 '(0 1 2 3))
(test-equal?
 "\"̈1:: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\"̈1:")
 '(0 2 3 4))
(test-equal?
 "\"1': ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"1'")
 '(0 1 2 3))
(test-equal?
 "\"̈1': ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\"̈1'")
 '(0 2 3 4))
(test-equal?
 "\"1,: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\"1,")
 '(0 1 2 3))
(test-equal?
 "\"̈1,: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\"̈1,")
 '(0 2 3 4))
(test-equal?
 "\"1.\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\"̈1.\u2060: ÷ [0.2] QUOTATION MARK (Double_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\"̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "'\u0001: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "'\u0001")
 '(0 1 2))
(test-equal?
 "'̈\u0001: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "'̈\u0001")
 '(0 2 3))
(test-equal?
 "'\r: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "'\r")
 '(0 1 2))
(test-equal?
 "'̈\r: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "'̈\r")
 '(0 2 3))
(test-equal?
 "'\n: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "'\n")
 '(0 1 2))
(test-equal?
 "'̈\n: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "'̈\n")
 '(0 2 3))
(test-equal?
 "'\v: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "'\v")
 '(0 1 2))
(test-equal?
 "'̈\v: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "'̈\v")
 '(0 2 3))
(test-equal?
 "'〱: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "'〱")
 '(0 1 2))
(test-equal?
 "'̈〱: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "'̈〱")
 '(0 2 3))
(test-equal?
 "'A: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "'A")
 '(0 1 2))
(test-equal?
 "'̈A: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "'̈A")
 '(0 2 3))
(test-equal?
 "':: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "':")
 '(0 1 2))
(test-equal?
 "'̈:: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "'̈:")
 '(0 2 3))
(test-equal?
 "',: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "',")
 '(0 1 2))
(test-equal?
 "'̈,: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "'̈,")
 '(0 2 3))
(test-equal?
 "'.: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "'.")
 '(0 1 2))
(test-equal?
 "'̈.: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "'̈.")
 '(0 2 3))
(test-equal?
 "'0: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "'0")
 '(0 1 2))
(test-equal?
 "'̈0: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "'̈0")
 '(0 2 3))
(test-equal?
 "'_: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "'_")
 '(0 1 2))
(test-equal?
 "'̈_: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "'̈_")
 '(0 2 3))
(test-equal?
 "'🇦: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "'🇦")
 '(0 1 2))
(test-equal?
 "'̈🇦: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "'̈🇦")
 '(0 2 3))
(test-equal?
 "'א: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "'א")
 '(0 1 2))
(test-equal?
 "'̈א: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "'̈א")
 '(0 2 3))
(test-equal?
 "'\": ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "'\"")
 '(0 1 2))
(test-equal?
 "'̈\": ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "'̈\"")
 '(0 2 3))
(test-equal?
 "'': ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "''")
 '(0 1 2))
(test-equal?
 "'̈': ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "'̈'")
 '(0 2 3))
(test-equal?
 "'⌚: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "'⌚")
 '(0 1 2))
(test-equal?
 "'̈⌚: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "'̈⌚")
 '(0 2 3))
(test-equal?
 "' : ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "' ")
 '(0 1 2))
(test-equal?
 "'̈ : ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "'̈ ")
 '(0 2 3))
(test-equal?
 "'\u00AD: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'\u00AD")
 '(0 2))
(test-equal?
 "'̈\u00AD: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈\u00AD")
 '(0 3))
(test-equal?
 "'̀: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "'̀")
 '(0 2))
(test-equal?
 "'̈̀: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈̀")
 '(0 3))
(test-equal?
 "'‍: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "'‍")
 '(0 2))
(test-equal?
 "'̈‍: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈‍")
 '(0 3))
(test-equal?
 "'a\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'a\u2060")
 '(0 1 3))
(test-equal?
 "'̈a\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈a\u2060")
 '(0 2 4))
(test-equal?
 "'a:: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "'a:")
 '(0 1 2 3))
(test-equal?
 "'̈a:: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "'̈a:")
 '(0 2 3 4))
(test-equal?
 "'a': ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "'a'")
 '(0 1 2 3))
(test-equal?
 "'̈a': ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "'̈a'")
 '(0 2 3 4))
(test-equal?
 "'a'\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'a'\u2060")
 '(0 1 2 4))
(test-equal?
 "'̈a'\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "'a,: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "'a,")
 '(0 1 2 3))
(test-equal?
 "'̈a,: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "'̈a,")
 '(0 2 3 4))
(test-equal?
 "'1:: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "'1:")
 '(0 1 2 3))
(test-equal?
 "'̈1:: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "'̈1:")
 '(0 2 3 4))
(test-equal?
 "'1': ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "'1'")
 '(0 1 2 3))
(test-equal?
 "'̈1': ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "'̈1'")
 '(0 2 3 4))
(test-equal?
 "'1,: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "'1,")
 '(0 1 2 3))
(test-equal?
 "'̈1,: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "'̈1,")
 '(0 2 3 4))
(test-equal?
 "'1.\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'1.\u2060")
 '(0 1 2 4))
(test-equal?
 "'̈1.\u2060: ÷ [0.2] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "'̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "⌚\u0001: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "⌚\u0001")
 '(0 1 2))
(test-equal?
 "⌚̈\u0001: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\u0001")
 '(0 2 3))
(test-equal?
 "⌚\r: ÷ [0.2] WATCH (ExtPict) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "⌚\r")
 '(0 1 2))
(test-equal?
 "⌚̈\r: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\r")
 '(0 2 3))
(test-equal?
 "⌚\n: ÷ [0.2] WATCH (ExtPict) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "⌚\n")
 '(0 1 2))
(test-equal?
 "⌚̈\n: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\n")
 '(0 2 3))
(test-equal?
 "⌚\v: ÷ [0.2] WATCH (ExtPict) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "⌚\v")
 '(0 1 2))
(test-equal?
 "⌚̈\v: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\v")
 '(0 2 3))
(test-equal?
 "⌚〱: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "⌚〱")
 '(0 1 2))
(test-equal?
 "⌚̈〱: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "⌚̈〱")
 '(0 2 3))
(test-equal?
 "⌚A: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "⌚A")
 '(0 1 2))
(test-equal?
 "⌚̈A: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "⌚̈A")
 '(0 2 3))
(test-equal?
 "⌚:: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚:")
 '(0 1 2))
(test-equal?
 "⌚̈:: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚̈:")
 '(0 2 3))
(test-equal?
 "⌚,: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚,")
 '(0 1 2))
(test-equal?
 "⌚̈,: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚̈,")
 '(0 2 3))
(test-equal?
 "⌚.: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "⌚.")
 '(0 1 2))
(test-equal?
 "⌚̈.: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "⌚̈.")
 '(0 2 3))
(test-equal?
 "⌚0: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "⌚0")
 '(0 1 2))
(test-equal?
 "⌚̈0: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "⌚̈0")
 '(0 2 3))
(test-equal?
 "⌚_: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "⌚_")
 '(0 1 2))
(test-equal?
 "⌚̈_: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "⌚̈_")
 '(0 2 3))
(test-equal?
 "⌚🇦: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "⌚🇦")
 '(0 1 2))
(test-equal?
 "⌚̈🇦: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "⌚̈🇦")
 '(0 2 3))
(test-equal?
 "⌚א: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "⌚א")
 '(0 1 2))
(test-equal?
 "⌚̈א: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "⌚̈א")
 '(0 2 3))
(test-equal?
 "⌚\": ÷ [0.2] WATCH (ExtPict) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚\"")
 '(0 1 2))
(test-equal?
 "⌚̈\": ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\"")
 '(0 2 3))
(test-equal?
 "⌚': ÷ [0.2] WATCH (ExtPict) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚'")
 '(0 1 2))
(test-equal?
 "⌚̈': ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚̈'")
 '(0 2 3))
(test-equal?
 "⌚⌚: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "⌚⌚")
 '(0 1 2))
(test-equal?
 "⌚̈⌚: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "⌚̈⌚")
 '(0 2 3))
(test-equal?
 "⌚ : ÷ [0.2] WATCH (ExtPict) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "⌚ ")
 '(0 1 2))
(test-equal?
 "⌚̈ : ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "⌚̈ ")
 '(0 2 3))
(test-equal?
 "⌚\u00AD: ÷ [0.2] WATCH (ExtPict) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚\u00AD")
 '(0 2))
(test-equal?
 "⌚̈\u00AD: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈\u00AD")
 '(0 3))
(test-equal?
 "⌚̀: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̀")
 '(0 2))
(test-equal?
 "⌚̈̀: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈̀")
 '(0 3))
(test-equal?
 "⌚‍: ÷ [0.2] WATCH (ExtPict) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚‍")
 '(0 2))
(test-equal?
 "⌚̈‍: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈‍")
 '(0 3))
(test-equal?
 "⌚a\u2060: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚a\u2060")
 '(0 1 3))
(test-equal?
 "⌚̈a\u2060: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈a\u2060")
 '(0 2 4))
(test-equal?
 "⌚a:: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚a:")
 '(0 1 2 3))
(test-equal?
 "⌚̈a:: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚̈a:")
 '(0 2 3 4))
(test-equal?
 "⌚a': ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚a'")
 '(0 1 2 3))
(test-equal?
 "⌚̈a': ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚̈a'")
 '(0 2 3 4))
(test-equal?
 "⌚a'\u2060: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚a'\u2060")
 '(0 1 2 4))
(test-equal?
 "⌚̈a'\u2060: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "⌚a,: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚a,")
 '(0 1 2 3))
(test-equal?
 "⌚̈a,: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚̈a,")
 '(0 2 3 4))
(test-equal?
 "⌚1:: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚1:")
 '(0 1 2 3))
(test-equal?
 "⌚̈1:: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "⌚̈1:")
 '(0 2 3 4))
(test-equal?
 "⌚1': ÷ [0.2] WATCH (ExtPict) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚1'")
 '(0 1 2 3))
(test-equal?
 "⌚̈1': ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "⌚̈1'")
 '(0 2 3 4))
(test-equal?
 "⌚1,: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚1,")
 '(0 1 2 3))
(test-equal?
 "⌚̈1,: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "⌚̈1,")
 '(0 2 3 4))
(test-equal?
 "⌚1.\u2060: ÷ [0.2] WATCH (ExtPict) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚1.\u2060")
 '(0 1 2 4))
(test-equal?
 "⌚̈1.\u2060: ÷ [0.2] WATCH (ExtPict) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "⌚̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 " \u0001: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes " \u0001")
 '(0 1 2))
(test-equal?
 " ̈\u0001: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes " ̈\u0001")
 '(0 2 3))
(test-equal?
 " \r: ÷ [0.2] SPACE (WSegSpace) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes " \r")
 '(0 1 2))
(test-equal?
 " ̈\r: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes " ̈\r")
 '(0 2 3))
(test-equal?
 " \n: ÷ [0.2] SPACE (WSegSpace) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes " \n")
 '(0 1 2))
(test-equal?
 " ̈\n: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes " ̈\n")
 '(0 2 3))
(test-equal?
 " \v: ÷ [0.2] SPACE (WSegSpace) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes " \v")
 '(0 1 2))
(test-equal?
 " ̈\v: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes " ̈\v")
 '(0 2 3))
(test-equal?
 " 〱: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes " 〱")
 '(0 1 2))
(test-equal?
 " ̈〱: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes " ̈〱")
 '(0 2 3))
(test-equal?
 " A: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes " A")
 '(0 1 2))
(test-equal?
 " ̈A: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes " ̈A")
 '(0 2 3))
(test-equal?
 " :: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " :")
 '(0 1 2))
(test-equal?
 " ̈:: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " ̈:")
 '(0 2 3))
(test-equal?
 " ,: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " ,")
 '(0 1 2))
(test-equal?
 " ̈,: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " ̈,")
 '(0 2 3))
(test-equal?
 " .: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes " .")
 '(0 1 2))
(test-equal?
 " ̈.: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes " ̈.")
 '(0 2 3))
(test-equal?
 " 0: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes " 0")
 '(0 1 2))
(test-equal?
 " ̈0: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes " ̈0")
 '(0 2 3))
(test-equal?
 " _: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes " _")
 '(0 1 2))
(test-equal?
 " ̈_: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes " ̈_")
 '(0 2 3))
(test-equal?
 " 🇦: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes " 🇦")
 '(0 1 2))
(test-equal?
 " ̈🇦: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes " ̈🇦")
 '(0 2 3))
(test-equal?
 " א: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes " א")
 '(0 1 2))
(test-equal?
 " ̈א: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes " ̈א")
 '(0 2 3))
(test-equal?
 " \": ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes " \"")
 '(0 1 2))
(test-equal?
 " ̈\": ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes " ̈\"")
 '(0 2 3))
(test-equal?
 " ': ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " '")
 '(0 1 2))
(test-equal?
 " ̈': ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " ̈'")
 '(0 2 3))
(test-equal?
 " ⌚: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes " ⌚")
 '(0 1 2))
(test-equal?
 " ̈⌚: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes " ̈⌚")
 '(0 2 3))
(test-equal?
 "  : ÷ [0.2] SPACE (WSegSpace) × [3.4] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "  ")
 '(0 2))
(test-equal?
 " ̈ : ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes " ̈ ")
 '(0 2 3))
(test-equal?
 " \u00AD: ÷ [0.2] SPACE (WSegSpace) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " \u00AD")
 '(0 2))
(test-equal?
 " ̈\u00AD: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈\u00AD")
 '(0 3))
(test-equal?
 " ̀: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes " ̀")
 '(0 2))
(test-equal?
 " ̈̀: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈̀")
 '(0 3))
(test-equal?
 " \u200D: ÷ [0.2] SPACE (WSegSpace) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes " \u200D")
 '(0 2))
(test-equal?
 " ̈‍: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈‍")
 '(0 3))
(test-equal?
 " a\u2060: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " a\u2060")
 '(0 1 3))
(test-equal?
 " ̈a\u2060: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈a\u2060")
 '(0 2 4))
(test-equal?
 " a:: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " a:")
 '(0 1 2 3))
(test-equal?
 " ̈a:: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " ̈a:")
 '(0 2 3 4))
(test-equal?
 " a': ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " a'")
 '(0 1 2 3))
(test-equal?
 " ̈a': ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " ̈a'")
 '(0 2 3 4))
(test-equal?
 " a'\u2060: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " a'\u2060")
 '(0 1 2 4))
(test-equal?
 " ̈a'\u2060: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 " a,: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " a,")
 '(0 1 2 3))
(test-equal?
 " ̈a,: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " ̈a,")
 '(0 2 3 4))
(test-equal?
 " 1:: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " 1:")
 '(0 1 2 3))
(test-equal?
 " ̈1:: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes " ̈1:")
 '(0 2 3 4))
(test-equal?
 " 1': ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " 1'")
 '(0 1 2 3))
(test-equal?
 " ̈1': ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes " ̈1'")
 '(0 2 3 4))
(test-equal?
 " 1,: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " 1,")
 '(0 1 2 3))
(test-equal?
 " ̈1,: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes " ̈1,")
 '(0 2 3 4))
(test-equal?
 " 1.\u2060: ÷ [0.2] SPACE (WSegSpace) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " 1.\u2060")
 '(0 1 2 4))
(test-equal?
 " ̈1.\u2060: ÷ [0.2] SPACE (WSegSpace) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes " ̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "\u00AD\u0001: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\u0001")
 '(0 1 2))
(test-equal?
 "\u00AD̈\u0001: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\u0001")
 '(0 2 3))
(test-equal?
 "\u00AD\r: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\r")
 '(0 1 2))
(test-equal?
 "\u00AD̈\r: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\r")
 '(0 2 3))
(test-equal?
 "\u00AD\n: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\n")
 '(0 1 2))
(test-equal?
 "\u00AD̈\n: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\n")
 '(0 2 3))
(test-equal?
 "\u00AD\v: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\v")
 '(0 1 2))
(test-equal?
 "\u00AD̈\v: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\v")
 '(0 2 3))
(test-equal?
 "\u00AD〱: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u00AD〱")
 '(0 1 2))
(test-equal?
 "\u00AD̈〱: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈〱")
 '(0 2 3))
(test-equal?
 "\u00ADA: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u00ADA")
 '(0 1 2))
(test-equal?
 "\u00AD̈A: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈A")
 '(0 2 3))
(test-equal?
 "\u00AD:: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD:")
 '(0 1 2))
(test-equal?
 "\u00AD̈:: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈:")
 '(0 2 3))
(test-equal?
 "\u00AD,: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00AD,")
 '(0 1 2))
(test-equal?
 "\u00AD̈,: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈,")
 '(0 2 3))
(test-equal?
 "\u00AD.: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u00AD.")
 '(0 1 2))
(test-equal?
 "\u00AD̈.: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈.")
 '(0 2 3))
(test-equal?
 "\u00AD0: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u00AD0")
 '(0 1 2))
(test-equal?
 "\u00AD̈0: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈0")
 '(0 2 3))
(test-equal?
 "\u00AD_: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u00AD_")
 '(0 1 2))
(test-equal?
 "\u00AD̈_: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈_")
 '(0 2 3))
(test-equal?
 "\u00AD🇦: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u00AD🇦")
 '(0 1 2))
(test-equal?
 "\u00AD̈🇦: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈🇦")
 '(0 2 3))
(test-equal?
 "\u00ADא: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u00ADא")
 '(0 1 2))
(test-equal?
 "\u00AD̈א: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈א")
 '(0 2 3))
(test-equal?
 "\u00AD\": ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\"")
 '(0 1 2))
(test-equal?
 "\u00AD̈\": ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\"")
 '(0 2 3))
(test-equal?
 "\u00AD': ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD'")
 '(0 1 2))
(test-equal?
 "\u00AD̈': ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈'")
 '(0 2 3))
(test-equal?
 "\u00AD⌚: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u00AD⌚")
 '(0 1 2))
(test-equal?
 "\u00AD̈⌚: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈⌚")
 '(0 2 3))
(test-equal?
 "\u00AD : ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u00AD ")
 '(0 1 2))
(test-equal?
 "\u00AD̈ : ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈ ")
 '(0 2 3))
(test-equal?
 "\u00AD\u00AD: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\u00AD")
 '(0 2))
(test-equal?
 "\u00AD̈\u00AD: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈\u00AD")
 '(0 3))
(test-equal?
 "\u00AD̀: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̀")
 '(0 2))
(test-equal?
 "\u00AD̈̀: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈̀")
 '(0 3))
(test-equal?
 "\u00AD\u200D: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD\u200D")
 '(0 2))
(test-equal?
 "\u00AD̈‍: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈‍")
 '(0 3))
(test-equal?
 "\u00ADa\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00ADa\u2060")
 '(0 1 3))
(test-equal?
 "\u00AD̈a\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈a\u2060")
 '(0 2 4))
(test-equal?
 "\u00ADa:: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00ADa:")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈a:: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈a:")
 '(0 2 3 4))
(test-equal?
 "\u00ADa': ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00ADa'")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈a': ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈a'")
 '(0 2 3 4))
(test-equal?
 "\u00ADa'\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00ADa'\u2060")
 '(0 1 2 4))
(test-equal?
 "\u00AD̈a'\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "\u00ADa,: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00ADa,")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈a,: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈a,")
 '(0 2 3 4))
(test-equal?
 "\u00AD1:: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD1:")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈1:: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈1:")
 '(0 2 3 4))
(test-equal?
 "\u00AD1': ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD1'")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈1': ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈1'")
 '(0 2 3 4))
(test-equal?
 "\u00AD1,: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00AD1,")
 '(0 1 2 3))
(test-equal?
 "\u00AD̈1,: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈1,")
 '(0 2 3 4))
(test-equal?
 "\u00AD1.\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\u00AD̈1.\u2060: ÷ [0.2] SOFT HYPHEN (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u00AD̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "̀\u0001: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "̀\u0001")
 '(0 1 2))
(test-equal?
 "̀̈\u0001: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "̀̈\u0001")
 '(0 2 3))
(test-equal?
 "̀\r: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "̀\r")
 '(0 1 2))
(test-equal?
 "̀̈\r: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "̀̈\r")
 '(0 2 3))
(test-equal?
 "̀\n: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "̀\n")
 '(0 1 2))
(test-equal?
 "̀̈\n: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "̀̈\n")
 '(0 2 3))
(test-equal?
 "̀\v: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "̀\v")
 '(0 1 2))
(test-equal?
 "̀̈\v: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "̀̈\v")
 '(0 2 3))
(test-equal?
 "̀〱: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "̀〱")
 '(0 1 2))
(test-equal?
 "̀̈〱: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "̀̈〱")
 '(0 2 3))
(test-equal?
 "̀A: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "̀A")
 '(0 1 2))
(test-equal?
 "̀̈A: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "̀̈A")
 '(0 2 3))
(test-equal?
 "̀:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀:")
 '(0 1 2))
(test-equal?
 "̀̈:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀̈:")
 '(0 2 3))
(test-equal?
 "̀,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀,")
 '(0 1 2))
(test-equal?
 "̀̈,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀̈,")
 '(0 2 3))
(test-equal?
 "̀.: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "̀.")
 '(0 1 2))
(test-equal?
 "̀̈.: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "̀̈.")
 '(0 2 3))
(test-equal?
 "̀0: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "̀0")
 '(0 1 2))
(test-equal?
 "̀̈0: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "̀̈0")
 '(0 2 3))
(test-equal?
 "̀_: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "̀_")
 '(0 1 2))
(test-equal?
 "̀̈_: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "̀̈_")
 '(0 2 3))
(test-equal?
 "̀🇦: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "̀🇦")
 '(0 1 2))
(test-equal?
 "̀̈🇦: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "̀̈🇦")
 '(0 2 3))
(test-equal?
 "̀א: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "̀א")
 '(0 1 2))
(test-equal?
 "̀̈א: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "̀̈א")
 '(0 2 3))
(test-equal?
 "̀\": ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀\"")
 '(0 1 2))
(test-equal?
 "̀̈\": ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀̈\"")
 '(0 2 3))
(test-equal?
 "̀': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀'")
 '(0 1 2))
(test-equal?
 "̀̈': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀̈'")
 '(0 2 3))
(test-equal?
 "̀⌚: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "̀⌚")
 '(0 1 2))
(test-equal?
 "̀̈⌚: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "̀̈⌚")
 '(0 2 3))
(test-equal?
 "̀ : ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "̀ ")
 '(0 1 2))
(test-equal?
 "̀̈ : ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "̀̈ ")
 '(0 2 3))
(test-equal?
 "̀\u00AD: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀\u00AD")
 '(0 2))
(test-equal?
 "̀̈\u00AD: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈\u00AD")
 '(0 3))
(test-equal?
 "̀̀: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̀")
 '(0 2))
(test-equal?
 "̀̈̀: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈̀")
 '(0 3))
(test-equal?
 "̀‍: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "̀‍")
 '(0 2))
(test-equal?
 "̀̈‍: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈‍")
 '(0 3))
(test-equal?
 "̀a\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀a\u2060")
 '(0 1 3))
(test-equal?
 "̀̈a\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈a\u2060")
 '(0 2 4))
(test-equal?
 "̀a:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀a:")
 '(0 1 2 3))
(test-equal?
 "̀̈a:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀̈a:")
 '(0 2 3 4))
(test-equal?
 "̀a': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀a'")
 '(0 1 2 3))
(test-equal?
 "̀̈a': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀̈a'")
 '(0 2 3 4))
(test-equal?
 "̀a'\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀a'\u2060")
 '(0 1 2 4))
(test-equal?
 "̀̈a'\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "̀a,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀a,")
 '(0 1 2 3))
(test-equal?
 "̀̈a,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀̈a,")
 '(0 2 3 4))
(test-equal?
 "̀1:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀1:")
 '(0 1 2 3))
(test-equal?
 "̀̈1:: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "̀̈1:")
 '(0 2 3 4))
(test-equal?
 "̀1': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀1'")
 '(0 1 2 3))
(test-equal?
 "̀̈1': ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "̀̈1'")
 '(0 2 3 4))
(test-equal?
 "̀1,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀1,")
 '(0 1 2 3))
(test-equal?
 "̀̈1,: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "̀̈1,")
 '(0 2 3 4))
(test-equal?
 "̀1.\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀1.\u2060")
 '(0 1 2 4))
(test-equal?
 "̀̈1.\u2060: ÷ [0.2] COMBINING GRAVE ACCENT (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "̀̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "\u200D\u0001: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u200D\u0001")
 '(0 1 2))
(test-equal?
 "\u200D̈\u0001: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\u0001")
 '(0 2 3))
(test-equal?
 "\u200D\r: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u200D\r")
 '(0 1 2))
(test-equal?
 "\u200D̈\r: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\r")
 '(0 2 3))
(test-equal?
 "\u200D\n: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u200D\n")
 '(0 1 2))
(test-equal?
 "\u200D̈\n: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\n")
 '(0 2 3))
(test-equal?
 "\u200D\v: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u200D\v")
 '(0 1 2))
(test-equal?
 "\u200D̈\v: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\v")
 '(0 2 3))
(test-equal?
 "\u200D〱: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u200D〱")
 '(0 1 2))
(test-equal?
 "\u200D̈〱: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈〱")
 '(0 2 3))
(test-equal?
 "\u200DA: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u200DA")
 '(0 1 2))
(test-equal?
 "\u200D̈A: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈A")
 '(0 2 3))
(test-equal?
 "\u200D:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D:")
 '(0 1 2))
(test-equal?
 "\u200D̈:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈:")
 '(0 2 3))
(test-equal?
 "\u200D,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200D,")
 '(0 1 2))
(test-equal?
 "\u200D̈,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈,")
 '(0 2 3))
(test-equal?
 "\u200D.: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u200D.")
 '(0 1 2))
(test-equal?
 "\u200D̈.: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈.")
 '(0 2 3))
(test-equal?
 "\u200D0: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u200D0")
 '(0 1 2))
(test-equal?
 "\u200D̈0: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈0")
 '(0 2 3))
(test-equal?
 "\u200D_: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u200D_")
 '(0 1 2))
(test-equal?
 "\u200D̈_: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈_")
 '(0 2 3))
(test-equal?
 "\u200D🇦: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u200D🇦")
 '(0 1 2))
(test-equal?
 "\u200D̈🇦: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈🇦")
 '(0 2 3))
(test-equal?
 "\u200Dא: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u200Dא")
 '(0 1 2))
(test-equal?
 "\u200D̈א: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈א")
 '(0 2 3))
(test-equal?
 "\u200D\": ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D\"")
 '(0 1 2))
(test-equal?
 "\u200D̈\": ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\"")
 '(0 2 3))
(test-equal?
 "\u200D': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D'")
 '(0 1 2))
(test-equal?
 "\u200D̈': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈'")
 '(0 2 3))
(test-equal?
 "\u200D⌚: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u200D⌚")
 '(0 2))
(test-equal?
 "\u200D̈⌚: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈⌚")
 '(0 2 3))
(test-equal?
 "\u200D : ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u200D ")
 '(0 1 2))
(test-equal?
 "\u200D̈ : ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈ ")
 '(0 2 3))
(test-equal?
 "\u200D\u00AD: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D\u00AD")
 '(0 2))
(test-equal?
 "\u200D̈\u00AD: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈\u00AD")
 '(0 3))
(test-equal?
 "\u200D̀: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̀")
 '(0 2))
(test-equal?
 "\u200D̈̀: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈̀")
 '(0 3))
(test-equal?
 "\u200D\u200D: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D\u200D")
 '(0 2))
(test-equal?
 "\u200D̈‍: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈‍")
 '(0 3))
(test-equal?
 "\u200Da\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200Da\u2060")
 '(0 1 3))
(test-equal?
 "\u200D̈a\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈a\u2060")
 '(0 2 4))
(test-equal?
 "\u200Da:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200Da:")
 '(0 1 2 3))
(test-equal?
 "\u200D̈a:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈a:")
 '(0 2 3 4))
(test-equal?
 "\u200Da': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200Da'")
 '(0 1 2 3))
(test-equal?
 "\u200D̈a': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈a'")
 '(0 2 3 4))
(test-equal?
 "\u200Da'\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200Da'\u2060")
 '(0 1 2 4))
(test-equal?
 "\u200D̈a'\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈a'\u2060")
 '(0 2 3 5))
(test-equal?
 "\u200Da,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200Da,")
 '(0 1 2 3))
(test-equal?
 "\u200D̈a,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈a,")
 '(0 2 3 4))
(test-equal?
 "\u200D1:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D1:")
 '(0 1 2 3))
(test-equal?
 "\u200D̈1:: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈1:")
 '(0 2 3 4))
(test-equal?
 "\u200D1': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D1'")
 '(0 1 2 3))
(test-equal?
 "\u200D̈1': ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈1'")
 '(0 2 3 4))
(test-equal?
 "\u200D1,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200D1,")
 '(0 1 2 3))
(test-equal?
 "\u200D̈1,: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈1,")
 '(0 2 3 4))
(test-equal?
 "\u200D1.\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D1.\u2060")
 '(0 1 2 4))
(test-equal?
 "\u200D̈1.\u2060: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D̈1.\u2060")
 '(0 2 3 5))
(test-equal?
 "a\u2060\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\u0001")
 '(0 2 3))
(test-equal?
 "a\u2060̈\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\u0001")
 '(0 3 4))
(test-equal?
 "a\u2060\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\r")
 '(0 2 3))
(test-equal?
 "a\u2060̈\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\r")
 '(0 3 4))
(test-equal?
 "a\u2060\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\n")
 '(0 2 3))
(test-equal?
 "a\u2060̈\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\n")
 '(0 3 4))
(test-equal?
 "a\u2060\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\v")
 '(0 2 3))
(test-equal?
 "a\u2060̈\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\v")
 '(0 3 4))
(test-equal?
 "a\u2060〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a\u2060〱")
 '(0 2 3))
(test-equal?
 "a\u2060̈〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈〱")
 '(0 3 4))
(test-equal?
 "a\u2060A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060A")
 '(0 3))
(test-equal?
 "a\u2060̈A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈A")
 '(0 4))
(test-equal?
 "a\u2060:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060:")
 '(0 2 3))
(test-equal?
 "a\u2060̈:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈:")
 '(0 3 4))
(test-equal?
 "a\u2060,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u2060,")
 '(0 2 3))
(test-equal?
 "a\u2060̈,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈,")
 '(0 3 4))
(test-equal?
 "a\u2060.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a\u2060.")
 '(0 2 3))
(test-equal?
 "a\u2060̈.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈.")
 '(0 3 4))
(test-equal?
 "a\u20600: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a\u20600")
 '(0 3))
(test-equal?
 "a\u2060̈0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈0")
 '(0 4))
(test-equal?
 "a\u2060_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a\u2060_")
 '(0 3))
(test-equal?
 "a\u2060̈_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈_")
 '(0 4))
(test-equal?
 "a\u2060🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a\u2060🇦")
 '(0 2 3))
(test-equal?
 "a\u2060̈🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈🇦")
 '(0 3 4))
(test-equal?
 "a\u2060א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060א")
 '(0 3))
(test-equal?
 "a\u2060̈א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈א")
 '(0 4))
(test-equal?
 "a\u2060\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\"")
 '(0 2 3))
(test-equal?
 "a\u2060̈\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\"")
 '(0 3 4))
(test-equal?
 "a\u2060': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060'")
 '(0 2 3))
(test-equal?
 "a\u2060̈': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈'")
 '(0 3 4))
(test-equal?
 "a\u2060⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a\u2060⌚")
 '(0 2 3))
(test-equal?
 "a\u2060̈⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈⌚")
 '(0 3 4))
(test-equal?
 "a\u2060 : ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a\u2060 ")
 '(0 2 3))
(test-equal?
 "a\u2060̈ : ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈ ")
 '(0 3 4))
(test-equal?
 "a\u2060\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\u00AD")
 '(0 3))
(test-equal?
 "a\u2060̈\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈\u00AD")
 '(0 4))
(test-equal?
 "a\u2060̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̀")
 '(0 3))
(test-equal?
 "a\u2060̈̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈̀")
 '(0 4))
(test-equal?
 "a\u2060\u200D: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060\u200D")
 '(0 3))
(test-equal?
 "a\u2060̈‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈‍")
 '(0 4))
(test-equal?
 "a\u2060a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060a\u2060")
 '(0 4))
(test-equal?
 "a\u2060̈a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈a\u2060")
 '(0 5))
(test-equal?
 "a\u2060a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060a:")
 '(0 3 4))
(test-equal?
 "a\u2060̈a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈a:")
 '(0 4 5))
(test-equal?
 "a\u2060a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060a'")
 '(0 3 4))
(test-equal?
 "a\u2060̈a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈a'")
 '(0 4 5))
(test-equal?
 "a\u2060a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060a'\u2060")
 '(0 3 5))
(test-equal?
 "a\u2060̈a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈a'\u2060")
 '(0 4 6))
(test-equal?
 "a\u2060a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u2060a,")
 '(0 3 4))
(test-equal?
 "a\u2060̈a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈a,")
 '(0 4 5))
(test-equal?
 "a\u20601:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u20601:")
 '(0 3 4))
(test-equal?
 "a\u2060̈1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈1:")
 '(0 4 5))
(test-equal?
 "a\u20601': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u20601'")
 '(0 3 4))
(test-equal?
 "a\u2060̈1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈1'")
 '(0 4 5))
(test-equal?
 "a\u20601,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u20601,")
 '(0 3 4))
(test-equal?
 "a\u2060̈1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈1,")
 '(0 4 5))
(test-equal?
 "a\u20601.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u20601.\u2060")
 '(0 3 5))
(test-equal?
 "a\u2060̈1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [9.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a\u2060̈1.\u2060")
 '(0 4 6))
(test-equal?
 "a:\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a:\u0001")
 '(0 1 2 3))
(test-equal?
 "a:̈\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a:̈\u0001")
 '(0 1 3 4))
(test-equal?
 "a:\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a:\r")
 '(0 1 2 3))
(test-equal?
 "a:̈\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a:̈\r")
 '(0 1 3 4))
(test-equal?
 "a:\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a:\n")
 '(0 1 2 3))
(test-equal?
 "a:̈\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a:̈\n")
 '(0 1 3 4))
(test-equal?
 "a:\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a:\v")
 '(0 1 2 3))
(test-equal?
 "a:̈\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a:̈\v")
 '(0 1 3 4))
(test-equal?
 "a:〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a:〱")
 '(0 1 2 3))
(test-equal?
 "a:̈〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a:̈〱")
 '(0 1 3 4))
(test-equal?
 "a:A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a:A")
 '(0 3))
(test-equal?
 "a:̈A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a:̈A")
 '(0 4))
(test-equal?
 "a::: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a::")
 '(0 1 2 3))
(test-equal?
 "a:̈:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a:̈:")
 '(0 1 3 4))
(test-equal?
 "a:,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:,")
 '(0 1 2 3))
(test-equal?
 "a:̈,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:̈,")
 '(0 1 3 4))
(test-equal?
 "a:.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a:.")
 '(0 1 2 3))
(test-equal?
 "a:̈.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a:̈.")
 '(0 1 3 4))
(test-equal?
 "a:0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a:0")
 '(0 1 2 3))
(test-equal?
 "a:̈0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a:̈0")
 '(0 1 3 4))
(test-equal?
 "a:_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a:_")
 '(0 1 2 3))
(test-equal?
 "a:̈_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a:̈_")
 '(0 1 3 4))
(test-equal?
 "a:🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a:🇦")
 '(0 1 2 3))
(test-equal?
 "a:̈🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a:̈🇦")
 '(0 1 3 4))
(test-equal?
 "a:א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a:א")
 '(0 3))
(test-equal?
 "a:̈א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a:̈א")
 '(0 4))
(test-equal?
 "a:\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:\"")
 '(0 1 2 3))
(test-equal?
 "a:̈\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:̈\"")
 '(0 1 3 4))
(test-equal?
 "a:': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:'")
 '(0 1 2 3))
(test-equal?
 "a:̈': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:̈'")
 '(0 1 3 4))
(test-equal?
 "a:⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a:⌚")
 '(0 1 2 3))
(test-equal?
 "a:̈⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a:̈⌚")
 '(0 1 3 4))
(test-equal?
 "a: : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a: ")
 '(0 1 2 3))
(test-equal?
 "a:̈ : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a:̈ ")
 '(0 1 3 4))
(test-equal?
 "a:\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:\u00AD")
 '(0 1 3))
(test-equal?
 "a:̈\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈\u00AD")
 '(0 1 4))
(test-equal?
 "a:̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̀")
 '(0 1 3))
(test-equal?
 "a:̈̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈̀")
 '(0 1 4))
(test-equal?
 "a:‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a:‍")
 '(0 1 3))
(test-equal?
 "a:̈‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈‍")
 '(0 1 4))
(test-equal?
 "a:a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:a\u2060")
 '(0 4))
(test-equal?
 "a:̈a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈a\u2060")
 '(0 5))
(test-equal?
 "a:a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a:a:")
 '(0 3 4))
(test-equal?
 "a:̈a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a:̈a:")
 '(0 4 5))
(test-equal?
 "a:a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:a'")
 '(0 3 4))
(test-equal?
 "a:̈a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:̈a'")
 '(0 4 5))
(test-equal?
 "a:a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:a'\u2060")
 '(0 3 5))
(test-equal?
 "a:̈a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈a'\u2060")
 '(0 4 6))
(test-equal?
 "a:a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:a,")
 '(0 3 4))
(test-equal?
 "a:̈a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:̈a,")
 '(0 4 5))
(test-equal?
 "a:1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a:1:")
 '(0 1 2 3 4))
(test-equal?
 "a:̈1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a:̈1:")
 '(0 1 3 4 5))
(test-equal?
 "a:1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:1'")
 '(0 1 2 3 4))
(test-equal?
 "a:̈1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a:̈1'")
 '(0 1 3 4 5))
(test-equal?
 "a:1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:1,")
 '(0 1 2 3 4))
(test-equal?
 "a:̈1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a:̈1,")
 '(0 1 3 4 5))
(test-equal?
 "a:1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "a:̈1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a:̈1.\u2060")
 '(0 1 3 4 6))
(test-equal?
 "a'\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a'\u0001")
 '(0 1 2 3))
(test-equal?
 "a'̈\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a'̈\u0001")
 '(0 1 3 4))
(test-equal?
 "a'\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a'\r")
 '(0 1 2 3))
(test-equal?
 "a'̈\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a'̈\r")
 '(0 1 3 4))
(test-equal?
 "a'\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a'\n")
 '(0 1 2 3))
(test-equal?
 "a'̈\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a'̈\n")
 '(0 1 3 4))
(test-equal?
 "a'\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a'\v")
 '(0 1 2 3))
(test-equal?
 "a'̈\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a'̈\v")
 '(0 1 3 4))
(test-equal?
 "a'〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a'〱")
 '(0 1 2 3))
(test-equal?
 "a'̈〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a'̈〱")
 '(0 1 3 4))
(test-equal?
 "a'A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a'A")
 '(0 3))
(test-equal?
 "a'̈A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a'̈A")
 '(0 4))
(test-equal?
 "a':: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a':")
 '(0 1 2 3))
(test-equal?
 "a'̈:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'̈:")
 '(0 1 3 4))
(test-equal?
 "a',: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a',")
 '(0 1 2 3))
(test-equal?
 "a'̈,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'̈,")
 '(0 1 3 4))
(test-equal?
 "a'.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'.")
 '(0 1 2 3))
(test-equal?
 "a'̈.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'̈.")
 '(0 1 3 4))
(test-equal?
 "a'0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a'0")
 '(0 1 2 3))
(test-equal?
 "a'̈0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a'̈0")
 '(0 1 3 4))
(test-equal?
 "a'_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'_")
 '(0 1 2 3))
(test-equal?
 "a'̈_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'̈_")
 '(0 1 3 4))
(test-equal?
 "a'🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a'🇦")
 '(0 1 2 3))
(test-equal?
 "a'̈🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a'̈🇦")
 '(0 1 3 4))
(test-equal?
 "a'א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a'א")
 '(0 3))
(test-equal?
 "a'̈א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a'̈א")
 '(0 4))
(test-equal?
 "a'\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\"")
 '(0 1 2 3))
(test-equal?
 "a'̈\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'̈\"")
 '(0 1 3 4))
(test-equal?
 "a'': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a''")
 '(0 1 2 3))
(test-equal?
 "a'̈': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'̈'")
 '(0 1 3 4))
(test-equal?
 "a'⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a'⌚")
 '(0 1 2 3))
(test-equal?
 "a'̈⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a'̈⌚")
 '(0 1 3 4))
(test-equal?
 "a' : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a' ")
 '(0 1 2 3))
(test-equal?
 "a'̈ : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a'̈ ")
 '(0 1 3 4))
(test-equal?
 "a'\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u00AD")
 '(0 1 3))
(test-equal?
 "a'̈\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈\u00AD")
 '(0 1 4))
(test-equal?
 "a'̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̀")
 '(0 1 3))
(test-equal?
 "a'̈̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈̀")
 '(0 1 4))
(test-equal?
 "a'‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a'‍")
 '(0 1 3))
(test-equal?
 "a'̈‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈‍")
 '(0 1 4))
(test-equal?
 "a'a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'a\u2060")
 '(0 4))
(test-equal?
 "a'̈a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈a\u2060")
 '(0 5))
(test-equal?
 "a'a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'a:")
 '(0 3 4))
(test-equal?
 "a'̈a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'̈a:")
 '(0 4 5))
(test-equal?
 "a'a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'a'")
 '(0 3 4))
(test-equal?
 "a'̈a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'̈a'")
 '(0 4 5))
(test-equal?
 "a'a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'a'\u2060")
 '(0 3 5))
(test-equal?
 "a'̈a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈a'\u2060")
 '(0 4 6))
(test-equal?
 "a'a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'a,")
 '(0 3 4))
(test-equal?
 "a'̈a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'̈a,")
 '(0 4 5))
(test-equal?
 "a'1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'1:")
 '(0 1 2 3 4))
(test-equal?
 "a'̈1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'̈1:")
 '(0 1 3 4 5))
(test-equal?
 "a'1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'1'")
 '(0 1 2 3 4))
(test-equal?
 "a'̈1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'̈1'")
 '(0 1 3 4 5))
(test-equal?
 "a'1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'1,")
 '(0 1 2 3 4))
(test-equal?
 "a'̈1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'̈1,")
 '(0 1 3 4 5))
(test-equal?
 "a'1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "a'̈1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'̈1.\u2060")
 '(0 1 3 4 6))
(test-equal?
 "a'\u2060\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\u0001")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\u0001")
 '(0 1 4 5))
(test-equal?
 "a'\u2060\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\r")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\r")
 '(0 1 4 5))
(test-equal?
 "a'\u2060\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\n")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\n")
 '(0 1 4 5))
(test-equal?
 "a'\u2060\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\v")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\v")
 '(0 1 4 5))
(test-equal?
 "a'\u2060〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060〱")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈〱")
 '(0 1 4 5))
(test-equal?
 "a'\u2060A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060A")
 '(0 4))
(test-equal?
 "a'\u2060̈A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈A")
 '(0 5))
(test-equal?
 "a'\u2060:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060:")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈:")
 '(0 1 4 5))
(test-equal?
 "a'\u2060,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060,")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈,")
 '(0 1 4 5))
(test-equal?
 "a'\u2060.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060.")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈.")
 '(0 1 4 5))
(test-equal?
 "a'\u20600: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a'\u20600")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈0")
 '(0 1 4 5))
(test-equal?
 "a'\u2060_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060_")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈_")
 '(0 1 4 5))
(test-equal?
 "a'\u2060🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060🇦")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈🇦")
 '(0 1 4 5))
(test-equal?
 "a'\u2060א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060א")
 '(0 4))
(test-equal?
 "a'\u2060̈א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈א")
 '(0 5))
(test-equal?
 "a'\u2060\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\"")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\"")
 '(0 1 4 5))
(test-equal?
 "a'\u2060': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060'")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈'")
 '(0 1 4 5))
(test-equal?
 "a'\u2060⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060⌚")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈⌚")
 '(0 1 4 5))
(test-equal?
 "a'\u2060 : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060 ")
 '(0 1 3 4))
(test-equal?
 "a'\u2060̈ : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈ ")
 '(0 1 4 5))
(test-equal?
 "a'\u2060\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\u00AD")
 '(0 1 4))
(test-equal?
 "a'\u2060̈\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈\u00AD")
 '(0 1 5))
(test-equal?
 "a'\u2060̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̀")
 '(0 1 4))
(test-equal?
 "a'\u2060̈̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈̀")
 '(0 1 5))
(test-equal?
 "a'\u2060\u200D: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060\u200D")
 '(0 1 4))
(test-equal?
 "a'\u2060̈‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈‍")
 '(0 1 5))
(test-equal?
 "a'\u2060a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060a\u2060")
 '(0 5))
(test-equal?
 "a'\u2060̈a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈a\u2060")
 '(0 6))
(test-equal?
 "a'\u2060a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060a:")
 '(0 4 5))
(test-equal?
 "a'\u2060̈a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈a:")
 '(0 5 6))
(test-equal?
 "a'\u2060a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060a'")
 '(0 4 5))
(test-equal?
 "a'\u2060̈a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈a'")
 '(0 5 6))
(test-equal?
 "a'\u2060a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060a'\u2060")
 '(0 4 6))
(test-equal?
 "a'\u2060̈a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈a'\u2060")
 '(0 5 7))
(test-equal?
 "a'\u2060a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060a,")
 '(0 4 5))
(test-equal?
 "a'\u2060̈a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [6.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [7.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈a,")
 '(0 5 6))
(test-equal?
 "a'\u20601:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u20601:")
 '(0 1 3 4 5))
(test-equal?
 "a'\u2060̈1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈1:")
 '(0 1 4 5 6))
(test-equal?
 "a'\u20601': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u20601'")
 '(0 1 3 4 5))
(test-equal?
 "a'\u2060̈1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈1'")
 '(0 1 4 5 6))
(test-equal?
 "a'\u20601,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u20601,")
 '(0 1 3 4 5))
(test-equal?
 "a'\u2060̈1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈1,")
 '(0 1 4 5 6))
(test-equal?
 "a'\u20601.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u20601.\u2060")
 '(0 1 3 4 6))
(test-equal?
 "a'\u2060̈1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a'\u2060̈1.\u2060")
 '(0 1 4 5 7))
(test-equal?
 "a,\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a,\u0001")
 '(0 1 2 3))
(test-equal?
 "a,̈\u0001: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "a,̈\u0001")
 '(0 1 3 4))
(test-equal?
 "a,\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a,\r")
 '(0 1 2 3))
(test-equal?
 "a,̈\r: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "a,̈\r")
 '(0 1 3 4))
(test-equal?
 "a,\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a,\n")
 '(0 1 2 3))
(test-equal?
 "a,̈\n: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "a,̈\n")
 '(0 1 3 4))
(test-equal?
 "a,\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a,\v")
 '(0 1 2 3))
(test-equal?
 "a,̈\v: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "a,̈\v")
 '(0 1 3 4))
(test-equal?
 "a,〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a,〱")
 '(0 1 2 3))
(test-equal?
 "a,̈〱: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "a,̈〱")
 '(0 1 3 4))
(test-equal?
 "a,A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a,A")
 '(0 1 2 3))
(test-equal?
 "a,̈A: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a,̈A")
 '(0 1 3 4))
(test-equal?
 "a,:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,:")
 '(0 1 2 3))
(test-equal?
 "a,̈:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,̈:")
 '(0 1 3 4))
(test-equal?
 "a,,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,,")
 '(0 1 2 3))
(test-equal?
 "a,̈,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,̈,")
 '(0 1 3 4))
(test-equal?
 "a,.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a,.")
 '(0 1 2 3))
(test-equal?
 "a,̈.: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "a,̈.")
 '(0 1 3 4))
(test-equal?
 "a,0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a,0")
 '(0 1 2 3))
(test-equal?
 "a,̈0: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a,̈0")
 '(0 1 3 4))
(test-equal?
 "a,_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a,_")
 '(0 1 2 3))
(test-equal?
 "a,̈_: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "a,̈_")
 '(0 1 3 4))
(test-equal?
 "a,🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a,🇦")
 '(0 1 2 3))
(test-equal?
 "a,̈🇦: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "a,̈🇦")
 '(0 1 3 4))
(test-equal?
 "a,א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a,א")
 '(0 1 2 3))
(test-equal?
 "a,̈א: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "a,̈א")
 '(0 1 3 4))
(test-equal?
 "a,\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,\"")
 '(0 1 2 3))
(test-equal?
 "a,̈\": ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,̈\"")
 '(0 1 3 4))
(test-equal?
 "a,': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,'")
 '(0 1 2 3))
(test-equal?
 "a,̈': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,̈'")
 '(0 1 3 4))
(test-equal?
 "a,⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a,⌚")
 '(0 1 2 3))
(test-equal?
 "a,̈⌚: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a,̈⌚")
 '(0 1 3 4))
(test-equal?
 "a, : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a, ")
 '(0 1 2 3))
(test-equal?
 "a,̈ : ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "a,̈ ")
 '(0 1 3 4))
(test-equal?
 "a,\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,\u00AD")
 '(0 1 3))
(test-equal?
 "a,̈\u00AD: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈\u00AD")
 '(0 1 4))
(test-equal?
 "a,̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̀")
 '(0 1 3))
(test-equal?
 "a,̈̀: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈̀")
 '(0 1 4))
(test-equal?
 "a,‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a,‍")
 '(0 1 3))
(test-equal?
 "a,̈‍: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈‍")
 '(0 1 4))
(test-equal?
 "a,a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,a\u2060")
 '(0 1 2 4))
(test-equal?
 "a,̈a\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈a\u2060")
 '(0 1 3 5))
(test-equal?
 "a,a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,a:")
 '(0 1 2 3 4))
(test-equal?
 "a,̈a:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,̈a:")
 '(0 1 3 4 5))
(test-equal?
 "a,a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,a'")
 '(0 1 2 3 4))
(test-equal?
 "a,̈a': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,̈a'")
 '(0 1 3 4 5))
(test-equal?
 "a,a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "a,̈a'\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈a'\u2060")
 '(0 1 3 4 6))
(test-equal?
 "a,a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,a,")
 '(0 1 2 3 4))
(test-equal?
 "a,̈a,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,̈a,")
 '(0 1 3 4 5))
(test-equal?
 "a,1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,1:")
 '(0 1 2 3 4))
(test-equal?
 "a,̈1:: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "a,̈1:")
 '(0 1 3 4 5))
(test-equal?
 "a,1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,1'")
 '(0 1 2 3 4))
(test-equal?
 "a,̈1': ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "a,̈1'")
 '(0 1 3 4 5))
(test-equal?
 "a,1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,1,")
 '(0 1 2 3 4))
(test-equal?
 "a,̈1,: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "a,̈1,")
 '(0 1 3 4 5))
(test-equal?
 "a,1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "a,̈1.\u2060: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "a,̈1.\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1:\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1:\u0001")
 '(0 1 2 3))
(test-equal?
 "1:̈\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1:̈\u0001")
 '(0 1 3 4))
(test-equal?
 "1:\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1:\r")
 '(0 1 2 3))
(test-equal?
 "1:̈\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1:̈\r")
 '(0 1 3 4))
(test-equal?
 "1:\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1:\n")
 '(0 1 2 3))
(test-equal?
 "1:̈\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1:̈\n")
 '(0 1 3 4))
(test-equal?
 "1:\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1:\v")
 '(0 1 2 3))
(test-equal?
 "1:̈\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1:̈\v")
 '(0 1 3 4))
(test-equal?
 "1:〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1:〱")
 '(0 1 2 3))
(test-equal?
 "1:̈〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1:̈〱")
 '(0 1 3 4))
(test-equal?
 "1:A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1:A")
 '(0 1 2 3))
(test-equal?
 "1:̈A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1:̈A")
 '(0 1 3 4))
(test-equal?
 "1::: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1::")
 '(0 1 2 3))
(test-equal?
 "1:̈:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1:̈:")
 '(0 1 3 4))
(test-equal?
 "1:,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:,")
 '(0 1 2 3))
(test-equal?
 "1:̈,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:̈,")
 '(0 1 3 4))
(test-equal?
 "1:.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1:.")
 '(0 1 2 3))
(test-equal?
 "1:̈.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1:̈.")
 '(0 1 3 4))
(test-equal?
 "1:0: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1:0")
 '(0 1 2 3))
(test-equal?
 "1:̈0: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1:̈0")
 '(0 1 3 4))
(test-equal?
 "1:_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1:_")
 '(0 1 2 3))
(test-equal?
 "1:̈_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1:̈_")
 '(0 1 3 4))
(test-equal?
 "1:🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1:🇦")
 '(0 1 2 3))
(test-equal?
 "1:̈🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1:̈🇦")
 '(0 1 3 4))
(test-equal?
 "1:א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1:א")
 '(0 1 2 3))
(test-equal?
 "1:̈א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1:̈א")
 '(0 1 3 4))
(test-equal?
 "1:\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:\"")
 '(0 1 2 3))
(test-equal?
 "1:̈\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:̈\"")
 '(0 1 3 4))
(test-equal?
 "1:': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:'")
 '(0 1 2 3))
(test-equal?
 "1:̈': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:̈'")
 '(0 1 3 4))
(test-equal?
 "1:⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1:⌚")
 '(0 1 2 3))
(test-equal?
 "1:̈⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1:̈⌚")
 '(0 1 3 4))
(test-equal?
 "1: : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1: ")
 '(0 1 2 3))
(test-equal?
 "1:̈ : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1:̈ ")
 '(0 1 3 4))
(test-equal?
 "1:\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:\u00AD")
 '(0 1 3))
(test-equal?
 "1:̈\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈\u00AD")
 '(0 1 4))
(test-equal?
 "1:̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̀")
 '(0 1 3))
(test-equal?
 "1:̈̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈̀")
 '(0 1 4))
(test-equal?
 "1:‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1:‍")
 '(0 1 3))
(test-equal?
 "1:̈‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈‍")
 '(0 1 4))
(test-equal?
 "1:a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:a\u2060")
 '(0 1 2 4))
(test-equal?
 "1:̈a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈a\u2060")
 '(0 1 3 5))
(test-equal?
 "1:a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1:a:")
 '(0 1 2 3 4))
(test-equal?
 "1:̈a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1:̈a:")
 '(0 1 3 4 5))
(test-equal?
 "1:a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:a'")
 '(0 1 2 3 4))
(test-equal?
 "1:̈a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:̈a'")
 '(0 1 3 4 5))
(test-equal?
 "1:a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "1:̈a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈a'\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1:a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:a,")
 '(0 1 2 3 4))
(test-equal?
 "1:̈a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:̈a,")
 '(0 1 3 4 5))
(test-equal?
 "1:1:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1:1:")
 '(0 1 2 3 4))
(test-equal?
 "1:̈1:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1:̈1:")
 '(0 1 3 4 5))
(test-equal?
 "1:1': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:1'")
 '(0 1 2 3 4))
(test-equal?
 "1:̈1': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1:̈1'")
 '(0 1 3 4 5))
(test-equal?
 "1:1,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:1,")
 '(0 1 2 3 4))
(test-equal?
 "1:̈1,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1:̈1,")
 '(0 1 3 4 5))
(test-equal?
 "1:1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:1.\u2060")
 '(0 1 2 3 5))
(test-equal?
 "1:̈1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1:̈1.\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1'\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1'\u0001")
 '(0 1 2 3))
(test-equal?
 "1'̈\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1'̈\u0001")
 '(0 1 3 4))
(test-equal?
 "1'\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1'\r")
 '(0 1 2 3))
(test-equal?
 "1'̈\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1'̈\r")
 '(0 1 3 4))
(test-equal?
 "1'\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1'\n")
 '(0 1 2 3))
(test-equal?
 "1'̈\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1'̈\n")
 '(0 1 3 4))
(test-equal?
 "1'\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1'\v")
 '(0 1 2 3))
(test-equal?
 "1'̈\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1'̈\v")
 '(0 1 3 4))
(test-equal?
 "1'〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1'〱")
 '(0 1 2 3))
(test-equal?
 "1'̈〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1'̈〱")
 '(0 1 3 4))
(test-equal?
 "1'A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1'A")
 '(0 1 2 3))
(test-equal?
 "1'̈A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1'̈A")
 '(0 1 3 4))
(test-equal?
 "1':: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1':")
 '(0 1 2 3))
(test-equal?
 "1'̈:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1'̈:")
 '(0 1 3 4))
(test-equal?
 "1',: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1',")
 '(0 1 2 3))
(test-equal?
 "1'̈,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1'̈,")
 '(0 1 3 4))
(test-equal?
 "1'.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1'.")
 '(0 1 2 3))
(test-equal?
 "1'̈.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1'̈.")
 '(0 1 3 4))
(test-equal?
 "1'0: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1'0")
 '(0 3))
(test-equal?
 "1'̈0: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1'̈0")
 '(0 4))
(test-equal?
 "1'_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1'_")
 '(0 1 2 3))
(test-equal?
 "1'̈_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1'̈_")
 '(0 1 3 4))
(test-equal?
 "1'🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1'🇦")
 '(0 1 2 3))
(test-equal?
 "1'̈🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1'̈🇦")
 '(0 1 3 4))
(test-equal?
 "1'א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1'א")
 '(0 1 2 3))
(test-equal?
 "1'̈א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1'̈א")
 '(0 1 3 4))
(test-equal?
 "1'\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'\"")
 '(0 1 2 3))
(test-equal?
 "1'̈\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'̈\"")
 '(0 1 3 4))
(test-equal?
 "1'': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1''")
 '(0 1 2 3))
(test-equal?
 "1'̈': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'̈'")
 '(0 1 3 4))
(test-equal?
 "1'⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1'⌚")
 '(0 1 2 3))
(test-equal?
 "1'̈⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1'̈⌚")
 '(0 1 3 4))
(test-equal?
 "1' : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1' ")
 '(0 1 2 3))
(test-equal?
 "1'̈ : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1'̈ ")
 '(0 1 3 4))
(test-equal?
 "1'\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'\u00AD")
 '(0 1 3))
(test-equal?
 "1'̈\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈\u00AD")
 '(0 1 4))
(test-equal?
 "1'̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̀")
 '(0 1 3))
(test-equal?
 "1'̈̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈̀")
 '(0 1 4))
(test-equal?
 "1'‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1'‍")
 '(0 1 3))
(test-equal?
 "1'̈‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈‍")
 '(0 1 4))
(test-equal?
 "1'a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'a\u2060")
 '(0 1 2 4))
(test-equal?
 "1'̈a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈a\u2060")
 '(0 1 3 5))
(test-equal?
 "1'a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1'a:")
 '(0 1 2 3 4))
(test-equal?
 "1'̈a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1'̈a:")
 '(0 1 3 4 5))
(test-equal?
 "1'a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'a'")
 '(0 1 2 3 4))
(test-equal?
 "1'̈a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'̈a'")
 '(0 1 3 4 5))
(test-equal?
 "1'a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "1'̈a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈a'\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1'a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1'a,")
 '(0 1 2 3 4))
(test-equal?
 "1'̈a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1'̈a,")
 '(0 1 3 4 5))
(test-equal?
 "1'1:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1'1:")
 '(0 3 4))
(test-equal?
 "1'̈1:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1'̈1:")
 '(0 4 5))
(test-equal?
 "1'1': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'1'")
 '(0 3 4))
(test-equal?
 "1'̈1': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1'̈1'")
 '(0 4 5))
(test-equal?
 "1'1,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1'1,")
 '(0 3 4))
(test-equal?
 "1'̈1,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1'̈1,")
 '(0 4 5))
(test-equal?
 "1'1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'1.\u2060")
 '(0 3 5))
(test-equal?
 "1'̈1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] APOSTROPHE (Single_Quote) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1'̈1.\u2060")
 '(0 4 6))
(test-equal?
 "1,\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1,\u0001")
 '(0 1 2 3))
(test-equal?
 "1,̈\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1,̈\u0001")
 '(0 1 3 4))
(test-equal?
 "1,\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1,\r")
 '(0 1 2 3))
(test-equal?
 "1,̈\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1,̈\r")
 '(0 1 3 4))
(test-equal?
 "1,\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1,\n")
 '(0 1 2 3))
(test-equal?
 "1,̈\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1,̈\n")
 '(0 1 3 4))
(test-equal?
 "1,\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1,\v")
 '(0 1 2 3))
(test-equal?
 "1,̈\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1,̈\v")
 '(0 1 3 4))
(test-equal?
 "1,〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1,〱")
 '(0 1 2 3))
(test-equal?
 "1,̈〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1,̈〱")
 '(0 1 3 4))
(test-equal?
 "1,A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1,A")
 '(0 1 2 3))
(test-equal?
 "1,̈A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1,̈A")
 '(0 1 3 4))
(test-equal?
 "1,:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,:")
 '(0 1 2 3))
(test-equal?
 "1,̈:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,̈:")
 '(0 1 3 4))
(test-equal?
 "1,,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,,")
 '(0 1 2 3))
(test-equal?
 "1,̈,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,̈,")
 '(0 1 3 4))
(test-equal?
 "1,.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1,.")
 '(0 1 2 3))
(test-equal?
 "1,̈.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1,̈.")
 '(0 1 3 4))
(test-equal?
 "1,0: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1,0")
 '(0 3))
(test-equal?
 "1,̈0: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1,̈0")
 '(0 4))
(test-equal?
 "1,_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1,_")
 '(0 1 2 3))
(test-equal?
 "1,̈_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1,̈_")
 '(0 1 3 4))
(test-equal?
 "1,🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1,🇦")
 '(0 1 2 3))
(test-equal?
 "1,̈🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1,̈🇦")
 '(0 1 3 4))
(test-equal?
 "1,א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1,א")
 '(0 1 2 3))
(test-equal?
 "1,̈א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1,̈א")
 '(0 1 3 4))
(test-equal?
 "1,\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,\"")
 '(0 1 2 3))
(test-equal?
 "1,̈\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,̈\"")
 '(0 1 3 4))
(test-equal?
 "1,': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,'")
 '(0 1 2 3))
(test-equal?
 "1,̈': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,̈'")
 '(0 1 3 4))
(test-equal?
 "1,⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1,⌚")
 '(0 1 2 3))
(test-equal?
 "1,̈⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1,̈⌚")
 '(0 1 3 4))
(test-equal?
 "1, : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1, ")
 '(0 1 2 3))
(test-equal?
 "1,̈ : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1,̈ ")
 '(0 1 3 4))
(test-equal?
 "1,\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,\u00AD")
 '(0 1 3))
(test-equal?
 "1,̈\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈\u00AD")
 '(0 1 4))
(test-equal?
 "1,̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̀")
 '(0 1 3))
(test-equal?
 "1,̈̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈̀")
 '(0 1 4))
(test-equal?
 "1,‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1,‍")
 '(0 1 3))
(test-equal?
 "1,̈‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈‍")
 '(0 1 4))
(test-equal?
 "1,a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,a\u2060")
 '(0 1 2 4))
(test-equal?
 "1,̈a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈a\u2060")
 '(0 1 3 5))
(test-equal?
 "1,a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,a:")
 '(0 1 2 3 4))
(test-equal?
 "1,̈a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,̈a:")
 '(0 1 3 4 5))
(test-equal?
 "1,a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,a'")
 '(0 1 2 3 4))
(test-equal?
 "1,̈a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,̈a'")
 '(0 1 3 4 5))
(test-equal?
 "1,a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,a'\u2060")
 '(0 1 2 3 5))
(test-equal?
 "1,̈a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈a'\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1,a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,a,")
 '(0 1 2 3 4))
(test-equal?
 "1,̈a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,̈a,")
 '(0 1 3 4 5))
(test-equal?
 "1,1:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,1:")
 '(0 3 4))
(test-equal?
 "1,̈1:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1,̈1:")
 '(0 4 5))
(test-equal?
 "1,1': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,1'")
 '(0 3 4))
(test-equal?
 "1,̈1': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1,̈1'")
 '(0 4 5))
(test-equal?
 "1,1,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,1,")
 '(0 3 4))
(test-equal?
 "1,̈1,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1,̈1,")
 '(0 4 5))
(test-equal?
 "1,1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,1.\u2060")
 '(0 3 5))
(test-equal?
 "1,̈1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] COMMA (MidNum) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1,̈1.\u2060")
 '(0 4 6))
(test-equal?
 "1.\u2060\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\u0001")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈\u0001: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] <START OF HEADING> (Other) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\u0001")
 '(0 1 4 5))
(test-equal?
 "1.\u2060\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\r")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈\r: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <CARRIAGE RETURN (CR)> (CR) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\r")
 '(0 1 4 5))
(test-equal?
 "1.\u2060\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\n")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈\n: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\n")
 '(0 1 4 5))
(test-equal?
 "1.\u2060\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\v")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈\v: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [3.2] <LINE TABULATION> (Newline) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\v")
 '(0 1 4 5))
(test-equal?
 "1.\u2060〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060〱")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈〱: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈〱")
 '(0 1 4 5))
(test-equal?
 "1.\u2060A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060A")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈A: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈A")
 '(0 1 4 5))
(test-equal?
 "1.\u2060:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060:")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈:")
 '(0 1 4 5))
(test-equal?
 "1.\u2060,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060,")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈,")
 '(0 1 4 5))
(test-equal?
 "1.\u2060.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060.")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈.: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] FULL STOP (MidNumLet) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈.")
 '(0 1 4 5))
(test-equal?
 "1.\u20600: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1.\u20600")
 '(0 4))
(test-equal?
 "1.\u2060̈0: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈0")
 '(0 5))
(test-equal?
 "1.\u2060_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060_")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈_: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈_")
 '(0 1 4 5))
(test-equal?
 "1.\u2060🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060🇦")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈🇦: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈🇦")
 '(0 1 4 5))
(test-equal?
 "1.\u2060א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060א")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈א: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈א")
 '(0 1 4 5))
(test-equal?
 "1.\u2060\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\"")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈\": ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] QUOTATION MARK (Double_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\"")
 '(0 1 4 5))
(test-equal?
 "1.\u2060': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060'")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈'")
 '(0 1 4 5))
(test-equal?
 "1.\u2060⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060⌚")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈⌚: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] WATCH (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈⌚")
 '(0 1 4 5))
(test-equal?
 "1.\u2060 : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060 ")
 '(0 1 3 4))
(test-equal?
 "1.\u2060̈ : ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈ ")
 '(0 1 4 5))
(test-equal?
 "1.\u2060\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\u00AD")
 '(0 1 4))
(test-equal?
 "1.\u2060̈\u00AD: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] SOFT HYPHEN (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈\u00AD")
 '(0 1 5))
(test-equal?
 "1.\u2060̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̀")
 '(0 1 4))
(test-equal?
 "1.\u2060̈̀: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] COMBINING GRAVE ACCENT (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈̀")
 '(0 1 5))
(test-equal?
 "1.\u2060\u200D: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060\u200D")
 '(0 1 4))
(test-equal?
 "1.\u2060̈‍: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈‍")
 '(0 1 5))
(test-equal?
 "1.\u2060a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060a\u2060")
 '(0 1 3 5))
(test-equal?
 "1.\u2060̈a\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈a\u2060")
 '(0 1 4 6))
(test-equal?
 "1.\u2060a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060a:")
 '(0 1 3 4 5))
(test-equal?
 "1.\u2060̈a:: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈a:")
 '(0 1 4 5 6))
(test-equal?
 "1.\u2060a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060a'")
 '(0 1 3 4 5))
(test-equal?
 "1.\u2060̈a': ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈a'")
 '(0 1 4 5 6))
(test-equal?
 "1.\u2060a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060a'\u2060")
 '(0 1 3 4 6))
(test-equal?
 "1.\u2060̈a'\u2060: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] APOSTROPHE (Single_Quote) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈a'\u2060")
 '(0 1 4 5 7))
(test-equal?
 "1.\u2060a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060a,")
 '(0 1 3 4 5))
(test-equal?
 "1.\u2060̈a,: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈a,")
 '(0 1 4 5 6))
(test-equal?
 "1.\u20601:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u20601:")
 '(0 4 5))
(test-equal?
 "1.\u2060̈1:: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈1:")
 '(0 5 6))
(test-equal?
 "1.\u20601': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u20601'")
 '(0 4 5))
(test-equal?
 "1.\u2060̈1': ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈1'")
 '(0 5 6))
(test-equal?
 "1.\u20601,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u20601,")
 '(0 4 5))
(test-equal?
 "1.\u2060̈1,: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈1,")
 '(0 5 6))
(test-equal?
 "1.\u20601.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u20601.\u2060")
 '(0 4 6))
(test-equal?
 "1.\u2060̈1.\u2060: ÷ [0.2] DIGIT ONE (Numeric) × [12.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [11.0] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) × [4.0] WORD JOINER (Format_FE) ÷ [0.3]"
 (string-word-break-indexes "1.\u2060̈1.\u2060")
 '(0 5 7))
(test-equal?
 "\r\na\n̈: ÷ [0.2] <CARRIAGE RETURN (CR)> (CR) × [3.0] <LINE FEED (LF)> (LF) ÷ [3.1] LATIN SMALL LETTER A (ALetter) ÷ [3.2] <LINE FEED (LF)> (LF) ÷ [3.1] COMBINING DIAERESIS (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\r\na\n̈")
 '(0 2 3 4 5))
(test-equal?
 "ä: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "ä")
 '(0 2))
(test-equal?
 " \u200Dن: ÷ [0.2] SPACE (WSegSpace) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] ARABIC LETTER NOON (ALetter) ÷ [0.3]"
 (string-word-break-indexes " \u200Dن")
 '(0 2 3))
(test-equal?
 "ن‍ : ÷ [0.2] ARABIC LETTER NOON (ALetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] SPACE (WSegSpace) ÷ [0.3]"
 (string-word-break-indexes "ن‍ ")
 '(0 2 3))
(test-equal?
 "AAA: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN CAPITAL LETTER A (ALetter) × [5.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "AAA")
 '(0 3))
(test-equal?
 "A:A: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [6.0] COLON (MidLetter) × [7.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "A:A")
 '(0 3))
(test-equal?
 "A::A: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "A::A")
 '(0 1 2 3 4))
(test-equal?
 "א': ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [7.1] APOSTROPHE (Single_Quote) ÷ [0.3]"
 (string-word-break-indexes "א'")
 '(0 2))
(test-equal?
 "א\"א: ÷ [0.2] HEBREW LETTER ALEF (Hebrew_Letter) × [7.2] QUOTATION MARK (Double_Quote) × [7.3] HEBREW LETTER ALEF (Hebrew_Letter) ÷ [0.3]"
 (string-word-break-indexes "א\"א")
 '(0 3))
(test-equal?
 "A00A: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [9.0] DIGIT ZERO (Numeric) × [8.0] DIGIT ZERO (Numeric) × [10.0] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "A00A")
 '(0 4))
(test-equal?
 "0,0: ÷ [0.2] DIGIT ZERO (Numeric) × [12.0] COMMA (MidNum) × [11.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "0,0")
 '(0 3))
(test-equal?
 "0,,0: ÷ [0.2] DIGIT ZERO (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ZERO (Numeric) ÷ [0.3]"
 (string-word-break-indexes "0,,0")
 '(0 1 2 3 4))
(test-equal?
 "〱〱: ÷ [0.2] VERTICAL KANA REPEAT MARK (Katakana) × [13.0] VERTICAL KANA REPEAT MARK (Katakana) ÷ [0.3]"
 (string-word-break-indexes "〱〱")
 '(0 2))
(test-equal?
 "A_0_〱_: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ZERO (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] VERTICAL KANA REPEAT MARK (Katakana) × [13.1] LOW LINE (ExtendNumLet) ÷ [0.3]"
 (string-word-break-indexes "A_0_〱_")
 '(0 6))
(test-equal?
 "A__A: ÷ [0.2] LATIN CAPITAL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN CAPITAL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "A__A")
 '(0 4))
(test-equal?
 "🇦🇧🇨b: ÷ [0.2] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [15.0] REGIONAL INDICATOR SYMBOL LETTER B (RI) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER C (RI) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "🇦🇧🇨b")
 '(0 2 3 4))
(test-equal?
 "a🇦🇧🇨b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [16.0] REGIONAL INDICATOR SYMBOL LETTER B (RI) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER C (RI) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a🇦🇧🇨b")
 '(0 1 3 4 5))
(test-equal?
 "a🇦🇧‍🇨b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [16.0] REGIONAL INDICATOR SYMBOL LETTER B (RI) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER C (RI) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a🇦🇧‍🇨b")
 '(0 1 4 5 6))
(test-equal?
 "a🇦‍🇧🇨b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [16.0] REGIONAL INDICATOR SYMBOL LETTER B (RI) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER C (RI) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a🇦‍🇧🇨b")
 '(0 1 4 5 6))
(test-equal?
 "a🇦🇧🇨🇩b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER A (RI) × [16.0] REGIONAL INDICATOR SYMBOL LETTER B (RI) ÷ [999.0] REGIONAL INDICATOR SYMBOL LETTER C (RI) × [16.0] REGIONAL INDICATOR SYMBOL LETTER D (RI) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a🇦🇧🇨🇩b")
 '(0 1 3 5 6))
(test-equal?
 "👶🏿👶: ÷ [0.2] BABY (ExtPict) × [4.0] EMOJI MODIFIER FITZPATRICK TYPE-6 (Extend_FE) ÷ [999.0] BABY (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "👶🏿👶")
 '(0 2 3))
(test-equal?
 "🛑‍🛑: ÷ [0.2] OCTAGONAL SIGN (ExtPict) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] OCTAGONAL SIGN (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "🛑‍🛑")
 '(0 3))
(test-equal?
 "a‍🛑: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] OCTAGONAL SIGN (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "a‍🛑")
 '(0 3))
(test-equal?
 "✁‍✁: ÷ [0.2] UPPER BLADE SCISSORS (Other) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] UPPER BLADE SCISSORS (Other) ÷ [0.3]"
 (string-word-break-indexes "✁‍✁")
 '(0 3))
(test-equal?
 "a‍✁: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] UPPER BLADE SCISSORS (Other) ÷ [0.3]"
 (string-word-break-indexes "a‍✁")
 '(0 3))
(test-equal?
 "👶🏿̈‍👶🏿: ÷ [0.2] BABY (ExtPict) × [4.0] EMOJI MODIFIER FITZPATRICK TYPE-6 (Extend_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] BABY (ExtPict) × [4.0] EMOJI MODIFIER FITZPATRICK TYPE-6 (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "👶🏿̈‍👶🏿")
 '(0 6))
(test-equal?
 "🛑🏿: ÷ [0.2] OCTAGONAL SIGN (ExtPict) × [4.0] EMOJI MODIFIER FITZPATRICK TYPE-6 (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "🛑🏿")
 '(0 2))
(test-equal?
 "\u200D🛑🏿: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] OCTAGONAL SIGN (ExtPict) × [4.0] EMOJI MODIFIER FITZPATRICK TYPE-6 (Extend_FE) ÷ [0.3]"
 (string-word-break-indexes "\u200D🛑🏿")
 '(0 3))
(test-equal?
 "\u200D🛑: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] OCTAGONAL SIGN (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u200D🛑")
 '(0 2))
(test-equal?
 "\u200D🛑: ÷ [0.2] ZERO WIDTH JOINER (ZWJ_FE) × [3.3] OCTAGONAL SIGN (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "\u200D🛑")
 '(0 2))
(test-equal?
 "🛑🛑: ÷ [0.2] OCTAGONAL SIGN (ExtPict) ÷ [999.0] OCTAGONAL SIGN (ExtPict) ÷ [0.3]"
 (string-word-break-indexes "🛑🛑")
 '(0 1 2))
(test-equal?
 "ä‍̈b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [4.0] COMBINING DIAERESIS (Extend_FE) × [4.0] ZERO WIDTH JOINER (ZWJ_FE) × [4.0] COMBINING DIAERESIS (Extend_FE) × [5.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "ä‍̈b")
 '(0 5))
(test-equal?
 "a  b: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] SPACE (WSegSpace) × [3.4] SPACE (WSegSpace) ÷ [999.0] LATIN SMALL LETTER B (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a  b")
 '(0 1 3 4))
(test-equal?
 "1::1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1::1")
 '(0 1 2 3 4))
(test-equal?
 "1_1::1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1::1")
 '(0 3 4 5 6))
(test-equal?
 "1_a::1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a::1")
 '(0 3 4 5 6))
(test-equal?
 "1::a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1::a")
 '(0 1 2 3 4))
(test-equal?
 "1_1::a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1::a")
 '(0 3 4 5 6))
(test-equal?
 "1_a::a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a::a")
 '(0 3 4 5 6))
(test-equal?
 "1:.1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1:.1")
 '(0 1 2 3 4))
(test-equal?
 "1_1:.1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1:.1")
 '(0 3 4 5 6))
(test-equal?
 "1_a:.1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a:.1")
 '(0 3 4 5 6))
(test-equal?
 "1:.a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1:.a")
 '(0 1 2 3 4))
(test-equal?
 "1_1:.a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1:.a")
 '(0 3 4 5 6))
(test-equal?
 "1_a:.a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a:.a")
 '(0 3 4 5 6))
(test-equal?
 "1:,1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1:,1")
 '(0 1 2 3 4))
(test-equal?
 "1_1:,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1:,1")
 '(0 3 4 5 6))
(test-equal?
 "1_a:,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a:,1")
 '(0 3 4 5 6))
(test-equal?
 "1:,a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1:,a")
 '(0 1 2 3 4))
(test-equal?
 "1_1:,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1:,a")
 '(0 3 4 5 6))
(test-equal?
 "1_a:,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a:,a")
 '(0 3 4 5 6))
(test-equal?
 "1.:1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1.:1")
 '(0 1 2 3 4))
(test-equal?
 "1_1.:1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1.:1")
 '(0 3 4 5 6))
(test-equal?
 "1_a.:1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a.:1")
 '(0 3 4 5 6))
(test-equal?
 "1.:a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1.:a")
 '(0 1 2 3 4))
(test-equal?
 "1_1.:a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1.:a")
 '(0 3 4 5 6))
(test-equal?
 "1_a.:a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a.:a")
 '(0 3 4 5 6))
(test-equal?
 "1..1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1..1")
 '(0 1 2 3 4))
(test-equal?
 "1_1..1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1..1")
 '(0 3 4 5 6))
(test-equal?
 "1_a..1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a..1")
 '(0 3 4 5 6))
(test-equal?
 "1..a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1..a")
 '(0 1 2 3 4))
(test-equal?
 "1_1..a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1..a")
 '(0 3 4 5 6))
(test-equal?
 "1_a..a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a..a")
 '(0 3 4 5 6))
(test-equal?
 "1.,1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1.,1")
 '(0 1 2 3 4))
(test-equal?
 "1_1.,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1.,1")
 '(0 3 4 5 6))
(test-equal?
 "1_a.,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a.,1")
 '(0 3 4 5 6))
(test-equal?
 "1.,a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1.,a")
 '(0 1 2 3 4))
(test-equal?
 "1_1.,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1.,a")
 '(0 3 4 5 6))
(test-equal?
 "1_a.,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a.,a")
 '(0 3 4 5 6))
(test-equal?
 "1,:1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1,:1")
 '(0 1 2 3 4))
(test-equal?
 "1_1,:1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1,:1")
 '(0 3 4 5 6))
(test-equal?
 "1_a,:1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a,:1")
 '(0 3 4 5 6))
(test-equal?
 "1,:a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1,:a")
 '(0 1 2 3 4))
(test-equal?
 "1_1,:a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1,:a")
 '(0 3 4 5 6))
(test-equal?
 "1_a,:a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a,:a")
 '(0 3 4 5 6))
(test-equal?
 "1,.1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1,.1")
 '(0 1 2 3 4))
(test-equal?
 "1_1,.1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1,.1")
 '(0 3 4 5 6))
(test-equal?
 "1_a,.1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a,.1")
 '(0 3 4 5 6))
(test-equal?
 "1,.a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1,.a")
 '(0 1 2 3 4))
(test-equal?
 "1_1,.a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1,.a")
 '(0 3 4 5 6))
(test-equal?
 "1_a,.a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a,.a")
 '(0 3 4 5 6))
(test-equal?
 "1,,1: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1,,1")
 '(0 1 2 3 4))
(test-equal?
 "1_1,,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_1,,1")
 '(0 3 4 5 6))
(test-equal?
 "1_a,,1: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "1_a,,1")
 '(0 3 4 5 6))
(test-equal?
 "1,,a: ÷ [0.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1,,a")
 '(0 1 2 3 4))
(test-equal?
 "1_1,,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_1,,a")
 '(0 3 4 5 6))
(test-equal?
 "1_a,,a: ÷ [0.2] DIGIT ONE (Numeric) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "1_a,,a")
 '(0 3 4 5 6))
(test-equal?
 "a::1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a::1")
 '(0 1 2 3 4))
(test-equal?
 "a_1::1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1::1")
 '(0 3 4 5 6))
(test-equal?
 "a_a::1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a::1")
 '(0 3 4 5 6))
(test-equal?
 "a::a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a::a")
 '(0 1 2 3 4))
(test-equal?
 "a_1::a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1::a")
 '(0 3 4 5 6))
(test-equal?
 "a_a::a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a::a")
 '(0 3 4 5 6))
(test-equal?
 "a:.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a:.1")
 '(0 1 2 3 4))
(test-equal?
 "a_1:.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1:.1")
 '(0 3 4 5 6))
(test-equal?
 "a_a:.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a:.1")
 '(0 3 4 5 6))
(test-equal?
 "a:.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a:.a")
 '(0 1 2 3 4))
(test-equal?
 "a_1:.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1:.a")
 '(0 3 4 5 6))
(test-equal?
 "a_a:.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a:.a")
 '(0 3 4 5 6))
(test-equal?
 "a:,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a:,1")
 '(0 1 2 3 4))
(test-equal?
 "a_1:,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1:,1")
 '(0 3 4 5 6))
(test-equal?
 "a_a:,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a:,1")
 '(0 3 4 5 6))
(test-equal?
 "a:,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a:,a")
 '(0 1 2 3 4))
(test-equal?
 "a_1:,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1:,a")
 '(0 3 4 5 6))
(test-equal?
 "a_a:,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COLON (MidLetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a:,a")
 '(0 3 4 5 6))
(test-equal?
 "a.:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a.:1")
 '(0 1 2 3 4))
(test-equal?
 "a_1.:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1.:1")
 '(0 3 4 5 6))
(test-equal?
 "a_a.:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a.:1")
 '(0 3 4 5 6))
(test-equal?
 "a.:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a.:a")
 '(0 1 2 3 4))
(test-equal?
 "a_1.:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1.:a")
 '(0 3 4 5 6))
(test-equal?
 "a_a.:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a.:a")
 '(0 3 4 5 6))
(test-equal?
 "a..1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a..1")
 '(0 1 2 3 4))
(test-equal?
 "a_1..1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1..1")
 '(0 3 4 5 6))
(test-equal?
 "a_a..1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a..1")
 '(0 3 4 5 6))
(test-equal?
 "a..a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a..a")
 '(0 1 2 3 4))
(test-equal?
 "a_1..a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1..a")
 '(0 3 4 5 6))
(test-equal?
 "a_a..a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a..a")
 '(0 3 4 5 6))
(test-equal?
 "a.,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a.,1")
 '(0 1 2 3 4))
(test-equal?
 "a_1.,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1.,1")
 '(0 3 4 5 6))
(test-equal?
 "a_a.,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a.,1")
 '(0 3 4 5 6))
(test-equal?
 "a.,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a.,a")
 '(0 1 2 3 4))
(test-equal?
 "a_1.,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1.,a")
 '(0 3 4 5 6))
(test-equal?
 "a_a.,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a.,a")
 '(0 3 4 5 6))
(test-equal?
 "a,:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a,:1")
 '(0 1 2 3 4))
(test-equal?
 "a_1,:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1,:1")
 '(0 3 4 5 6))
(test-equal?
 "a_a,:1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a,:1")
 '(0 3 4 5 6))
(test-equal?
 "a,:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a,:a")
 '(0 1 2 3 4))
(test-equal?
 "a_1,:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1,:a")
 '(0 3 4 5 6))
(test-equal?
 "a_a,:a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COLON (MidLetter) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a,:a")
 '(0 3 4 5 6))
(test-equal?
 "a,.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a,.1")
 '(0 1 2 3 4))
(test-equal?
 "a_1,.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1,.1")
 '(0 3 4 5 6))
(test-equal?
 "a_a,.1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a,.1")
 '(0 3 4 5 6))
(test-equal?
 "a,.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a,.a")
 '(0 1 2 3 4))
(test-equal?
 "a_1,.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1,.a")
 '(0 3 4 5 6))
(test-equal?
 "a_a,.a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] FULL STOP (MidNumLet) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a,.a")
 '(0 3 4 5 6))
(test-equal?
 "a,,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a,,1")
 '(0 1 2 3 4))
(test-equal?
 "a_1,,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_1,,1")
 '(0 3 4 5 6))
(test-equal?
 "a_a,,1: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] DIGIT ONE (Numeric) ÷ [0.3]"
 (string-word-break-indexes "a_a,,1")
 '(0 3 4 5 6))
(test-equal?
 "a,,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a,,a")
 '(0 1 2 3 4))
(test-equal?
 "a_1,,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] DIGIT ONE (Numeric) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_1,,a")
 '(0 3 4 5 6))
(test-equal?
 "a_a,,a: ÷ [0.2] LATIN SMALL LETTER A (ALetter) × [13.1] LOW LINE (ExtendNumLet) × [13.2] LATIN SMALL LETTER A (ALetter) ÷ [999.0] COMMA (MidNum) ÷ [999.0] COMMA (MidNum) ÷ [999.0] LATIN SMALL LETTER A (ALetter) ÷ [0.3]"
 (string-word-break-indexes "a_a,,a")
 '(0 3 4 5 6))
)

(eval-when-compile
  (require 'its)
  (require 'cl))

(eval-when (compile)
  (defconst its-compaction-enable t))

(defgroup greek nil
  "Greek Input Method"
  :group 'its)

(define-its-state-machine its-greek-jis-map
 "greek-jis" "$B&8(B" Greek
 "$B&%&K&K&G&M&I&J&A(B: Greek keyboard layout (JIS X0208.1983)

The layout is same as greek, but uses JIS characters.
Sorry, accents and terminal sigma are not supported in JIS."

 (its-defrule "1"  "$B#1(B")
 (its-defrule "2"  "$B#2(B")
 (its-defrule "3"  "$B#3(B")
 (its-defrule "4"  "$B#4(B")
 (its-defrule "5"  "$B#5(B")
 (its-defrule "6"  "$B#6(B")
 (its-defrule "7"  "$B#7(B")
 (its-defrule "8"  "$B#8(B")
 (its-defrule "9"  "$B#9(B")
 (its-defrule "0"  "$B#0(B")
 (its-defrule "-"  "$B!](B")
 (its-defrule "="  "$B!a(B")
 (its-defrule "`"  "$B!F(B")
 (its-defrule "q"  "$B!&(B")
 (its-defrule "w"  "$B&R(B")
 (its-defrule "e"  "$B&E(B")
 (its-defrule "r"  "$B&Q(B")
 (its-defrule "t"  "$B&S(B")
 (its-defrule "y"  "$B&T(B")
 (its-defrule "u"  "$B&H(B")
 (its-defrule "i"  "$B&I(B")
 (its-defrule "o"  "$B&O(B")
 (its-defrule "p"  "$B&P(B")
 (its-defrule "["  "$B!N(B")
 (its-defrule "]"  "$B!O(B")
 (its-defrule "a"  "$B&A(B")
 (its-defrule "s"  "$B&R(B")
 (its-defrule "d"  "$B&D(B")
 (its-defrule "f"  "$B&U(B")
 (its-defrule "g"  "$B&C(B")
 (its-defrule "h"  "$B&G(B")
 (its-defrule "j"  "$B&N(B")
 (its-defrule "k"  "$B&J(B")
 (its-defrule "l"  "$B&K(B")
 (its-defrule ";"  "$B!G(B")
 (its-defrule "'"  "$B!G(B")
 (its-defrule "\\" "$B!@(B")
 (its-defrule "z"  "$B&F(B")
 (its-defrule "x"  "$B&V(B")
 (its-defrule "c"  "$B&W(B")
 (its-defrule "v"  "$B&X(B")
 (its-defrule "b"  "$B&B(B")
 (its-defrule "n"  "$B&M(B")
 (its-defrule "m"  "$B&L(B")
 (its-defrule ","  ", ")
 (its-defrule "."  ". ")
 (its-defrule "/"  "$B!?(B")
  
 (its-defrule "!"  "$B!*(B")
 (its-defrule "@"  "$B!w(B")
 (its-defrule "#"  "$B!t(B")
 (its-defrule "$"  "$B!t(B")
 (its-defrule "%"  "$B!s(B")
 (its-defrule "^"  "$B!0(B")
 (its-defrule "&"  "$B!u(B")
 (its-defrule "*"  "$B!v(B")
 (its-defrule "("  "$B!J(B")
 (its-defrule ")"  "$B!K(B")
 (its-defrule "_"  "$B!2(B")
 (its-defrule "+"  "$B!\(B")
 (its-defrule "~"  "$B!1(B")
 (its-defrule "Q"  "$B!](B")
 (its-defrule "W"  "$B&2(B")
 (its-defrule "E"  "$B&%(B")
 (its-defrule "R"  "$B&1(B")
 (its-defrule "T"  "$B&3(B")
 (its-defrule "Y"  "$B&4(B")
 (its-defrule "U"  "$B&((B")
 (its-defrule "I"  "$B&)(B")
 (its-defrule "O"  "$B&/(B")
 (its-defrule "P"  "$B&1(B")
 (its-defrule "{"  "$B!P(B")
 (its-defrule "}"  "$B!Q(B")
 (its-defrule "A"  "$B&!(B")
 (its-defrule "S"  "$B&2(B")
 (its-defrule "D"  "$B&$(B")
 (its-defrule "F"  "$B&5(B")
 (its-defrule "G"  "$B&#(B")
 (its-defrule "H"  "$B&'(B")
 (its-defrule "J"  "$B&.(B")
 (its-defrule "K"  "$B&*(B")
 (its-defrule "L"  "$B&+(B")
 (its-defrule ":"  "$B!I(B")
 (its-defrule "\"" "$B!I(B")
 (its-defrule "|"  "$B!C(B")
 (its-defrule "Z"  "$B&&(B")
 (its-defrule "X"  "$B&6(B")
 (its-defrule "C"  "$B&7(B")
 (its-defrule "V"  "$B&8(B")
 (its-defrule "B"  "$B&"(B")
 (its-defrule "N"  "$B&-(B")
 (its-defrule "M"  "$B&,(B")
 (its-defrule "<"  "$B!((B")
 (its-defrule ">"  "$B!'(B")
 (its-defrule "?"  "$B!)(B"))

(define-its-state-machine its-greek-map
 "greek" ",FY(B" Greek
 ",FEkkgmij\(B: Greek keyboard layout (ISO 8859-7)
--------------

In the right of ,Fk(B key is a combination key, where
 ,F4(B acute
 ,F((B diaresis

e.g.
 ,Fa(B + ,F4(B -> ,F\(B
 ,Fi(B + ,F((B -> ,Fz(B
 ,Fi(B + ,F((B + ,F4(B -> ,F@(B"

;; 1!  2@  3#  4$  5%  6^  7&  8*  9(  0)  -_  =+  `~
;;  ,F7/(B  ,FrS(B  ,FeE(B  ,FqQ(B  ,FtT(B  ,FuU(B  ,FhH(B  ,FiI(B  ,FoO(B  ,FpP(B  [{  ]}
;;   ,FaA(B  ,FsS(B  ,FdD(B  ,FvV(B  ,FcC(B  ,FgG(B  ,FnN(B  ,FjJ(B  ,FkK(B  ,F4((B  '"  \|
;;    ,FfF(B  ,FwW(B  ,FxX(B  ,FyY(B  ,FbB(B  ,FmM(B  ,FlL(B  ,;  .:  /?  

 (its-defrule "1"   "1")
 (its-defrule "2"   "2")
 (its-defrule "3"   "3")
 (its-defrule "4"   "4")
 (its-defrule "5"   "5")
 (its-defrule "6"   "6")
 (its-defrule "7"   "7")
 (its-defrule "8"   "8")
 (its-defrule "9"   "9")
 (its-defrule "0"   "0")
 (its-defrule "-"   "-")
 (its-defrule "="   "=")
 (its-defrule "`"   "`")
 (its-defrule "q"   ",F7(B")
 (its-defrule "w"   ",Fr(B")
 (its-defrule "e"   ",Fe(B")
 (its-defrule "r"   ",Fq(B")
 (its-defrule "t"   ",Ft(B")
 (its-defrule "y"   ",Fu(B")
 (its-defrule "u"   ",Fh(B")
 (its-defrule "i"   ",Fi(B")
 (its-defrule "o"   ",Fo(B")
 (its-defrule "p"   ",Fp(B")
 (its-defrule "["   "[")
 (its-defrule "]"   "]")
 (its-defrule "a"   ",Fa(B")
 (its-defrule "s"   ",Fs(B")
 (its-defrule "d"   ",Fd(B")
 (its-defrule "f"   ",Fv(B")
 (its-defrule "g"   ",Fc(B")
 (its-defrule "h"   ",Fg(B")
 (its-defrule "j"   ",Fn(B")
 (its-defrule "k"   ",Fj(B")
 (its-defrule "l"   ",Fk(B")
 (its-defrule ";"   ",F4(B")
 (its-defrule "'"   "'")
 (its-defrule "\\"  "\\")
 (its-defrule "z"   ",Ff(B")
 (its-defrule "x"   ",Fw(B")
 (its-defrule "c"   ",Fx(B")
 (its-defrule "v"   ",Fy(B")
 (its-defrule "b"   ",Fb(B")
 (its-defrule "n"   ",Fm(B")
 (its-defrule "m"   ",Fl(B")
 (its-defrule ","   ",")
 (its-defrule "."   ".")
 (its-defrule "/"   "/")
 
 (its-defrule "!"   "!")
 (its-defrule "@"   "@")
 (its-defrule "#"   "#")
 (its-defrule "$"   "$")
 (its-defrule "%"   "%")
 (its-defrule "^"   "^")
 (its-defrule "&"   "&")
 (its-defrule "*"   "*")
 (its-defrule "("   "(")
 (its-defrule ")"   ")")
 (its-defrule "_"   "_")
 (its-defrule "+"   "+")
 (its-defrule "~"   "~")
 (its-defrule "Q"   ",F/(B")
 (its-defrule "W"   ",FS(B")
 (its-defrule "E"   ",FE(B")
 (its-defrule "R"   ",FQ(B")
 (its-defrule "T"   ",FT(B")
 (its-defrule "Y"   ",FU(B")
 (its-defrule "U"   ",FH(B")
 (its-defrule "I"   ",FI(B")
 (its-defrule "O"   ",FO(B")
 (its-defrule "P"   ",FP(B")
 (its-defrule "{"   "{")
 (its-defrule "}"   "}")
 (its-defrule "A"   ",FA(B")
 (its-defrule "S"   ",FS(B")
 (its-defrule "D"   ",FD(B")
 (its-defrule "F"   ",FV(B")
 (its-defrule "G"   ",FC(B")
 (its-defrule "H"   ",FG(B")
 (its-defrule "J"   ",FN(B")
 (its-defrule "K"   ",FJ(B")
 (its-defrule "L"   ",FK(B")
 (its-defrule ":"   ",F((B")
 (its-defrule "\""  "\"")
 (its-defrule "|"   "|")
 (its-defrule "Z"   ",FF(B")
 (its-defrule "X"   ",FW(B")
 (its-defrule "C"   ",FX(B")
 (its-defrule "V"   ",FY(B")
 (its-defrule "B"   ",FB(B")
 (its-defrule "N"   ",FM(B")
 (its-defrule "M"   ",FL(B")
 (its-defrule "<"   ";")
 (its-defrule ">"   ":")
 (its-defrule "?"   "?")
 
 (its-defrule "a;"  ",F\(B")
 (its-defrule "e;"  ",F](B")
 (its-defrule "h;"  ",F^(B")
 (its-defrule "i;"  ",F_(B")
 (its-defrule "o;"  ",F|(B")
 (its-defrule "y;"  ",F}(B")
 (its-defrule "v;"  ",F~(B")
 (its-defrule "A;"  ",F6(B")
 (its-defrule "E;"  ",F8(B")
 (its-defrule "H;"  ",F9(B")
 (its-defrule "I;"  ",F:(B")
 (its-defrule "O;"  ",F<(B")
 (its-defrule "Y;"  ",F>(B")
 (its-defrule "V;"  ",F?(B")
 (its-defrule "i:"  ",Fz(B")
 (its-defrule "y:"  ",F{(B")
 (its-defrule "I:"  ",FZ(B")
 (its-defrule "Y:"  ",F[(B")
 (its-defrule "i:;" ",F@(B")
 (its-defrule "y:;" ",F`(B"))

(provide 'its/greek)
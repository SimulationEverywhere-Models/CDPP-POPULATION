#include(viabi-ej1.inc)

[top]

components : viability

[viability]

type : cell
delay : transport
dim : (40,40)
border : nowrapped
defaultdelaytime : 1
neighbors :                  viability(-1,0)
neighbors : viability(0,-1)  viability(0,0)  viability(0,1)
neighbors :                  viability(1,0)
initialvalue : 0
initialCellsValue : viabi-ej1.val
localtransition : viability-rules
zone : viability-up { (0,1)..(0,38) }
zone : viability-dn { (39,1)..(39,38) }
zone : viability-lf { (1,0)..(38,0) }
zone : viability-rg { (1,39)..(38,39) }
zone : viability-ul { (0,0) }
zone : viability-ur { (0,39) }
zone : viability-bl { (39,0) }
zone : viability-br { (39,39) }

[viability-rules]

rule : 100 1 { #macro(calc) > 100 }
rule : { #macro(calc) } 1 { #macro(calc) > 0 }
rule : 0 1 { t }

[viability-up]

rule : 100 1 { #macro(calc-up) > 100 }
rule : { #macro(calc-up) } 1 { #macro(calc-up) > 0 }
rule : 0 1 { t }

[viability-dn]

rule : 100 1 { #macro(calc-dn) > 100 }
rule : { #macro(calc-dn) } 1 { #macro(calc-dn) > 0 }
rule : 0 1 { t }

[viability-lf]

rule : 100 1 { #macro(calc-lf) > 100 }
rule : { #macro(calc-lf) } 1 { #macro(calc-lf) > 0 }
rule : 0 1 { t }

[viability-rg]

rule : 100 1 { #macro(calc-rg) > 100 }
rule : { #macro(calc-rg) } 1 { #macro(calc-rg) > 0 }
rule : 0 1 { t }

[viability-ul]

rule : 100 1 { #macro(calc-ul) > 100 }
rule : { #macro(calc-ul) } 1 { #macro(calc-ul) > 0 }
rule : 0 1 { t }

[viability-ur]

rule : 100 1 { #macro(calc-ur) > 100 }
rule : { #macro(calc-ur) } 1 { #macro(calc-ur) > 0 }
rule : 0 1 { t }

[viability-bl]

rule : 100 1 { #macro(calc-bl) > 100 }
rule : { #macro(calc-bl) } 1 { #macro(calc-bl) > 0 }
rule : 0 1 { t }

[viability-br]

rule : 100 1 { #macro(calc-br) > 100 }
rule : { #macro(calc-br) } 1 { #macro(calc-br) > 0 }
rule : 0 1 { t }

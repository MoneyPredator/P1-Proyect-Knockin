;==========<INITIALIZE>==========
[Statedef 5900]
type=S

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = !time
value = 0
first=2
last=37

[State 5900, 1] ;Clear all int variables
type = VarRangeSet
trigger1 = !time
value = 0
first=39
last=49

[State 5900, 2] ;Clear all float variables
type = VarRangeSet
trigger1 = !time
fvalue = 0
first=1
last=39

[State 5900, addtional pal] ;Change palette
type = RemapPal
trigger1 = AILevel = 0
trigger1 = time <= 1 && RoundsExisted = 0
source = 1,1
dest = 1,palno + 100 *(command = "holddown")

[State 5900, addtional pal] ;Change palette AI
type = RemapPal
trigger1 = AILevel != 0
trigger1 = time <= 1 && RoundsExisted = 0
source = 1,1
dest = 1,palno + 100 *(random%3 = 0)

;[State 5900, Palette Var]
;type=VarSet
;trigger1 = var(1) = 0
;trigger1 = time <= 1 && RoundsExisted = 0
;var(1)= IfElse((PalNo=[4,6]),PalNo-3,IfElse((PalNo=[10,12]),PalNo-3,PalNo+3))
;Persistent=0

[State 5900, dizzy threshold]
type=varset
trigger1 = time <= 1; this is a workround && RoundsExisted = 0
var(38) = 120

[State 5900, end]
type=changestate
trigger1= !time
value=ifelse(RoundsExisted = 0,190,0)

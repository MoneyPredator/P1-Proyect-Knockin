; Jesus CMD file.

;-| Button Remapping |-----------------------------------------------------
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
command.time = 30

command.buffer.time = 1

;-| CPU Commands |----------------------------------------------------------
[command]
name = "CPU1"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU11"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU12"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU2"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU13"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU14"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU3"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU15"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU16"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU4"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU17"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU18"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU5"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU19"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU20"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU6"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU21"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU22"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU7"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU23"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU24"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU8"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU25"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU26"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU9"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU27"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU28"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU10"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU29"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

[command]
name = "CPU30"
command = a+b+c+x+y+z+a+b+c+x+y+z
time = -1

;-| Super Motions |--------------------------------------------------------
[Command]
name = "resurection"
command = D, DF, F, x+y
time = 25

[Command]
name = "Animaux"
command = D, DF, F, a+b
time = 25

;-| Special Motions |------------------------------------------------------
[Command]
name = "proj"
command = D, DF, F, x

[Command]
name = "proj"
command = D, DF, F, y

[Command]
name = "poissons"
command = D, DF, F, a

[Command]
name = "poissons"
command = D, DF, F, b


[Command]
name = "cross"
command = y; D, DF, F, x

[Command]
name = "eau"
command = b; D, DB, B, x



;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 10

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 10

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery" ;Required (do not remove)
command = x+y
time = 1

[Command]
name = "recovery"
command = y+z
time = 1

[Command]
name = "recovery"
command = x+z
time = 1

[Command]
name = "recovery"
command = a+b
time = 1

[Command]
name = "recovery"
command = b+c
time = 1

[Command]
name = "recovery"
command = a+c
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "back_x"
command = /$B,x
time = 1

[Command]
name = "back_y"
command = /$B,y
time = 1

[Command]
name = "back_z"
command = /$B,z
time = 1

[Command]
name = "down_x"
command = /$D,x
time = 1

[Command]
name = "down_y"
command = /$D,y
time = 1

[Command]
name = "down_z"
command = /$D,z
time = 1

[Command]
name = "fwd_x"
command = /$F,x
time = 1

[Command]
name = "fwd_y"
command = /$F,y
time = 1

[Command]
name = "fwd_z"
command = /$F,z
time = 1

[Command]
name = "up_x"
command = /$U,x
time = 1

[Command]
name = "up_y"
command = /$U,y
time = 1

[Command]
name = "up_z"
command = /$U,z
time = 1

[Command]
name = "back_a"
command = /$B,a
time = 1

[Command]
name = "back_b"
command = /$B,b
time = 1

[Command]
name = "back_c"
command = /$B,c
time = 1

[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1

[Command]
name = "down_c"
command = /$D,c
time = 1

[Command]
name = "fwd_a"
command = /$F,a
time = 1

[Command]
name = "fwd_b"
command = /$F,b
time = 1

[Command]
name = "fwd_c"
command = /$F,c
time = 1

[Command]
name = "up_a"
command = /$U,a
time = 1

[Command]
name = "up_b"
command = /$U,b
time = 1

[Command]
name = "up_c"
command = /$U,c
time = 1

;-| Single Button |---------------------------------------------------------
[Command]
name = "a"
command = a
time = 1

[Command]
name = "b"
command = b
time = 1

[Command]
name = "c"
command = c
time = 1

[Command]
name = "x"
command = x
time = 1

[Command]
name = "y"
command = y
time = 1

[Command]
name = "z"
command = z
time = 1

[Command]
name = "s"
command = s
time = 1

;-| Single Dir |------------------------------------------------------------
[Command]
name = "fwd" ;Required (do not remove)
command = $F
time = 1

[Command]
name = "downfwd"
command = $DF
time = 1

[Command]
name = "down" ;Required (do not remove)
command = $D
time = 1

[Command]
name = "downback"
command = $DB
time = 1

[Command]
name = "back" ;Required (do not remove)
command = $B
time = 1

[Command]
name = "upback"
command = $UB
time = 1

[Command]
name = "up" ;Required (do not remove)
command = $U
time = 1

[Command]
name = "upfwd"
command = $UF
time = 1

;-| Hold Button |--------------------------------------------------------------
[Command]
name = "hold_x"
command = /x
time = 1

[Command]
name = "hold_y"
command = /y
time = 1

[Command]
name = "hold_z"
command = /z
time = 1

[Command]
name = "hold_a"
command = /a
time = 1

[Command]
name = "hold_b"
command = /b
time = 1

[Command]
name = "hold_c"
command = /c
time = 1

[Command]
name = "hold_s"
command = /s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd" ;Required (do not remove)
command = /$F
time = 1

[Command]
name = "holddownfwd"
command = /$DF
time = 1

[Command]
name = "holddown" ;Required (do not remove)
command = /$D
time = 1

[Command]
name = "holddownback"
command = /$DB
time = 1

[Command]
name = "holdback" ;Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdupback"
command = /$UB
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holdupfwd"
command = /$UF
time = 1

;---------------------------------------------------------------------------
; 2. State entry
; --------------
; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
[State -1, resurection]
type = ChangeState
value = 3000
triggerall = var(20) = 0
triggerall = command = "resurection"
triggerall = Life <= 500 ;60
triggerall = power >= 3000
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl = 1
;---------------------------------------------------------------------------
[State -1, Animaux]
type = ChangeState
value = 3100
triggerall = var(20) = 0
triggerall = command = "Animaux"
triggerall = power >= 1000
triggerall = !NumProjID(9993)
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, projectile]
type = ChangeState
value = 720
triggerall = var(20) = 0
triggerall = command = "proj"
triggerall = command != "holddown"
triggerall = !NumProjID(721)
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, poissons]
type = ChangeState
value = 730
triggerall = var(20) = 0
triggerall = command = "poissons"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, eau]
type = ChangeState
value = 710
triggerall = var(20) = 0
triggerall = command = "eau"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;---------------------------------------------------------------------------
[State -1, cross]
type = ChangeState
value = 700
triggerall = var(20) = 0
triggerall = command = "cross"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
triggerall = var(20) = 0
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
triggerall = var(20) = 0
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Throw
[State -1, Throw]
type = ChangeState
value = 800
triggerall = var(20) = 0
triggerall = command = "y" || command = "z"
triggerall = statetype = S
triggerall = ctrl
triggerall = stateno != 100
trigger1 = command = "holdfwd"
trigger1 = p2bodydist X < 10
trigger1 = (p2statetype = S) || (p2statetype = C)
trigger1 = p2movetype != H
trigger2 = command = "holdback"
trigger2 = p2bodydist X < 10
trigger2 = (p2statetype = S) || (p2statetype = C)
trigger2 = p2movetype != H

;===========================================================================
;---------------------------------------------------------------------------
; Taunt
[State -1, Taunt]
type = ChangeState
value = 195
triggerall = var(20) = 0
triggerall = command = "s"
trigger1 = statetype != A
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Light Punch
[State -1, Stand Light Punch]
type = ChangeState
value = 200
triggerall = var(20) = 0
triggerall = command = "x"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Stand Medium Punch
[State -1, Stand Medium Punch]
type = ChangeState
value = 210
triggerall = var(20) = 0
triggerall = command = "a"
triggerall = command != "holddown"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Jump Light Punch
[State -1, Jump Light Punch]
type = ChangeState
value = 600
triggerall = var(20) = 0
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "x"
trigger2 = command = "a"

;---------------------------------------------------------------------------
; Jump Medium Punch
[State -1, Jump Medium Punch]
type = ChangeState
value = 610
triggerall = var(20) = 0
triggerall = statetype = A
triggerall = ctrl
trigger1 = command = "y"
trigger2 = command = "b"

;---------------------------------------------------------------------------
;-------------------------------------AI------------------------------------
;---------------------------------------------------------------------------

;STAND----------------------------------------------------------------------

; Stand Light Punch
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 30
value = 200

; Stand Medium Punch
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 31
value = 210

; Jump Light Punch
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = A && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 30
value = 600
; Jump Medium Punch
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = A && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 31
value = 610

; "resurection"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = Life <= 60
triggerall = power = 3000
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0
value = 3000
; "animaux"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = power >= 1000
triggerall = !NumProjID(9993)
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0
value = 3100
; "croix"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 100
value = 700
; "eau"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x <= 20
value = 710
; "proj"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
triggerall = !NumProjID(721)
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x >= 125
value = 720
; "poissons"
;---------------------
[state -1]
type = ChangeState
triggerall = var(20) = 1
trigger1 = StateType = S && ctrl && random <= 30
trigger1 = P2StateType != L && P2Life > 0 && P2BodyDist x >= 120
value = 730

;---------------------------------------------------------------------------
; CPU Commands
[State -1]
type = VarSet
trigger1 = command = "CPU1"
trigger2 = command = "CPU2"
trigger3 = command = "CPU3"
trigger4 = command = "CPU4"
trigger5 = command = "CPU5"
trigger6 = command = "CPU6"
trigger7 = command = "CPU7"
trigger8 = command = "CPU8"
trigger9 = command = "CPU9"
trigger10 = command = "CPU10"
trigger11 = command = "CPU11"
trigger12 = command = "CPU12"
trigger13 = command = "CPU13"
trigger14 = command = "CPU14"
trigger15 = command = "CPU15"
trigger16 = command = "CPU16"
trigger17 = command = "CPU17"
trigger18 = command = "CPU18"
trigger19 = command = "CPU19"
trigger20 = command = "CPU20"
trigger21 = command = "CPU21"
trigger22 = command = "CPU22"
trigger23 = command = "CPU23"
trigger24 = command = "CPU24"
trigger25 = command = "CPU25"
trigger26 = command = "CPU26"
trigger27 = command = "CPU27"
trigger28 = command = "CPU28"
trigger29 = command = "CPU29"
trigger30 = command = "CPU30"
v = 20
value = 1

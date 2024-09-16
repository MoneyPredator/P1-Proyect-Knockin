;-| Deafauls |------------------------------------------------------------------
[Defaults]
command.time = 15
command.buffer.time = 3

[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

;-| Single Button |---------------------------------------------------------
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd"
command = /$F
time = 1

[Command]
name = "holdback"
command = /$B
time = 1

[Command]
name = "holdup"
command = /$U
time = 1

[Command]
name = "holddown"
command = /$D
time = 1

;-| Hold Button |-----------------------------------------------------------
[Command]
name = "holda"
command = /a
time = 1

[Command]
name = "holdb"
command = /b
time = 1

[Command]
name = "holdc"
command = /c
time = 1

[Command]
name = "holdx"
command = /x
time = 1

[Command]
name = "holdy"
command = /y
time = 1

[Command]
name = "holdz"
command = /z
time = 1

[Command]
name = "holdstart"
command = /s
time = 1

;-| Hyper Moves |-------------------------------------------------------------

[Command]
name = "GHSDM2";triple
command = ~D,F,D,F,z
time = 30
buffer.time = 6

[Command]
name = "LJM1"
command = ~D,D,z
time = 30
buffer.time = 6

[Command]
name = "GPSDM"
command = ~D,B,z
time = 30
buffer.time = 6

[Command]
name = "GPSDM"
command = ~D, B, D, B, z
time = 30
buffer.time = 6

[Command]
name = "GHSDM"
command = ~D,F,c
time = 30
buffer.time = 6

[Command]
name = "GHSDM";doble
command = ~F,B,c;D, F, D, F, c
time = 30
buffer.time = 6

[Command]
name = "GPx"
command = ~D, B, D, B, y
time = 30
buffer.time = 6

[Command]
name = "GPy"
command = ~D, B, y
time = 30
buffer.time = 6

[Command]
name = "GHa"
command = ~D,F,b
time = 30
buffer.time = 6

[Command]
name = "GHb"
command = ~D, F, D, F, b
time = 30
buffer.time = 6

[Command]
name = "RexSDM"
command = ~D,D,c
time = 30
buffer.time = 6

[Command]
name = "RexSDM"
command = ~D, B, D, B, c
time = 30
buffer.time = 6

[Command]
name = "Rexx"
command = ~D, F, D, F, x
time = 30
buffer.time = 6

[Command]
name = "Rexy"
command = ~D, F, D, F, y
time = 30
buffer.time = 6

;-| Special Moves |-----------------------------------------------------------

[Command]
name = "BDa"
command = ~D,D,x
time = 30
buffer.time = 6

[Command]
name = "BDb"
command = ~D,D,y
time = 30
buffer.time = 6

[Command]
name = "GPSx"
command = ~D, B, D,y
time = 30
buffer.time = 6

[Command]
name = "GPSy"
command = ~D, B, x
time = 30
buffer.time = 6

[Command]
name = "KWx"
command = ~D,F,y
time = 30
buffer.time = 6

[Command]
name = "KWy"
command = ~F, B, F, y
time = 30
buffer.time = 6

[Command]
name = "DBa"
command = ~D,B,a
time = 30
buffer.time = 6

[Command]
name = "DBb"
command = ~D, DF, F, b
time = 30
buffer.time = 6

[Command]
name = "GCa"
command = ~D,D,a
time = 30
buffer.time = 6

[Command]
name = "GCb"
command = ~D,D,b
time = 30
buffer.time = 6

[Command]
name = "RPKx"
command = ~D, DF, F, x
time = 30
buffer.time = 6

[Command]
name = "RPKy"
command = ~F, B, F, x
time = 30
buffer.time = 6

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"
command = F, F
time = 10

[Command]
name = "BB"
command = B, B
time = 10

;-| 2 Button Combination |-----------------------------------------------
[Command]
name = "recovery"
command = a+x
time = 1

[Command]
name = "recovery"
command = z
time = 1

;-| Combination |---------------------------------------------------------
[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "ab"
command = a+b
time = 1

[Command]
name = "yb"
command = y+b
time = 1

[Command]
name = "ax"
command = a+x
time = 1

[Command]
name = "cz"
command = c+z
time = 1

[Command]
name = "sjump"
command = D, $U
time = 18

[Command]
name = "jump"    
command = D, $U
time = 12

[Statedef -1]

[State -1, AI]
type = VarSet
triggerall = !var(58)
triggerall = RoundState = 2
trigger1 = Ailevel && ctrl
var(58) = 10

[State -1, Nearest Target]
type = VarSet
triggerall = RoundState = 2
trigger1 = NumEnemy = 1
trigger2 = NumEnemy = 2
trigger2 = enemynear(0),Life > 0
var(59) = 0
ignorehitpause = 1

[State -1, Nearest Target]
type = VarSet
triggerall = RoundState = 2
triggerAll = NumEnemy = 2
trigger1 = enemynear(0),Life <= 0
var(59) = 1
ignorehitpause = 1

;==============
; Combo var set
;==============
[State -1, varset1]
Type = varset
trigger1 = 1
var(8) = 0

[State -1, varset2]
Type = varset
trigger1 = Stateno = 201 && animelemtime(2) > 0 && animelemtime(3) <= 0
trigger2 = Stateno = 210 && animelemtime(4) > 0 && animelemtime(5) <= 0
trigger3 = Stateno = 211 && animelemtime(3) > 0 && animelemtime(4) <= 0
trigger4 = Stateno = 221 && animelemtime(4) > 0 
trigger5 = Stateno = 222 && animelemtime(5) > 0 && animelemtime(6) <= 0
trigger6 = Stateno = 231 && animelemtime(4) > 0 && animelemtime(5) <= 0
trigger7 = Stateno = 1050 && animelemtime(4) > 0 && animelemtime(5) <= 0 && MoveContact
trigger8 = Stateno = 240 && animelemtime(4) > 0 && animelemtime(5) <= 0
trigger9 = Stateno = 300 && animelemtime(2) > 0 && animelemtime(3) <= 0
trigger10 = Stateno = 320 && animelemtime(5) > 0 && animelemtime(6) <= 0
trigger11 = Stateno = 330 && animelemtime(6) > 0 && animelemtime(7) <= 0
trigger12 = Stateno = 700 && animelemtime(5) > 0 && animelemtime(6) <= 0
ignorehitpause = 1
var(8) = var(8) | 1

;---------< Hyper Moves >----------------------------------------------------
;Destruction Omega
[State -1]
type = ChangeState
value = 3500
triggerall = !var(58)
triggerall = enemy,var(46) = 0
triggerall = command = "GHSDM2"
triggerall = power >= 3000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 2100 && HitCount >= 1 && enemynear(var(59)),movetype = H
trigger6 = stateno = 1305 && animelem = 3, >= 8
trigger7 = stateno = 2005 && animelem = 3, >= 8
trigger8 = stateno = 2420
trigger9 = Stateno = [2321,2326]
trigger10 = Stateno = [3251,3263]

;Last Jugement
[State -1]
type = ChangeState
value = 3400
triggerall = !var(58)
triggerall = enemy,var(46) = 0
triggerall = command = "LJM1"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 2100 && HitCount >= 1 && enemynear(var(59)),movetype = H
trigger6 = stateno = 1305 && animelem = 3, >= 8
trigger7 = stateno = 2005 && animelem = 3, >= 8
trigger8 = stateno = 2420
trigger9 = Stateno = [2321,2326]
trigger10 = Stateno = [3251,3263]

;Rugal Execution
[State -1]
type = ChangeState
value = 3300
triggerall = !var(58)
triggerall = command = "RexSDM"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 2100 && HitCount >= 1 && enemynear(var(59)),movetype = H
trigger6 = stateno = 1305 && animelem = 3, >= 8
trigger7 = stateno = 2005 && animelem = 3, >= 8
trigger8 = stateno = 2420

;Destruction Omgea SDM
[State -1]
type = ChangeState
value = 3250
triggerall = !var(58)
triggerall = command = "GHSDM"
triggerall = power >= 2000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 2100 && HitCount >= 1 && enemynear(var(59)),movetype = H
trigger6 = stateno = 1305 && animelem = 3, >= 8
trigger7 = stateno = 2005 && animelem = 3, >= 8
trigger8 = stateno = 2420
trigger9 = Stateno = [2321,2326]

;Destruction Omega Light
[State -1]
type = ChangeState
value = 2300
triggerall = !var(58)
triggerall = (command = "GHa" || command = "GHb")
triggerall = power >= 1000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 1305 && animelem = 3, >= 8

;Destruction Omega Hard
[State -1]
type = ChangeState
value = 2310
triggerall = !var(58)
triggerall = (command = "GHa" || command = "GHb")
triggerall = power >= 1000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = [1801,1802]
trigger3 = movecontact
trigger4 = stateno = [1811,1802]
trigger4 = movecontact
trigger5 = stateno = 1305 && animelem = 3, >= 8

;Gigantic Pressure SDM
[State -1]
type = ChangeState
value = 3000
triggerall = command = "GPSDM"
triggerall = power >= 2000
triggerall = !var(58)
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 800 && time <= 2
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 1305 && animelem = 3, >= 8
trigger6 = stateno = 2005 && animelem = 3, >= 8
trigger7 = stateno = [1801,1802]
trigger7 = movecontact
trigger8 = stateno = [1811,1802]
trigger8 = movecontact
trigger9 = stateno = 2100 && HitCount >= 1 && enemynear(var(59)),movetype = H
trigger10 = stateno = 2420
trigger11 = Stateno = [2321,2326]

;Gigantic Pressure Light
[State -1]
type = ChangeState
value = 2000
triggerall = command = "GPx"
triggerall = !var(58)
triggerall = power >= 1000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 1305 && animelem = 3, >= 8
trigger6 = stateno = [1801,1802]
trigger6 = movecontact
trigger7 = stateno = [1811,1802]
trigger7 = movecontact

;Gigantic Pressure Hard
[State -1]
type = ChangeState
value = 2010
triggerall = command=  "GPy"
triggerall = !var(58)
triggerall = power >= 1000
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 1305 && animelem = 3, >= 8
trigger6 = stateno = [1801,1802]
trigger6 = movecontact
trigger7 = stateno = [1811,1802]
trigger7 = movecontact

;---------< Super Moves >----------------------------------------------------
;Dark Genocide Light
[State -1]
type = ChangeState
value = 1500
triggerall = !var(58)
triggerall = command = "GCa"
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 && movecontact


;Dark Genocide Hard
[State -1]
type = ChangeState
value = 1550
triggerall = !var(58)
triggerall = command = "GCb"
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact

;Beads Destruction Light
[State -1]
type = ChangeState
value = 1800
triggerall = !var(58)
triggerall = enemy,var(46) = 0
triggerall = command = "BDa"
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 501 && Movecontact
trigger5 = stateno = 1802 && Movecontact

;Beads Destruction Hard
[State -1]
type = ChangeState
value = 1810
triggerall = !var(58)
triggerall = enemy,var(46) = 0
triggerall = command = "BDb"
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 && movecontact
trigger4 = stateno = 501 && Movecontact
trigger5 = stateno = 1802 && Movecontact

;Reppu Ken Light
[State -1]
type = ChangeState
value = 1000
triggerall = !AiLevel
triggerall = command = "RPKx"
triggerall = numprojID(6050) = 0
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 501 && Movecontact

;Reppu Ken Hard
[State -1]
type = ChangeState
value = 1010
triggerall = !AiLevel
triggerall = command = "RPKy"
triggerall = numprojID(6050) = 0
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 501 && Movecontact

;God Press Light
[State -1]
type = ChangeState
value = 1300
triggerall = !AiLevel
triggerall = command = "GPSx"
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = var(27) = 1 && statetype = S
trigger4 = stateno = 220 & movecontact
trigger5 = stateno = 210 & movecontact
trigger6 = stateno = 501 && Movecontact

;God Press Hard
[State -1]
type = ChangeState
value = 1310
triggerall = !AiLevel
triggerall = command = "GPSy"
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = var(27) = 1 && statetype = S
trigger4 = stateno = 220 & movecontact
trigger5 = stateno = 210 & movecontact
trigger6 = stateno = 501 && Movecontact

;Kaiser Wave Light
[State -1]
type = ChangeState
value = 1100
triggerall = !AiLevel
triggerall = command = "KWx"
triggerall = numprojID(6100) = 0
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1

;Kaiser Wave Hard
[State -1]
type = ChangeState
value = 1110
triggerall = !AiLevel
triggerall = command = "KWy"
triggerall = numprojID(6100) = 0
trigger1 = statetype = S && ctrl || stateno = 100
trigger2 = var(8) = 1

;Dark Barrier Light
[State -1]
type = ChangeState
value = 1200
triggerall = command = "DBa"
triggerall = !var(58)
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 501 && Movecontact

;Dark Barrier Hard
[State -1]
type = ChangeState
value = 1210
triggerall = command = "DBb"
triggerall = !var(58)
trigger1 = statetype != A && ctrl || stateno = 100
trigger2 = var(8) = 1
trigger3 = stateno = 220 & movecontact
trigger4 = stateno = 210 & movecontact
trigger5 = stateno = 501 && Movecontact

;---------< Basic Commands >-------------------------------------------------
;Run
[State -1]
type = ChangeState
value = 100
triggerall = command = "FF"
trigger1 = statetype = S && ctrl || stateno = 100

;Hop Back
[State -1]
type = ChangeState
value = 105
triggerall = command = "BB"
trigger1 = statetype = S && ctrl

;Taunt
[State -1]
type = ChangeState
value = 195
triggerall = !var(58)
triggerall = command = "start"
trigger1 = statetype = S && ctrl

[State -1, recovery]
type = ChangeState
value = 5201
triggerall = command = "recovery"
triggerall = alive = 1
triggerall = var(48) = 0
trigger1 = stateno = 5050
trigger1 = pos y >= 0
trigger1 = vel y >= 0

;---------< Counter attacks >-------------------------------------------------
;Knockdown
[State -1]
type = ChangeState
value = 700
triggerall = (command = "b" && command = "y") || command = "c"
triggerall = !var(58)
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

;roll back
[State -1]
type = ChangeState
value = 720
triggerall = !var(58)
triggerall = ((command = "a" && command = "x") || command = "z") && command = "holdback"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

;Roll fwd
[State -1]
type = ChangeState
value = 710
triggerall = !var(58)
triggerall = (command = "a" && command = "x") || command = "z"
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152 

;Power Up
[State -1]
type = ChangeState
value = 800
triggerall = !var(58)
triggerall = command = "holda"
triggerall = command = "holdy"
triggerall = command != "holddown"
triggerall = statetype != A && life > 0
triggerall = ctrl = 1 
trigger1 = power < 4000

;Standing Knockdown
[State -1]
type = ChangeState
value = 240
triggerall = !var(58)
triggerall = (command = "b" && command = "y") || command = "c"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;Jumping Knockdown
[State -1]
type = ChangeState
value = 440
triggerall = !var(58)
triggerall = (command = "b" && command = "y") || command = "c"
trigger1 = statetype = A && ctrl

;Slide FWD
[State -1]
type = ChangeState
value = 510
triggerall = !var(0)
triggerall = (command = "a" && command = "x") || command = "z"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;Slide BACK
[State -1]
type = ChangeState
value = 520
triggerall = var(0) != 1
triggerall = (command = "a" && command = "x") || command = "z"
triggerall = command = "holdback"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl

;Sidestep
[State -1]
type = ChangeState
value = 500
triggerall = (command = "a" && command = "x") || command = "z"
triggerall = command != "holddown"
triggerall = var(0) != 1
trigger1 = statetype = S && ctrl

;---------< Grabs >----------------------------------------------------------
;Scorpion Deathlock
[State -1]
type = ChangeState
value = 600
triggerall = command = "y"
triggerall = !var(58)
triggerall = statetype = S && ctrl && stateno != 100
triggerall = (enemynear(var(59)),statetype = S) || (enemynear(var(59)),statetype = C)
trigger1 = command = "holdfwd" && p2bodydist X < 3 && enemynear(var(59)),movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && enemynear(var(59)),movetype != H 

;Scorpion Blow
[State -1]
type = ChangeState
value = 610
triggerall = command = "b"
triggerall = !var(58)
triggerall = statetype = S && ctrl && stateno != 100
triggerall = (enemynear(var(59)),statetype = S) || (enemynear(var(59)),statetype = C)
trigger1 = command = "holdfwd" && p2bodydist X < 3 && enemynear(var(59)),movetype != H
trigger2 = command = "holdback" && p2bodydist X < 5 && enemynear(var(59)),movetype != H 

;---------< Basic Attacks >--------------------------------------------------
;Light Punch
[State -1]
type = ChangeState
value = 200
triggerall = !var(58)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x > 22
trigger1 = statetype = S && ctrl

;Close Light Punch
[State -1]
type = ChangeState
value = 201
triggerall = !var(58)
triggerall = command = "x"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 22
trigger1 = statetype = S && ctrl
trigger2 = stateno = 300 && movecontact
trigger3 = stateno = 310 && movecontact

;Double Tomahowk
[State -1]
type = ChangeState
value = 1050
triggerall = !var(58)
triggerall = command = "a"
triggerall = command = "holdfwd"
triggerall = command != "holddown"
trigger1 = statetype = S && ctrl
trigger2 = var(8) = 1 && Stateno != 240 && stateno != 1050
trigger3 = stateno = 210 && movecontact
trigger4 = stateno = 200 && time = [3,10]
trigger5 = stateno = 310 && movecontact && time >= 5

;Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = !var(58)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x > 22
trigger1 = statetype = S && ctrl
trigger2 = stateno = 300 && movecontact && time >= 4
trigger3 = stateno = 310 && movecontact && time >= 5

;Close Light Kick
[State -1]
type = ChangeState
value = 211
triggerall = !var(58)
triggerall = command = "a"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 22
trigger1 = statetype = S && ctrl
trigger2 = stateno = 300 && movecontact && time >= 4
trigger3 = stateno = 310 && movecontact && time >= 5

;Hard Punch
[State -1]
type = ChangeState
value = 220
triggerall = !var(58)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x > 28
trigger1 = statetype = S && ctrl

;Close Hard Punch
[State -1]
type = ChangeState
value = 221
triggerall = !var(58)
triggerall = command = "y"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 28
trigger1 = statetype = S && ctrl

;Hard Kick
[State -1]
type = ChangeState
value = 230
triggerall = !var(58)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x > 35
trigger1 = statetype = S && ctrl

;Hard Kick
[State -1]
type = ChangeState
value = 231
triggerall = !var(58)
triggerall = command = "b"
triggerall = command != "holddown"
triggerall = p2bodydist x <= 35
trigger1 = statetype = S && ctrl

;Crouching light punch
[State -1]
type = ChangeState
value = 300
triggerall = !var(58)
triggerall = command = "x"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 300 && movecontact && time >= 4
trigger3 = stateno = 310 && time = [3,10]

;Crouching light kick
[State -1]
type = ChangeState
value = 310
triggerall = !var(58)
triggerall = command = "a"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl
trigger2 = stateno = 300 && movecontact && time >= 4
trigger3 = stateno = 310 && movecontact && time >= 5

;Crouching hard punch
[State -1]
type = ChangeState
value = 320
triggerall = !var(58)
triggerall = command = "y"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl

;Crouching hard kick
[State -1]
type = ChangeState
value = 330
triggerall = !var(58)
triggerall = command = "b"
triggerall = command = "holddown"
trigger1 = statetype = C && ctrl

;Jumping vertical light punch
[State -1]
type = ChangeState
value = 400
triggerall = var(4) = 0
triggerall = command = "x"
triggerall = vel x = 0
triggerall = !var(58)
trigger1 = statetype = A && ctrl

;Jumping diagonal light punch
[State -1]
type = ChangeState
value = 401
triggerall = command = "x"
triggerall = statetype = A && ctrl
triggerall = !var(58)
trigger1 = vel x != 0 || var(4) = 1

;Jumping vertical light kick
[State -1]
type = ChangeState
value = 410
triggerall = var(4) = 0
triggerall = command = "a"
triggerall = vel x = 0
triggerall = !var(58)
trigger1 = statetype = A && ctrl

;Jumping diagonal light kick
[State -1]
type = ChangeState
value = 411
triggerall = command = "a"
triggerall = statetype = A && ctrl
triggerall = !var(58)
trigger1 = vel x != 0 || var(4) = 1

;Jumping vertical hard punch
[State -1]
type = ChangeState
value = 420
triggerall = var(4) = 0
triggerall = command = "y"
triggerall = vel x = 0
triggerall = !var(58)
trigger1 = statetype = A && ctrl

;Jumping diagonal hard punch
[State -1]
type = ChangeState
value = 421
triggerall = command = "y"
triggerall = statetype = A && ctrl
triggerall = !var(58)
trigger1 = vel x != 0 || var(4) = 1

;Jumping vertical hard kick
[State -1]
type = ChangeState
value = 430
triggerall = var(4) = 0
triggerall = command = "b"
triggerall = vel x = 0
triggerall = !var(58)
trigger1 = statetype = A && ctrl

;Jumping diagonal hard kick
[State -1]
type = ChangeState
value = 431
triggerall = command = "b"
triggerall = statetype = A && ctrl
triggerall = !var(58)
trigger1 = vel x != 0 || var(4) =1

;---------< AI Moves >----------------------------------------------------
;Destruction Omega, Target in Air
[State -1]
type = ChangeState
value = 3500
triggerall = var(58)
triggerall = random <= (var(58)*30)
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = power < 4150
triggerall = p2stateno != [5070,5170]
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),movetype = H
triggerall = statetype != A && ctrl || stateno = 0 || stateno = 99 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),vel y >= 0
trigger1 = p2bodydist x = [-5,100]
trigger1 = p2bodydist y > -80 && p2bodydist y < -65
trigger2 = p2bodydist x < 110
trigger2 = enemynear,movetype = A
trigger2 = statetype != A
trigger2 = ctrl || stateno = 21 || stateno = 22 || stateno = 99 || stateno = 100 || stateno = 101
trigger3 = stateno = 2005 && anim = 2005 && animelem = 3, >= 8
trigger4 = stateno = 2100 && time = [132,137]

;Destruction Omega
[State -1]
type = ChangeState
value = 3500
triggerall = var(58)
triggerall = enemy,var(46) = 0
triggerall = roundstate = 2
triggerall = power >= 3000
triggerall = power < 4150
triggerall = random <= (var(58))*30
trigger1 = p2bodydist x < 110
trigger1 = enemynear,movetype = A
trigger1 = statetype != A
trigger1 = ctrl || stateno = 21 || stateno = 22 || stateno = 99 || stateno = 100 || stateno = 101
trigger2 = stateno = 2005 && anim = 2005 && animelem = 3, >= 8
trigger3 = stateno = 2100 && time >=130 && time <=135 
trigger4 = stateno = 2100 && time = [132,137]


;Destruction Omega, Target in Air
[State -1]
type = ChangeState
value = ifelse(power >= 2000, 3250, 2300)
triggerall = var(58)
triggerall = random <= (var(58)*300)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2stateno != [5070,5170]
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),movetype = H
triggerall = statetype != A && ctrl || stateno = 0 || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),vel y >= 0
trigger1 = p2bodydist x = [-5,100]
trigger1 = p2bodydist y > -95 && p2bodydist y < -65

;Gigantic Pressure, Target in Air
[State -1]
type = ChangeState
value = ifelse(power >= 2000, 3000, 2010)
triggerall = var(58)
triggerall = random <= (var(58)*300)
triggerall = roundstate = 2
triggerall = power >= 1000
triggerall = p2stateno != [5070,5170]
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),movetype = H
triggerall = statetype != A && ctrl || stateno = 0 || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),vel y >= 0
trigger1 = p2bodydist x = [-5,100]
trigger1 = p2bodydist y > -95 && p2bodydist y < -65





;Gigantic Pressure SDM
[State -1]
type = ChangeState
value = 3000
triggerall = var(58)
triggerall = roundstate = 2
triggerall = power < 3000
triggerall = power >= 2000
triggerall = p2stateno != [154,155]
trigger1 = stateno = 1305 && anim = 1305 && animelem = 3, >= 8
trigger2 = stateno = 2005 && anim = 2005 && animelem = 3, >= 8
trigger3 = stateno = 2420 && time >= 10
trigger4 = statetype != A && ctrl
trigger4 = p2bodydist x = [0,30]
trigger4 = enemynear(var(59)),movetype = A
;----------------------------------------------------------------------------
[State -1]
type = ChangeState
value = 510
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),movetype != H
triggerall = prevstateno != [510,520]
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100 || stateno = [120,140]
triggerall = !enemynear(var(59)),hitdefattr = SCA,NT,ST,HT
trigger1 = enemynear(var(59)),statetype != A || prevstateno = [130,155]
trigger1 = inguarddist
trigger1 = enemynear(var(59)),animtime <= -33
trigger1 = p2bodydist x = [0,100]
trigger1 = random <= (var(58))*40
trigger2 = enemynear(var(59)),numproj
trigger2 = enemynear(var(59)),animtime <= -33
trigger2 = p2bodydist x = [50,110]
trigger2 = random <= (var(58))*35
trigger3 = enemy ,numproj
trigger3 = inguarddist
trigger3 = p2bodydist x >= 120
trigger3 = random <= (var(58))*1

[State -1]
type = ChangeState
value = 520
triggerall = var(58)
triggerall = roundstate = 2
triggerall = life >=(p2life)
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),movetype != H
triggerall = prevstateno != [510,520]
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100
triggerall = !enemynear(var(59)),hitdefattr = SCA,NT,ST,HT
triggerall = !enemynear(var(59)),numproj
triggerall = backedgebodydist >= 50
trigger1 = !inguarddist
trigger1 = random <= (var(58))*1
trigger2 = enemynear(var(59)),statetype != A
trigger2 = inguarddist
trigger2 = enemynear(var(59)),animtime > -33
trigger2 = P2bodydist x = [-10,120]
trigger2 = random <= (var(58))*2

[State -1,CD counter]
type = null;ChangeState
value = 700
triggerall = var(58)
triggerall = roundstate = 2
triggerall = p2bodydist x = [0,30]
triggerall = power >= 1000 && life > 0 && statetype != A
trigger1 = stateno = 150 
trigger2 = stateno = 152
;-----------------------------------------------------------------------------
[State -1,RUN]
type = ChangeState
value = 100
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = stateno != 100
triggerall = prevstateno != 100
triggerall = !inguarddist
triggerall = ctrl || stateno = 22
triggerall = frontedgebodydist >= 30
trigger1 = p2bodydist x >= 240
trigger1 = random <= 10*25
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= 10*11
trigger3 = p2bodydist x = [50,120]
trigger3 = random <= 10*8
trigger4 = enemynear(var(59)),movetype = H
trigger4 = p2stateno != [5050,5210]
trigger4 = !enemynear(var(59)),numproj
trigger4 = p2bodydist x = [20,70]
trigger4 = random <= 10*40
trigger5 = TeamMode = single || TeamMode = turns
trigger5 = enemynear(var(59)),movetype = H
trigger5 = p2stateno != [5050,5210]
trigger5 = !enemynear(var(59)),numproj
trigger5 = p2bodydist x = [20,90]
trigger5 = random <= 10*50

[State -1, BackDash]
type = ChangeState
value = 105
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear,stateno = [5080,5121]
triggerall = enemynear,time <= 10
triggerall = random <= 100
triggerall = statetype != A
triggerall = p2bodydist x = [0,50]
triggerall = enemynear(var(59)),statetype != A
triggerall = statetype = S
trigger1 = ctrl

[State -1]
type = ChangeState
value = 105
IgnoreHitPause = 1
Triggerall = HitPauseTime = 0
Triggerall = var(58)
Triggerall = RoundState = 2 && Life > 0
Triggerall = StateType != A
Triggerall = EnemyNear(var(59)),StateType = L && EnemyNear(var(59)),StateNo = [5000,5300)
Triggerall = Ctrl || StateNo = [21,22]
Trigger1 = EnemyNear(var(59)),StateNo = 5120
Trigger1 = EnemyNear(var(59)),AnimTime = [-20,-18]
Trigger1 = Random%2 = 1

;Ai Jump
[State -1]
type = ChangeState
value = 40
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = ctrl || (stateno = 100 && time >= 12) || stateno = 21 || stateno = 22
triggerall = !inguarddist
triggerall = p2bodydist x = [60,170]
trigger1 = random <= (var(58))*10
trigger2 = enemynear,numproj
trigger2 = enemynear,animtime <= -8

[State -1]
type = ChangeState
value = 40
triggerall = var(58) && RoundState = 2
triggerall = StateType != A
triggerall = EnemyNear,MoveType != H
triggerall = EnemyNear,StateType != L
triggerall = Ctrl || stateno = 21 || stateno = 22 ||(stateno = 100 && time >= 12)
trigger1 = !inguarddist
trigger1 = EnemyNear,StateType != A
trigger1 = random <= var(58)*80
trigger1 = p2bodydist X = [60,170] 
trigger2 = !inguarddist
trigger2 = p2bodydist X = [60,170] 
trigger2 = random <= var(58)*100
trigger2 = p2statetype = L && BackEdgeBodyDist > 20
trigger2 = p2bodydist X = [-5,30]
trigger3 = EnemyNear,HitDefAttr=SCA,AT
trigger3 = random <= var(58)*160
trigger3 = EnemyNear,Time>=30||(!Time&&var(58)>3) || var(58)>4
trigger3 = EnemyNear,Time>=50 || (PrevStateNo=[5000,5270]) || (PrevStateNo=[120,159])

;Ai Jump
[State -1,hj]
type = ChangeState
value = 44
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear(var(59)),movetype != H
triggerall = ctrl || stateno = 100 || stateno = 21 || stateno = 22
triggerall = !inguarddist
trigger1 = p2bodydist x = [140,190]
trigger1 = random <= (var(58))*10
trigger2 = p2bodydist x >= 160
trigger2 = enemynear(var(59)),numproj
trigger2 = random <= (var(58))*10

;Ai Jump
[State -1,sJ2]
Type = ChangeState
value = 43
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(58))*30
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != A
triggerall = ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = random <= (var(58))*10
trigger1 = p2stateno = 5120
trigger1 = enemynear(var(59)),animtime = -9
trigger1 = p2bodydist x = [-15,30]
trigger1 = p2bodydist y >= 0

;ƒWƒƒƒ“ƒv
[State -1,j]
type = ChangeState
value = 42
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype = A
triggerall = EnemyNear,hitdefattr = SC, NT, ST, HT
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = [120,140]
triggerall = p2bodydist x <= 90
trigger1 = random <= var(58)*10

[State -1,sj]
type = ChangeState
value = 42
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(58))*30
triggerall = statetype != A
triggerall = EnemyNear,statetype != A
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 99 || stateno = 100
trigger1 = random <= (var(58))*10
trigger1 = EnemyNear,stateno = 5120
trigger1 = EnemyNear,animtime = -9
trigger1 = p2bodydist x <= 90
trigger1 = p2bodydist y >= 0

;Ai Walk
[State -1]
type = ChangeState
value = 21
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 22
triggerall = frontedgebodydist > 0
trigger1 = p2bodydist x = [240,270]
trigger1 = random <= (var(58))*35
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(58))*20
trigger3 = enemynear(var(59)),statetype != L
trigger3 = p2stateno != [5110,5120]
trigger3 = p2bodydist x = [0,120]
trigger3 = random <= (var(58))*18
trigger4 = p2stateno = [120,155]
trigger4 = p2bodydist x <= 60
trigger4 = random <= (var(58))*60
trigger5 = enemynear(var(59)),statetype = L
trigger5 = p2bodydist x = [40,120]
trigger5 = random <= (var(58))*45
trigger6 = enemynear(var(59)),statetype != L
trigger6 = enemynear(var(59)),movetype = H
trigger6 = p2stateno = [5000,5029]
trigger6 = random <= (var(58))*100

;Ai Walk
[State -1]
type = ChangeState
value = 22
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = !inguarddist
triggerall = ctrl || stateno = 21
triggerall = backedgebodydist > 0
trigger1 = p2bodydist x = [240,270]
trigger1 = random <= (var(58))*3
trigger2 = p2bodydist x = [120,240]
trigger2 = random <= (var(58))*2
trigger3 = p2bodydist x = [-5,120]
trigger3 = random <= (var(58))*4
trigger4 = enemynear(var(59)),statetype = L
trigger4 = p2bodydist x <= 30
trigger4 = random <= (var(58))*100

;Recovery
[State -1]
type = ChangeState
value = 5201
triggerall = var(58)
triggerall = roundstate = 2
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0 
trigger1 = life > 0 
trigger1 = stateno = 5050
;--------------------------------------------------------------------------------------

;Scorpion Deathlock or Scorpion DeathBlow
[State -1]
type = ChangeState
value = ifelse(random < 500, 600, 610)
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear,statetype != A
triggerall = EnemyNear,statetype != L
triggerall = EnemyNear,movetype != H
;triggerall = stateno != [99,102]
triggerall = !inguarddist
triggerall = ctrl || stateno = 21 || stateno = 22
triggerall = p2bodydist x = [-15,15]
trigger1 = random <= var(58)*35
trigger2 = (EnemyNear,stateno=[120,159])
trigger2 = random <= var(58)*35
trigger3 = EnemyNear,stateno < 1000 || EnemyNear,stateno > 5200
trigger3 = EnemyNear,Movetype = I
trigger3 = EnemyNear,vel x != 0

;--------------------------------------------------------------------------------------
;Crouching Light Kick
[State -1]
type = ChangeState
value = 310
triggerall = var(58)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = ctrl || stateno = 100 || stateno = 21 || stateno = 22
triggerall = P2bodydist X = [-5,35]
triggerall = random <= var(59)*100
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != C
trigger1 = EnemyNear,MoveType = H
trigger2 = EnemyNear,AnimTime <= -4
trigger2 = EnemyNear,StateType = S || EnemyNear,StateType = C

;Crouching light kick
[State -1]
type = ChangeState
value = 310
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = EnemyNear,StateType != C
triggerall = P2BodyDist X = [-5,35]
triggerall = statetype != A 
triggerall = random <= (var(58))*100
triggerall = ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = ((enemynear(var(59)),animtime <= -4) && (enemynear(var(59)),ctrl = 0))
trigger2 = enemynear(var(59)),movetype = H
trigger3 = (random <= (var(58))*30)

;Close Hard Punch
[State -1]
type = null;ChangeState
value = 221
triggerall = var(58)
triggerall = RoundState = 2
triggerall = statetype != A
triggerall = p2bodydist X < 29
triggerall = ctrl || stateno = 100 || stateno = 21 || stateno = 22
triggerall = random <= var(58)*100
triggerall = EnemyNear,StateType != L
triggerall = EnemyNear,StateType != A
triggerall = EnemyNear,StateType != C
trigger1 = EnemyNear,MoveType = H
trigger2 = EnemyNear,StateType = S

;Close Hard Punch
[State -1]
type = ChangeState
value = 221
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = p2bodydist x = [0,28]
triggerall = random <= (var(58))*100
triggerall = statetype != A && ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = ((enemynear(var(59)),animtime <= -8) && (enemynear(var(59)),ctrl = 0))
trigger2 = enemynear(var(59)),movetype = H
trigger3 = (random <= (var(58))*30)

;Light Kick
[State -1]
type = null;ChangeState
value = 210
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = EnemyNear(var(59)),movetype != I
triggerall = EnemyNear(var(59)),ctrl = 0
triggerall = random <= (var(58))*100
triggerall = p2bodydist x = [23,60]
triggerall = statetype != A && ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = ((enemynear(var(59)),animtime <= -7) && (enemynear(var(59)),ctrl = 0))
trigger2 = Enemynear(var(59)),movetype = H
trigger3 = (random <= (var(58))*30)

;Crouching Hard Punch
[State -1]
type = ChangeState
value = 320
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(59)),statetype != L
triggerall = EnemyNear(var(59)),movetype != I
triggerall = enemynear(var(59)),statetype != A
triggerall = EnemyNear(var(59)),animtime <= -8
triggerall = EnemyNear(var(59)),ctrl = 0
triggerall = p2bodydist x = [-5,48]
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100
trigger1 = random <= (var(58))*100

;Crouching Hard Kick
[State -1]
type = null;ChangeState
value = 330
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = EnemyNear(var(59)),statetype != L
triggerall = EnemyNear(var(59)),movetype = I
triggerall = EnemyNear(var(59)),animtime <= -11
triggerall = EnemyNear(var(59)),ctrl = 0
triggerall = p2bodydist x = [59,87]
triggerall = p2bodydist y >= 0
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100
trigger1 = random <= (var(58))*100

;Crouching Hard Kick
[State -1]
type = null;ChangeState
value = 330
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(59))*30
triggerall = statetype != A
triggerall = EnemyNear(var(59)),statetype != A
triggerall = ctrl || stateno = 21 || stateno = 22 || stateno = 100
trigger1 = EnemyNear(var(59)),stateno = 5120
trigger1 = EnemyNear(var(59)),animtime = -11
trigger1 = p2bodydist x = [48,87]
trigger1 = p2bodydist y >= 0

;Crouching light punch
[State -1]
type = ChangeState
value = 300
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = P2BodyDist X = [0,27]
triggerall = random <= var(58)*100
trigger1 = stateno = 300 && time >= 4 && MoveContact;AnimElem = 4 && MoveContact
trigger2 = stateno = 310 && time >= 5 && MoveContact;AnimElem = 3 && movecontact

;Light Kick
[State -1]
type = ChangeState
value = 210
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),movetype != A
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = p2bodydist x = [23,60]
triggerall = random <= var(58)*100
trigger1 = stateno = 300 && time >= 4 && MoveContact
trigger2 = p2bodydist x >= 28
trigger2 = stateno = 310 && time >= 5 && MoveContact

;Double Tomahowk
[State -1]
type = ChangeState
value = 1050
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = EnemyNear(var(59)),movetype = H
triggerall = random <= (var(58))*100
trigger1 = p2bodydist x = [0,77]
trigger1 = var(8) = 1 && Stateno != 240 && stateno != 1050 && MoveContact && stateno != 221 && stateno != 330
trigger2 = stateno = 300 && time >= 4 && movecontact
trigger3 = stateno = 211 && movecontact && p2bodydist x <= 77

;Jumping vertical hard kick
[State -1]
type = ChangeState
value = 431
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(58))*100
triggerall = statetype = A
triggerall = ctrl
triggerall = pos y+floor(-floor(7*vel y)-(7*(7)/2)*0.52) <= 0
trigger1 = EnemyNear,stateno = 5120
trigger1 = EnemyNear,animtime <= 0
trigger1 = p2bodydist x <= 60
trigger1 = vel y <= 0



[State AI]
type = ChangeState
value = 431
triggerall = Roundstate = 2
triggerall = var(58) && (stateno = 50 || (stateno = [120,140]) && pos Y < 0)
trigger1 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<50, p2dist Y>30) || p2dist X < 20 && p2statetype = A || p2movetype = A && p2statetype != C && enemynear,statetype != L
trigger1 = p2movetype != H
trigger2 = vel Y > 0 && ifelse(p2statetype=C, p2dist Y<50, p2dist Y>30) || p2dist X < 20 && p2statetype = A || p2movetype = A && p2statetype != C && enemynear,statetype != L
trigger2 = p2movetype != A
trigger2 = p2stateno = [120,162]



;Jumping vertical hard kick
[State -1]
type = ChangeState
value = 431
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype = A
triggerall = (enemynear(var(59)),statetype != A && vel y >= 0) || enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),animtime <= -7
triggerall = enemynear(var(59)),ctrl = 0
triggerall = !enemynear(var(59)),numproj
triggerall = ctrl
triggerall = p2bodydist x = [-35+floor(7*(enemynear(var(59)),vel x)+floor(7*vel x)),63+floor(7*(enemynear(var(59)),vel x)+floor(7*vel x))]
triggerall = p2bodydist y = [-21-floor(7*(enemynear(var(59)),vel y)+(7*(7+1)/2)*fvar(20)-floor(7*vel y)-(7*(7+1)/2)*0.47),49-floor(7*(enemynear(var(59)),vel y)+(7*(7+1)/2)*fvar(20)-floor(7*vel y)-(7*(7+1)/2)*0.47)]
trigger1 = random <= (var(58))*100

;Jumping Vertical Hard Kick
[State -1]
type = ChangeState
value = 431
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(58))*100
triggerall = statetype = A
triggerall = (enemynear(var(59)),statetype != A && vel y >= 0) || enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),statetype != L
triggerall = !inguarddist
triggerall = ctrl
triggerall = pos y+floor(-floor(7*vel y)-(7*(7)/2)*0.52) <= 0
trigger1 = p2bodydist x = [-35+floor(7*(enemynear(var(59)),vel x)+7*(vel x)),49+floor(7*(enemynear(var(59)),vel x)+7*(vel x))]
trigger1 = p2bodydist y = [-14-floor(7*(enemynear(var(59)),vel y)+(7*(7+1)/2)*fvar(20)-7*(vel y)-(7*(7+1)/2)*0.55),42-floor(7*(enemynear(var(59)),vel y)+(7*(7+1)/2)*fvar(20)-7*(vel y)-(7*(7+1)/2)*0.55)]

;Jumping Knockdown
[State -1,]
type = ChangeState
value = 440
triggerall = var(58)
triggerall = roundstate = 2
triggerall = random <= (var(58))*100
triggerall = statetype = A
triggerall = (enemynear(var(59)),statetype != A && vel y >= 0) || enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),statetype != L
triggerall = !inguarddist
triggerall = ctrl
triggerall = pos y+floor(-floor(13*vel y)-(13*(13)/2)*0.52) <= 0
trigger1 = p2bodydist x = [0+floor(13*(enemynear(var(59)),vel x)+13*(vel x)),70+floor(13*(enemynear(var(59)),vel x)+13*(vel x))]
trigger1 = p2bodydist y = [-39-floor(13*(enemynear(var(59)),vel y)+(13*(13+1)/2)*fvar(20)-13*(vel y)-(13*(13+1)/2)*0.55),26-floor(13*(enemynear(var(59)),vel y)+(13*(13+1)/2)*fvar(20)-13*(vel y)-(13*(13+1)/2)*0.55)]

;-------------------------------------------------------------------------------
;Reppu Ken Light
[State -1]
type = ChangeState
value = 1000
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = numprojID(6050) = 0
triggerall = enemynear,movetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = enemynear,numproj = 0
trigger1 = p2bodydist x = [150,210]
trigger1 = random <= 100
trigger1 = statetype != A && ctrl || stateno = 102

;Reppu Ken Hard
[State -1]
type = ChangeState
value = 1010
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = numprojID(6050) = 0
triggerall = enemynear,movetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
triggerall = enemynear,numproj = 0
trigger1 = p2bodydist x = [150,210]
trigger1 = random <= 100
trigger1 = statetype != A && ctrl || stateno = 102
trigger2 = enemynear,statetype = C
trigger2 = stateno = 1050 && moveguarded
trigger3 = stateno = 330 && moveguarded

;Beads Destruction 
[State -1]
type = ChangeState
value = ifelse(random<450,1810,1800)
triggerall = var(58)
triggerall = enemy,var(46) = 0
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall = p2bodydist y >= 0
trigger1 = stateno = 1050 && MoveHit && stateno != 221

;Beads Destruction 
[State -1]
type = ChangeState
value = ifelse(random<450,1810,1800)
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear,statetype != A
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != I
triggerall = p2bodydist y >= 0
trigger1 = enemynear,numproj || enemynear,movetype = a
trigger1 = enemynear,animtime <= -9
trigger1 = enemynear,ctrl = 0
trigger1 = p2bodydist x = [60,120]
trigger1 = statetype != A && ctrl || StateNo = 99 || stateno = 21 || stateno = 22


;Beads Destruction Light
[State -1]
type = ChangeState
value = 1800
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = enemynear,statetype != L
triggerall = enemynear,statetype != A
trigger1 = stateno = 1050 && MoveContact && stateno != 221
trigger2 = enemynear,movetype != A
trigger2 = random <= 100
trigger2 = statetype != A && ctrl || stateno = 102
trigger2 = p2bodydist x = [70,115]
trigger2 = enemynear, numproj = 0

;God Press Hard
[State -1]
type = ChangeState
value = 1310
triggerall = p2stateno = 5050
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = enemynear,statetype != L
triggerall = enemynear,movetype != A
trigger1 = floor(p2dist y) < -60
trigger1 = enemynear,statetype = A
trigger1 = enemynear,movetype = H
trigger1 = enemynear,vel y >= 0
trigger1 = enemynear,vel x = 0
trigger1 = statetype != A && ctrl && p2bodydist x = [0,60]

;Vanishing Rush Light
[State -1]
type = ChangeState
value = 1300
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),movetype != I
triggerall = p2bodydist y >= 0
trigger1 = random <= (var(58))*100
trigger1 = enemynear(var(59)),animtime <= -9
trigger1 = enemynear(var(59)),ctrl = 0
trigger1 = enemynear(var(59)),numproj = 0
trigger1 = p2bodydist x >= 100
trigger1 = statetype != A && ctrl || stateno = 100 || stateno = 21 || stateno = 22

;Kaiser Wave Light
[State -1]
type = ChangeState
value = 1100
triggerall = random <= 300
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = numprojID(6100) = 0
triggerall = enemynear,statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,numproj = 0
triggerall = enemynear,vel x = 0
triggerall = enemynear,vel y = 0
trigger1 = p2bodydist x = [170,320]
trigger1 = statetype != A && ctrl || stateno = 102

;Kaiser Wave Hard
[State -1]
type = ChangeState
value = 1110
triggerall = random <= 300
triggerall = AiLevel
triggerall = roundstate = 2
triggerall = numprojID(6100) = 0
triggerall = enemynear,statetype != A
triggerall = enemynear,movetype != A
triggerall = enemynear,numproj = 0
triggerall = enemynear,vel x = 0
triggerall = enemynear,vel y = 0
trigger1 = p2bodydist x = [170,320]
trigger1 = statetype != A && ctrl || stateno = 102

;Vanishing Rush Light
[State -1]
type = ChangeState
value = ifelse(random<700,1300,1500)
triggerall = var(58)
triggerall = roundstate = 2
triggerall = statetype != A
triggerall = enemynear(var(59)),statetype != A
triggerall = enemynear(var(59)),statetype != L
trigger1 = stateno = 1050 && moveguarded
trigger2 = stateno = 220 && Movecontact

;Dark Genocide Hard
[State -1]
type = ChangeState
value = 1550
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = p2stateno != [154,155]
triggerall = p2bodydist x = [-5,70]
triggerall = statetype != A && Ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),movetype = A
trigger1 = p2bodydist y > -90

;Dark Genocide Hard
[State -1]
type = ChangeState
value = 1550
triggerall = var(58)
triggerall = roundstate = 2
triggerall = p2stateno != [5070,5170]
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype = A
triggerall = enemynear(var(59)),movetype = H
triggerall = statetype != A && ctrl || stateno = 0 || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),vel y >= 0
trigger1 = p2bodydist x = [-5,70]
trigger1 = p2bodydist y > -95 && p2bodydist y < -65

;Dark Genocide Hard
[State -1]
type = ChangeState
value = 1550
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = p2stateno != [154,155]
triggerall = p2bodydist x = [-5,65]
triggerall = statetype != A && Ctrl || stateno = 100 || stateno = 21 || stateno = 22
trigger1 = enemynear(var(59)),movetype = A
trigger1 = enemynear(var(59)),statetype = S

;Dark Barrier Hard
[State -1]
type = null;ChangeState
value = 1210
triggerall = var(58)
triggerall = roundstate = 2
triggerall = enemynear(var(59)),statetype != L
triggerall = enemynear(var(59)),statetype != A
triggerall =enemynear(var(59)),animtime <= -7
triggerall = statetype != A && ctrl || stateno = 100 || stateno = 21 || stateno = 22
triggerall = p2bodydist x >= 100
trigger1 = enemynear(var(59)),movetype = A
trigger1 = enemynear(var(59)),numproj

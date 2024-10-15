;Ken-X's Command File


;CPU commands

[Command]
name = "cpu_1"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_2"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_3"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_4"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_5"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_6"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_7"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_8"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_9"
command = s, s, s, s, s
time = 1

[Command]
name = "cpu_10"
command = U, D, U, D, U
time = 1

[Command]
name = "cpu_11"
command = D, U, D, U, D
time = 1

[Command]
name = "cpu_12"
command = U, U, U, U, U
time = 1

[Command]
name = "cpu_13"
command = D, D, D, D, D
time = 1

[Command]
name = "cpu_14"
command = x, x, x, x, x
time = 1

[Command]
name = "cpu_15"
command = y, y, y, y, y
time = 1

[Command]
name = "cpu_16"
command = z, z, z, z, z
time = 1

[Command]
name = "cpu_17"
command = a, a, a, a, a
time = 1

[Command]
name = "cpu_18"
command = b, b, b, b, b
time = 1

[Command]
name = "cpu_19"
command = c, c, c, c, c
time = 1

[Command]
name = "cpu_20"
command = s, s, s, s, s
time = 1


;-| Super Motions |--------------------------------------------------------


;[Command]
;name = "burstmode"
;command = ~D, DF, F, c+z


[command]
name = "Violent Shoryureppa"
command = ~D,B,a+b
time = 20
[command]
name = "Violent Shoryureppa"
command = ~D,B,b+c
   time = 20
[command]
name = "Violent Shoryureppa"
command = ~D,B,a+c
time = 20
[Command]
name = "hadoburst"
command = ~D, B, y+z
 time = 20
[Command]
name = "hadoburst"
command = ~D,  B, x+y
 time = 20
[Command]
name = "hadoburst"
command = ~D, B, x+z
time = 20
[Command]
name = "shoryureppa"
command = ~D,  F, x+y
time = 20
[Command]
name = "shoryureppa"
command = ~D,  F, x+z
 time = 20
[Command]
name = "shoryureppa"
command = ~D,  F, y+z
 time = 20
[Command]
name = "jinrai"
command = ~D,  B, a+b
 time = 20
[Command]
name = "jinrai"
command = ~D,  B, a+c
 time = 20
[Command]
name = "jinrai"
command = ~D, B, b+c
  time = 20
[Command]
name = "shinryuken"
command = ~D, F, a+b
  time = 20
[Command]
name = "shinryuken"
command = ~D,  F, a+c
  time = 20
[Command]
name = "shinryuken"
command = ~D,  F, b+c
  time = 20
;-| Special Motions |------------------------------------------------------



[Command]
name = "dpunch_x"
command = ~F, D, F, x
 time = 22
[Command]
name = "dpunch_y"
command = ~F, D, F, y
  time = 22
[Command]
name = "dpunch_z"
command = ~F, D, F, z
  time = 22
[Command]
name = "hadoken_x"
command = ~D, F, x
    time = 20
[Command]
name = "hadoken_y"
command = ~D,  F, y
 time = 20
[Command]
name = "hadoken_z"
command = ~D,  F, z
  time = 20

[Command]
name = "fake"
command = ~D,  F, s
  time = 20
[Command]
name = "hkick_a"
command = ~D,  B, a
 time = 20
[Command]
name = "hkick_b"
command = ~D,  B, b
  time = 20
[Command]
name = "hkick_c"
command = ~D,  B, c
  time = 20
[Command]
name = "rollinghkick"
command = ~D,  F, a
  time = 20
[Command]
name = "rollinghkick"
command = ~D,  F, b
  time = 20
[Command]
name = "rollinghkick"
command = ~D,  F, c
  time = 20
[Command]
name = "superjump"
command = D, $U
  time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, x
  time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, y
  time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, z
   time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, a
   time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, b
   time = 20
[Command]
name = "recoveryroll"
command = ~B,  D, c
  time = 20
[Command]
name = "alphacounter"
command = F, x

[Command]
name = "alphacounter"
command = F, y

[Command]
name = "alphacounter"
command = F, z

[Command]
name = "alphacounter2"
command = F, a

[Command]
name = "alphacounter2"
command = F, b

[Command]
name = "alphacounter2"
command = F, c

;-| Double Tap |-----------------------------------------------------------
[Command]
name = "FF"     ;Required (do not remove)
command = F, F
time = 20

[Command]
name = "BB"     ;Required (do not remove)
command = B, B
time = 20

;-| 2/3 Button Combination |-----------------------------------------------
[Command]
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "xy"
command = x+y
time = 1

[Command]
name = "yz"
command = y+z
time = 1

[Command]
name = "xz"
command = x+z
time = 1

[Command]
name = "xyz"
command = x+y+z
time = 1

;-| Dir + Button |---------------------------------------------------------
[Command]
name = "fwd_a"
command = /F,a
time = 1

[Command]
name = "fwd_b"
command = /F,b
time = 1

[Command]
name = "fwd_c"
command = /F,c
time = 1

[Command]
name = "fwd_x"
command = /F,x
time = 1

[Command]
name = "fwd_y"
command = /F,y
time = 1

[Command]
name = "fwd_z"
command = /F,z
time = 1

[Command]
name = "back_a"
command = /B,a
time = 1

[Command]
name = "back_b"
command = /B,b
time = 1

[Command]
name = "back_c"
command = /B,c
time = 1

[Command]
name = "back_x"
command =/B,x
time = 1

[Command]
name = "back_y"
command =/B,y
time = 1

[Command]
name = "back_z"
command =/B,z
time = 1

[Command]
name = "down_a"
command =/D,a
time = 1

[Command]
name = "down_b"
command =/D,b
time = 1

[Command]
name = "down_c"
command =/D,c
time = 1

[Command]
name = "down_x"
command =/D,x
time = 1

[Command]
name = "down_y"
command =/D,y
time = 1

[Command]
name = "down_z"
command =/D,z
time = 1

[Command]
name = "fwd_ab"
command =/F, a+b
time = 1

[Command]
name = "fwd_bc"
command =/F, b+c
time = 1

[Command]
name = "fwd_xy"
command =/F, x+y
time = 1

[Command]
name = "fwd_yz"
command =/F, y+z
time = 1

[Command]
name = "back_xy"
command =/B, x+y
time = 1

[Command]
name = "back_yz"
command =/B, y+z
time = 1

[Command]
name = "back_ab"
command =/B, a+b
time = 1

[Command]
name = "back_bc"
command =/B, b+c
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
name = "start"
command = s
time = 1

;-| Hold Dir |--------------------------------------------------------------
[Command]
name = "holdfwd";Required (do not remove)
command = /$F
time = 1

[Command]
name = "holdback";Required (do not remove)
command = /$B
time = 1

[Command]
name = "holdup" ;Required (do not remove)
command = /$U
time = 1

[Command]
name = "holddown";Required (do not remove)
command = /$D
time = 1

;---------------------------------------------------------------------------
[Statedef -1]

[State -1, Activate AI]
type = VarSet
trigger1 = command = "cpu_1"
trigger2 = command = "cpu_2"
trigger3 = command = "cpu_3"
trigger4 = command = "cpu_4"
trigger5 = command = "cpu_5"
trigger6 = command = "cpu_6"
trigger7 = command = "cpu_7"
trigger8 = command = "cpu_8"
trigger9 = command = "cpu_9"
trigger10 = command = "cpu_10"
trigger11 = command = "cpu_11"
trigger12 = command = "cpu_12"
trigger13 = command = "cpu_13"
trigger14 = command = "cpu_14"
trigger15 = command = "cpu_15"
trigger16 = command = "cpu_16"
trigger17 = command = "cpu_17"
trigger18 = command = "cpu_18"
trigger19 = command = "cpu_19"
trigger20 = command = "cpu_20"
v = 50 ;You can change this to any number provided that it doesn't collide with other variables.
value = 5


;---------------------------------------------------------------------------




;Violent Shoryureppa
[State -1, V Sho]
type = ChangeState
value = 10000
triggerall = command = "Violent Shoryureppa" && (Power >= 1000)
;trigger1 = (statetype = s) && ctrl
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!
trigger16 = (stateno = 241) && (movecontact)


;===========================================================================
;Special Stuff
;---------------------------------------------------------------------------
;[State -1, Burst Mode Change]
;type = Changestate
;triggerall = command = "burstmode"
;trigger1 = Statetype = S && ctrl
;value = 930

;---------------------------------------------------------------------------
;Alpha Counter - Shoryuken
[State -1, Shoryuken Counter]
type = ChangeState
value = 830
triggerall = (command = "alphacounter") ;&& (power >= 1000)
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Alpha Counter - TatsuMaki
[State -1, Tatsumaki Counter]
type = ChangeState
value = 840
triggerall = (command = "alphacounter2") ;&& (power >= 1000)
trigger1 = stateno = [150,153]

;---------------------------------------------------------------------------
;Begin the Recovery Roll
[State -1]
type = VarSet
triggerall = (roundstate != [0,1]) || (roundstate != [3,4])
triggerall = (Stateno != 5100) && (Stateno != 5110)
trigger1 = (HitFall) && (command = "recoveryroll")
var(2) = 1

;---------------------------------------------------------------------------
;Recovery Roll Variable Set 2
[State -1]
type = VarSet
trigger1 = Lose = 1
var(2) = 0

;---------------------------------------------------------------------------
;Super Jump
[State -1]
type = ChangeState
value = 55650
triggerall = command = "superjump"
trigger1 = (statetype = S) && (ctrl)

;===========================================================================
;Super Moves!
;---------------------------------------------------------------------------
[State -1, Shin Tatsu Maki Senpuu Kyaku]
type = ChangeState
value = 920
triggerall = (command = "shinryuken") && (Power >= 1000) && (winko !=1) && Var(9) = 1
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!
trigger16 = (stateno = [940,948]) && (Pos Y = 0) && (movecontact)  ;Burst Shoryureppa
trigger17 = (stateno = 820) && (movecontact) ;Shippu Jinrai Kyaku
trigger18 = (Stateno = 852) || (Stateno = 862) || (Stateno = 872)  ;The Rolling Strikes

;---------------------------------------------------------------------------
[State -1, Hado Burst (Air)!]
type = ChangeState
value = 910
triggerall = (command = "hadoburst") && (Power >= 1000) && (winko !=1) ;&& Var(9) = 1
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c 
trigger10 = (stateno = 890) && (movecontact) ;Hurricane Kick_A
trigger11 = (stateno = 891) && (movecontact) ;Hurricane Kick_B
trigger12 = (stateno = 892) && (movecontact) ;Hurricane Kick_C
trigger13 = (stateno = 751) && (movecontact) ;Air Hurricane Kick_A
trigger14 = (stateno = 761) && (movecontact) ;Air Hurricane Kick_B
trigger15 = (stateno = 771) && (movecontact) ;Air Hurricane Kick_C

;---------------------------------------------------------------------------
[State -1, Hado Burst (Ground)!]
type = ChangeState
value = 900
triggerall = (command = "hadoburst") && (Power >= 1000) && (winko !=1) ;&& Var(9) = 1
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!
trigger16 = (stateno = [940,948]) && (Pos Y = 0) && (movecontact)  ;Burst Shoryureppa
trigger17 = (stateno = 820) && (movecontact) ;Shippu Jinrai Kyaku
trigger18 = (Stateno = 852) || (Stateno = 862) || (Stateno = 872)  ;The Rolling Strikes

;---------------------------------------------------------------------------
;[State -1, Jinrai Kyaku!]
;type = ChangeState
;value = 820
;triggerall = (command = "jinrai") && (Power >= 1000) && (winko !=1) && palno <= 6
;trigger1 = (statetype != A) && (ctrl)
;trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
;trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
;trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
;trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
;trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
;trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
;trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
;trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
;trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
;trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
;trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
;trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
;trigger14 = (stateno = [101,102]) ;Dash!
;trigger15 = (stateno = 105)  ;Back Dash!
;trigger16 = (stateno = [790,796]) && (movecontact)  ;Shoryureppa
;trigger17 = (stateno = [940,948]) && (Pos Y = 0) && (movecontact)  ;Burst Shoryureppa
;trigger18 = (Stateno = 852) || (Stateno = 862) || (Stateno = 872)  ;The Rolling Strikes
;trigger19 = (stateno = 241) && (movecontact)

;---------------------------------------------------------------------------
[State -1, Shinryuuuuken!]
type = ChangeState
value = 800
triggerall = (command = "shinryuken") && (Power >= 1000) && (winko !=1) && Var(9) = 0
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!
trigger16 = (stateno = [790,796]) && (movecontact)  ;Shoryureppa
trigger17 = (stateno = 820) && (movecontact) ;Shippu Jinrai Kyaku
trigger18 = (stateno = 10000) && (movecontact) && palno >=7

;---------------------------------------------------------------------------
;[State -1, Shoryureppa!]
;type = ChangeState
;value = Ifelse(Var(9) = 0, 790, 940)
;triggerall = palno <= 6
;triggerall = (command = "shoryureppa") && (Power >= 1000) && (winko !=1)
;trigger1 = (statetype != A) && (ctrl)
;trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
;trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
;trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
;trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
;trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
;trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
;trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
;trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
;trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
;trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
;trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
;trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
;trigger14 = (stateno = [101,102]) ;Dash!
;trigger15 = (stateno = 105)  ;Back Dash!
;trigger16 = (stateno = 820) && (movecontact) ;Shippu Jinrai Kyaku
;trigger17 = (Stateno = 852) || (Stateno = 862) || (Stateno = 872)  ;The Rolling Strikes
;trigger18 = (stateno = 241) && (movecontact)

;===========================================================================
;Special Moves
;---------------------------------------------------------------------------
[State -1, Hurricane Kick_A]
type = ChangeState
value = IfElse(Var(9) = 1, 890, 750)
triggerall = (command = "hkick_a")
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
;trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger13 = (stateno = [101,102]) ;Dash!
trigger14 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Hurricane Kick_B]
type = ChangeState
value = IfElse(Var(9) = 1, 891, 760)
triggerall = (command = "hkick_b")
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
;trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger13 = (stateno = [101,102]) ;Dash!
trigger14 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Hurricane Kick_C]
type = ChangeState
value = IfElse(Var(9) = 1, 892, 770)
triggerall = (command = "hkick_c")
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
;trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger13 = (stateno = [101,102]) ;Dash!
trigger14 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Air Hurricane Kick_A]
type = ChangeState
value = 751
triggerall = (command = "hkick_a") 
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c 

;---------------------------------------------------------------------------
[State -1, Air Hurricane Kick_B]
type = ChangeState
value = 761
triggerall = (command = "hkick_b") 
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c 

;---------------------------------------------------------------------------
[State -1, Air Hurricane Kick_C]
type = ChangeState
value = 771
triggerall = (command = "hkick_c") 
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c 

;---------------------------------------------------------------------------
[State -1, Dragon Punch_X]
type = ChangeState
value = 720
triggerall = command = "dpunch_x"
trigger1 = (movetype !=H) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = 630) && (movecontact)   ;jump_a
trigger15 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger16 = (stateno = 641) && (movecontact)   ;jump_b 
trigger17 = (stateno = 600) && (movecontact)   ;jump_x 
trigger18 = (stateno = 610) && (movecontact)   ;jump_y  
trigger19 = (stateno = 620) && (movecontact)   ;jump_z 
trigger20 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger21 = (stateno = 651) && (movecontact)   ;jump_c 
trigger22 = (stateno = [101,102]) ;Dash!
trigger23 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Dragon Punch_Y]
type = ChangeState
value = 730
triggerall = command = "dpunch_y"
trigger1 = (movetype !=H) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = 630) && (movecontact)   ;jump_a
trigger15 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger16 = (stateno = 641) && (movecontact)   ;jump_b 
trigger17 = (stateno = 600) && (movecontact)   ;jump_x 
trigger18 = (stateno = 610) && (movecontact)   ;jump_y  
trigger19 = (stateno = 620) && (movecontact)   ;jump_z 
trigger20 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger21 = (stateno = 651) && (movecontact)   ;jump_c 
trigger22 = (stateno = [101,102]) ;Dash!
trigger23 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Dragon Punch_Z]
type = ChangeState
value = 740
triggerall = command = "dpunch_z"
trigger1 = (movetype !=H) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = 630) && (movecontact)   ;jump_a
trigger15 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger16 = (stateno = 641) && (movecontact)   ;jump_b 
trigger17 = (stateno = 600) && (movecontact)   ;jump_x 
trigger18 = (stateno = 610) && (movecontact)   ;jump_y  
trigger19 = (stateno = 620) && (movecontact)   ;jump_z 
trigger20 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger21 = (stateno = 651) && (movecontact)   ;jump_c 
trigger22 = (stateno = [101,102]) ;Dash!
trigger23 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Air Fireball_X]
type = ChangeState
value = 710
triggerall = (command = "hadoken_x") && (NumHelper(705) = 0) && Var(9) = 0
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c

;---------------------------------------------------------------------------
[State -1, Air Fireball_Y]
type = ChangeState
value = 711
triggerall = (command = "hadoken_y") && (NumHelper(705) = 0) && Var(9) = 0
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c

;---------------------------------------------------------------------------
[State -1, Air Fireball_Z]
type = ChangeState
value = 712
triggerall = (command = "hadoken_z") && (NumHelper(705) = 0) && Var(9) = 0
trigger1 = (statetype = A) && (ctrl) 
trigger2 = (stateno = 630) && (movecontact)   ;jump_a
trigger3 = (stateno = 640) && (movecontact)   ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)   ;jump_b 
trigger5 = (stateno = 600) && (movecontact)   ;jump_x 
trigger6 = (stateno = 610) && (movecontact)   ;jump_y  
trigger7 = (stateno = 620) && (movecontact)   ;jump_z 
trigger8 = (stateno = 650) && (movecontact)   ;jump_c (hold up)
trigger9 = (stateno = 651) && (movecontact)   ;jump_c 

;---------------------------------------------------------------------------
[State -1, Rolling Strike_X]
type = ChangeState
value = 850
triggerall = (command = "hadoken_x") && Var(9) = 1
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Rolling Strike_Y]
type = ChangeState
value = 860
triggerall = (command = "hadoken_y") && Var(9) = 1
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Rolling Strike_Z]
type = ChangeState
value = 870
triggerall = (command = "hadoken_z") && Var(9) = 1
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Fireball_X]
type = ChangeState
value = 700
triggerall = (command = "hadoken_x") && (NumHelper(704) = 0) && Var(9) = 0
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Fireball_Y]
type = ChangeState
value = 701
triggerall = (command = "hadoken_y") && (NumHelper(704) = 0) && Var(9) = 0
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Fireball_Z]
type = ChangeState
value = 702
triggerall = (command = "hadoken_z") && (NumHelper(704) = 0) && Var(9) = 0
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Fake!]
type = ChangeState
value = 703
triggerall = (command = "fake")
trigger1 = (statetype != A) && (ctrl)
trigger2 = (stateno = 200) && (movecontact)   ;Stand_x
trigger3 = (stateno = 210) && (movecontact)   ;Stand_y
trigger4 = (stateno = 220) && (movecontact)   ;Stand_z
trigger5 = (stateno = 230) && (movecontact)   ;Stand_a   
trigger6 = (stateno = 240) && (movecontact)   ;Stand_b
trigger7 = (stateno = 250) && (movecontact)   ;Stand_c
trigger8 = (stateno = 400) && (movecontact)   ;Crouch_x
trigger9 = (stateno = 410) && (movecontact)   ;Crouch_y
trigger10 = (stateno = 420) && (movecontact)  ;Crouch_z
trigger11 = (stateno = 430) && (movecontact)  ;Crouch_a
trigger12 = (stateno = 440) && (movecontact)  ;Crouch_b
trigger13 = (stateno = 450) && (movecontact)  ;Crouch_c
trigger14 = (stateno = [101,102]) ;Dash!
trigger15 = (stateno = 105)  ;Back Dash!

;===========================================================================
;Basic Stuff, like Throws and Dashes
;---------------------------------------------------------------------------
[State -1, Fwd Dash]
type = ChangeState
value = 100
triggerall = stateno != [100,102]
trigger1 = command = "FF"
trigger1 = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
[State -1, Back Dash]
type = ChangeState
value = 105
triggerall = Stateno != 105
trigger1 = command = "BB"
trigger1 = (statetype = S) && (ctrl)

;---------------------------------------------------------------------------
[State -1, Taunt!]
type = ChangeState
value = 195
triggerall = command = "start"
trigger1 = (statetype = S) && (ctrl)
trigger2 = (stateno = [101,102]) ;Dash!
trigger3 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Air Throw_Z]
type = ChangeState
value = 670
triggerall = (P2BodyDist X <= 10) && (statetype = A) && (P2Statetype = A)
trigger1 = (command = "fwd_z") && (command != "holddown") && (ctrl)
trigger2 = (command = "back_z") && (command != "holddown") && (ctrl)

;---------------------------------------------------------------------------
[State -1, Stand Throw_Z]
type = ChangeState
value = 660
triggerall = (statetype = S) && (ctrl) && (P2statetype = S) && (P2movetype != H)
trigger1 = (command = "fwd_z") && (stateno != 100) && (p2bodydist X <= 10)   
trigger2 = (command = "back_z") && (stateno != 100) && (p2bodydist X <= 10)

;---------------------------------------------------------------------------
[State -1, Stand Throw_C]
type = ChangeState
value = 690
triggerall = (statetype = S) && (ctrl) && (P2statetype = S) && (P2movetype != H)
trigger1 = (command = "fwd_c") && (stateno != 100) && (p2bodydist X <= 10)   
trigger2 = (command = "back_c") && (stateno != 100) && (p2bodydist X <= 10)

;===========================================================================
;Basic Moves, Weak-Strong Punch, etc.
;---------------------------------------------------------------------------
[State -1, Stand_X]
type = ChangeState
value = 200
triggerall = (command = "x") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (stateno = [101,102]) ;Dash!
trigger3 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Stand_Y]
type = ChangeState
value = 210
triggerall = (command = "y") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (stateno = [101,102]) ;Dash!
trigger7 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Stand_Z]
type = ChangeState
value = 220
triggerall = (command = "z") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (movecontact) && (stateno = 210)   ;stand_y
trigger7 = (movecontact) && (stateno = 440)   ;crouch_b 
trigger8 = (movecontact) && (stateno = 240)   ;stand_b 
trigger9 = (movecontact) && (stateno = 410)   ;crouch_y
trigger10 = (stateno = [101,102]) ;Dash!
trigger11 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Stand_A]
type = ChangeState
value = 230
triggerall = (command = "a") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (stateno = [101,102]) ;Dash!
trigger3 = (stateno = 105)  ;Back Dash!
trigger4 = (stateno = 200) && (movecontact)
trigger5 = (movecontact) && (stateno = 210)   ;stand_y
trigger6 = (movecontact) && (stateno = 200)   ;stand_x

;---------------------------------------------------------------------------
[State -1, Axe Kick!]
type = ChangeState
value = 241
triggerall = (command = "fwd_b") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (stateno = [101,102]) ;Dash!
trigger3 = (stateno = 105)  ;Back Dash!
trigger4 = (movecontact) && (stateno = 200)   ;stand_x
trigger5 = (movecontact) && (stateno = 400)   ;crouch_x
trigger6 = (movecontact) && (stateno = 230)   ;stand_a
trigger7 = (movecontact) && (stateno = 430)   ;crouch_a

;---------------------------------------------------------------------------
[State -1, Stand_B]
type = ChangeState
value = 240
triggerall = (command = "b") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (stateno = [101,102]) ;Dash!
trigger7 = (stateno = 105)  ;Back Dash!
trigger8 = (movecontact) && (stateno = 210)   ;stand_y

;---------------------------------------------------------------------------
[State -1, Ushiro Mawashi Geri]
type = ChangeState
value = 259
triggerall = (command = "fwd_c") && (command != "holddown") ;&& Var(9) = 1
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (movecontact) && (stateno = 210)   ;stand_y
trigger7 = (movecontact) && (stateno = 440)   ;crouch_b 
trigger8 = (movecontact) && (stateno = 240)   ;stand_b 
trigger9 = (movecontact) && (stateno = 410)   ;crouch_y
trigger10 = (stateno = [101,102]) ;Dash!
trigger11 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Stand_C]
type = ChangeState
value = 250
triggerall = (command = "c") && (command != "holddown")
trigger1 = (statetype = S) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (movecontact) && (stateno = 210)   ;stand_y
trigger7 = (movecontact) && (stateno = 440)   ;crouch_b 
trigger8 = (movecontact) && (stateno = 240)   ;stand_b 
trigger9 = (movecontact) && (stateno = 410)   ;crouch_y
trigger10 = (stateno = [101,102]) ;Dash!
trigger11 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Crouch_X]
type = ChangeState
value = 400
triggerall = (command = "x") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (stateno = [101,102]) ;Dash!
trigger3 = (stateno = 105)  ;Back Dash!
;trigger4 = (movecontact) && (stateno = 430)   ;crouch_a
;trigger5 = (movecontact) && (stateno = 440)   ;crouch_b

;---------------------------------------------------------------------------
[State -1, Crouch_Y]
type = ChangeState
value = 410
triggerall = (command = "y") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
;trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
;trigger6 = (movecontact) && (stateno = 440)   ;crouch_b
trigger7 = (stateno = [101,102]) ;Dash!
trigger8 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Crouch_Z (Launcher)]
type = ChangeState
value = 420
triggerall = (command = "z") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (movecontact) && (stateno = 210)   ;stand_y
trigger7 = (movecontact) && (stateno = 440)   ;crouch_b 
trigger8 = (movecontact) && (stateno = 240)   ;stand_b 
trigger9 = (movecontact) && (stateno = 410)   ;crouch_y
trigger10 = (stateno = [101,102]) ;Dash!
trigger11 = (stateno = 105)  ;Back Dash!

;---------------------------------------------------------------------------
[State -1, Crouch_A]
type = ChangeState
value = 430
triggerall = (command = "a") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (stateno = 400) && (movecontact)   ;crouch_x
trigger3 = (stateno = [101,102]) ;Dash!
trigger4 = (stateno = 105)  ;Back Dash!
trigger5 = (movecontact) && (stateno = 410)   ;crouch_y

;---------------------------------------------------------------------------
[State -1, Crouch_B]
type = ChangeState
value = 440
triggerall = (command = "b") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (stateno = [101,102]) ;Dash!
trigger7 = (stateno = 105)  ;Back Dash!
trigger8 = (movecontact) && (stateno = 410)   ;crouch_y

;---------------------------------------------------------------------------
[State -1, Crouch_C (Trip)]
type = ChangeState
value = 450
triggerall = (command = "c") && (command = "holddown")
trigger1 = (statetype = C) && (ctrl) 
trigger2 = (movecontact) && (stateno = 200)   ;stand_x
trigger3 = (movecontact) && (stateno = 400)   ;crouch_x
trigger4 = (movecontact) && (stateno = 230)   ;stand_a
trigger5 = (movecontact) && (stateno = 430)   ;crouch_a
trigger6 = (movecontact) && (stateno = 210)   ;stand_y
trigger7 = (movecontact) && (stateno = 440)   ;crouch_b 
trigger8 = (movecontact) && (stateno = 240)   ;stand_b 
trigger9 = (movecontact) && (stateno = 410)   ;crouch_y
trigger10 = (stateno = [101,102]) ;Dash!
trigger11 = (stateno = 105)  ;Back Dash!


;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Jump_X]
type = ChangeState
value = 600
triggerall = command = "x"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 610) && (movecontact)
trigger3 = (stateno = 630) && (movecontact)
trigger4 = (stateno = 640) && (movecontact)
trigger5 = (stateno = 641) && (movecontact)
;---------------------------------------------------------------------------
[State -1, Jump_Y]
type = ChangeState
value = 610
triggerall = command = "y"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 600) && (movecontact)  ;jump_x
trigger4 = (stateno = 640) && (movecontact)
trigger5 = (stateno = 641) && (movecontact)
;---------------------------------------------------------------------------
[State -1, Jump_Z]
type = ChangeState
value = 620
triggerall = command = "z"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 640) && (movecontact)  ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)  ;jump_b
trigger5 = (stateno = 600) && (movecontact)  ;jump_x
trigger6 = (stateno = 610) && (movecontact)  ;jump_y
trigger7 = (stateno = 640) && (movecontact) && (p2statetype = A)   ;jump_c (hold up)
trigger8 = (stateno = 641) && (MoveContact) && (p2statetype = A)   ;jump_c

;---------------------------------------------------------------------------
[State -1, Jump_A]
type = ChangeState
value = 630
triggerall = command = "a"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 600) && (movecontact) && (p2statetype = A)  ;jump_x
trigger3 = (stateno = 610) && (movecontact)
trigger4 = (stateno = 640) && (movecontact)
trigger5 = (stateno = 641) && (movecontact)

;---------------------------------------------------------------------------
[State -1, Jump_Up+B]
type = ChangeState
value = 640
triggerall = (command = "b") && (command = "holdup")
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 600) && (movecontact)  ;jump_x
trigger4 = (stateno = 610) && (movecontact) && (P2statetype = A)  ;jump_y
trigger5 = (stateno = 641) && (movecontact)

;---------------------------------------------------------------------------
[State -1, Jump_Up+C]
type = ChangeState
value = 650
triggerall = (command = "c") && (command = "holdup")
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 640) && (movecontact)  ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)  ;jump_b
trigger5 = (stateno = 600) && (movecontact)  ;jump_x
trigger6 = (stateno = 610) && (movecontact)  ;jump_y
trigger7 = (stateno = 620) && (movecontact) && (p2statetype = A)   ;jump_z

;---------------------------------------------------------------------------
[State -1, Jump_B]
type = ChangeState
value = 641
triggerall = command = "b"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 600) && (movecontact)  ;jump_x
trigger4 = (stateno = 610) && (movecontact) && (P2statetype = A)  ;jump_y

;---------------------------------------------------------------------------
[State -1, Jump_C]
type = ChangeState
value = 651
triggerall = command = "c"
trigger1 = (statetype = A) && (ctrl)
trigger2 = (stateno = 630) && (movecontact)  ;jump_a
trigger3 = (stateno = 640) && (movecontact)  ;jump_b (hold up)
trigger4 = (stateno = 641) && (movecontact)  ;jump_b
trigger5 = (stateno = 600) && (movecontact)  ;jump_x
trigger6 = (stateno = 610) && (movecontact)  ;jump_y
trigger7 = (stateno = 620) && (movecontact) && (p2statetype = A)   ;jump_z


;---------------------------------------------------------------------------
; Activate A.I.

[State -1]
type = VarSet
trigger1 = command = "cpu_1"
trigger2 = command = "cpu_2"
trigger3 = command = "cpu_3"
trigger4 = command = "cpu_4"
trigger5 = command = "cpu_5"
trigger6 = command = "cpu_6"
trigger7 = command = "cpu_7"
trigger8 = command = "cpu_8"
trigger9 = command = "cpu_9"
trigger10 = command = "cpu_10"
trigger11 = command = "cpu_11"
trigger12 = command = "cpu_12"
trigger13 = command = "cpu_13"
trigger14 = command = "cpu_14"
trigger15 = command = "cpu_15"
trigger16 = command = "cpu_16"
trigger17 = command = "cpu_17"
trigger18 = command = "cpu_18"
trigger19 = command = "cpu_19"
trigger20 = command = "cpu_20"
v = 59
value = 1






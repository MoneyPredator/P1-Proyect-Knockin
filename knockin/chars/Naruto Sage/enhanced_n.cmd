; The CMD file.
;
; Two parts: 1. Command definition and  2. State entry
; (state entry is after the commands def section)
;
; 1. Command definition
; ---------------------
; Note: The commands are CASE-SENSITIVE, and so are the command names.
; The eight directions are:
;   B, DB, D, DF, F, UF, U, UB     (all CAPS)
;   corresponding to back, down-back, down, downforward, etc.
; The six buttons are:
;   a, b, c, x, y, z               (all lower case)
;   In default key config, abc are are the bottom, and xyz are on the
;   top row. For 2 button characters, we recommend you use a and b.
;   For 6 button characters, use abc for kicks and xyz for punches.
;
; Each [Command] section defines a command that you can use for
; state entry, as well as in the CNS file.
; The command section should look like:
;
;   [Command]
;   name = some_name
;   command = the_command
;   time = time (optional -- defaults to 15 if omitted)
;
; - some_name
;   A name to give that command. You'll use this name to refer to
;   that command in the state entry, as well as the CNS. It is case-
;   sensitive (QCB_a is NOT the same as Qcb_a or QCB_A).
;
; - command
;   list of buttons or directions, separated by commas.
;   Directions and buttons can be preceded by special characters:
;   slash (/) - means the key must be held down
;          egs. command = /D       ;hold the down direction
;               command = /DB, a   ;hold down-back while you press a
;   tilde (~) - to detect key releases
;          egs. command = ~a       ;release the a button
;               command = ~D, F, a ;release down, press fwd, then a
;          If you want to detect "charge moves", you can specify
;          the time the key must be held down for (in game-ticks)
;          egs. command = ~30a     ;hold a for at least 30 ticks, then release
;   dollar ($) - Direction-only: detect as 4-way
;          egs. command = $D       ;will detect if D, DB or DF is held
;               command = $B       ;will detect if B, DB or UB is held
;   plus (+) - Buttons only: simultaneous press
;          egs. command = a+b      ;press a and b at the same time
;               command = x+y+z    ;press x, y and z at the same time
;   You can combine them:
;     eg. command = ~30$D, a+b     ;hold D, DB or DF for 30 ticks, release,
;                                  ;then press a and b together
;   It's recommended that for most "motion" commads, eg. quarter-circle-fwd,
;   you start off with a "release direction". This matches the way most
;   popular fighting games implement their command detection.
;
; - time (optional)
;   Time allowed to do the command, given in game-ticks. Defaults to 15
;   if omitted
;
; If you have two or more commands with the same name, all of them will
; work. You can use it to allow multiple motions for the same move.
;
; Some common commands examples are given below.
;
; [Command] ;Quarter circle forward + x
; name = "QCF_x"
; command = ~D, DF, F, x
;
; [Command] ;Half circle back + a
; name = "HCB_a"
; command = ~F, DF, D, DB, B, a
;
; [Command] ;Two quarter circles forward + y
; name = "2QCF_y"
; command = ~D, DF, F, D, DF, F, y
;
; [Command] ;Tap b rapidly
; name = "5b"
; command = b, b, b, b, b
; time = 30
;
; [Command] ;Charge back, then forward + z
; name = "charge_B_F_z"
; command = ~60$B, F, z
; time = 10
; 
; [Command] ;Charge down, then up + c
; name = "charge_D_U_c"
; command = ~60$D, U, c
; time = 10
; 

;-| Button Remapping |-----------------------------------------------------
; This section lets you remap the player's buttons (to easily change the
; button configuration). The format is:
;   old_button = new_button
; If new_button is left blank, the button cannot be pressed.
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = y

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 30

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1

;-| Super Motions |--------------------------------------------------------

;-| Special Motions |------------------------------------------------------
[Command]
name = "QCB_A"
command = D,DB,B,a
time = 15
[Command]
name = "QCB_B"
command = D,DB,B,b
time = 15
[Command]
name = "QCB_C"
command = D,DB,B,c
time = 15
[Command]
name = "QCB_X"
command = D,DB,B,x
time = 15
[Command]
name = "QCB_Y"
command = D,DB,B,y
time = 15
[Command]
name = "QCF_A"
command = D,DF,F,a
time = 15
[Command]
name = "QCF_B"
command = D,DF,F,b
time = 15
[Command]
name = "QCF_C"
command = D,DF,F,c
time = 15
[Command]
name = "QCF_X"
command = D,DF,F,x
time = 15
[Command]
name = "QCF_Y"
command = D,DF,F,y
time = 15
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
; This is where you define what commands bring you to what states.
;
; Each state entry block looks like:
;   [State -1, Label]           ;Change Label to any name you want to use to
;                               ;identify the state with.
;   type = ChangeState          ;Don't change this
;   value = new_state_number
;   trigger1 = command = command_name
;   . . .  (any additional triggers)
;
; - new_state_number is the number of the state to change to
; - command_name is the name of the command (from the section above)
; - Useful triggers to know:
;   - statetype
;       S, C or A : current state-type of player (stand, crouch, air)
;   - ctrl
;       0 or 1 : 1 if player has control. Unless "interrupting" another
;                move, you'll want ctrl = 1
;   - stateno
;       number of state player is in - useful for "move interrupts"
;   - movecontact
;       0 or 1 : 1 if player's last attack touched the opponent
;                useful for "move interrupts"
;
; Note: The order of state entry is important.
;   State entry with a certain command must come before another state
;   entry with a command that is the subset of the first.  
;   For example, command "fwd_a" must be listed before "a", and
;   "fwd_ab" should come before both of the others.
;
; For reference on triggers, see CNS documentation.
;
; Just for your information (skip if you're not interested):
; This part is an extension of the CNS. "State -1" is a special state
; that is executed once every game-tick, regardless of what other state
; you are in.


; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;===========================================================================
;---------------------------------------------------------------------------
----------------------------------------
[State -1, Oodama Rasengan]
type = ChangeState
value = 999
trigger1 = command = "a" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 1000
trigger1 = statetype = C
trigger1 = ctrl
----------------------------------------
[State -1, Rasenregan]
type = ChangeState
value = 1010
trigger1 = command = "b" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 1500
trigger1 = statetype = C
trigger1 = ctrl
----------------------------------------
[State -1, Tajuu Kage Bunshin]
type = ChangeState
value = 1020
trigger1 = command = "c" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 1500
trigger1 = statetype = C
trigger1 = ctrl
----------------------------------------
[State -1, Cho Oodama Rasengan]
type = ChangeState
value = 1030
trigger1 = command = "x" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 2000
trigger1 = statetype = C
trigger1 = ctrl
----------------------------------------
[State -1, Futon: Rasen Shuriken]
type = ChangeState
value = 1040
trigger1 = command = "y" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 3000
trigger1 = statetype = C
trigger1 = ctrl
----------------------------------------
[State -1, Six Tails Kyubi]
type = ChangeState
value = 1050
trigger1 = command = "z" && command = "holddown"
trigger1 = numhelper(751) = 0
trigger1 = power >= 1500
trigger1 = statetype = C
trigger1 = ctrl
;===========================================================================
;---------------------------------------------------------------------------
; Run Fwd
[State -1, Run Fwd]
type = ChangeState
value = 100
trigger1 = command = "FF"
trigger1 = statetype = S
trigger1 = ctrl

;---------------------------------------------------------------------------
; Run Back
[State -1, Run Back]
type = ChangeState
value = 105
trigger1 = command = "BB"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Rasengan]
type = ChangeState
value = 900
trigger1 = command = "QCF_X"
trigger1 = power >= 600
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Frog Summon]
type = ChangeState
value = 910
trigger1 = command = "QCF_B"
trigger1 = power >= 100
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Futon: Rasengan]
type = ChangeState
value = 920
trigger1 = command = "QCB_A"
trigger1 = power >= 800
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Rasengan Launcher]
type = ChangeState
value = 930
trigger1 = command = "QCF_A"
trigger1 = power >= 700
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Kage Bunshin]
type = ChangeState
value = 940
trigger1 = command = "QCF_Y"
trigger1 = power >= 750 && numhelper(941)+numhelper(801) < 5
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Toad Blade Cut]
type = ChangeState
value = 950
trigger1 = command = "QCB_B"
trigger1 = power >= 300
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Frog Song]
type = ChangeState
value = 960
trigger1 = command = "QCB_X"
trigger1 = power >= 800
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Counter]
type = ChangeState
value = 970
trigger1 = command = "QCB_Y"
triggerall = power >= 100
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Big Shuriken]
type = ChangeState
value = 980
trigger1 = power >= 250
trigger1 = command = "QCF_C"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Explosive Kunais]
type = ChangeState
value = 990
trigger1 = command = "QCB_C"
trigger1 = power >= 200
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Clone Charger]
type = ChangeState
value = 800
trigger1 = numhelper(941)+numhelper(801) < 5
trigger1 = numhelper(801) = 0
trigger1 = command = "x"
trigger1 = power >= 500
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Frog Katas]
type = ChangeState
value = 750
trigger1 = numhelper(751) = 0
trigger1 = power >= 3000
trigger1 = command = "y"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Hyper Punch]
type = ChangeState
value = 752
trigger1 = numhelper(751) = 1
trigger1 = command = "y"
trigger1 = power >= 700
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Air Rasengan]
type = ChangeState
value = 620
trigger1 = command = "x"
trigger1 = power >= 300
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Kage Bunshin Barrage]
type = ChangeState
value = 630
trigger1 = command = "y"
trigger1 = power >= 300
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Air Frog Summon]
type = ChangeState
value = 640
trigger1 = command = "s"
trigger1 = power >= 400
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Combo]
type = ChangeState
value = 200
trigger1 = command = "a"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Strong Combo]
type = ChangeState
value = 230
trigger1 = command = "b"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Air Attack]
type = ChangeState
value = 600
trigger1 = command = "a"
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Strong Air Attack]
type = ChangeState
value = 610
trigger1 = command = "b"
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Weapon]
type = ChangeState
value = 300
trigger1 = command = "c"
trigger1 = statetype = S
trigger1 = ctrl
----------------------------------------
[State -1, Air Weapon]
type = ChangeState
value = 310
trigger1 = command = "c"
trigger1 = statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Teleport]
type = ChangeState
value = 700
trigger1 = command = "z"
trigger1 = power >= 50
trigger1 = statetype = S || statetype = A
trigger1 = ctrl
----------------------------------------
[State -1, Chakra Charge]
type = ChangeState
value = 850
trigger1 = command = "s"
triggerall = power < powermax
trigger1 = statetype = S
trigger1 = ctrl



; AI-specific Commands
[Command]
name = "cpu_attack"
command = F, F, a
time = 10

[Command]
name = "cpu_defend"
command = B, B, b
time = 15

[Command]
name = "cpu_special"
command = D, DF, F, x+y
time = 20


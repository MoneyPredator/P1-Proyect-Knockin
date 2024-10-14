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
s = s

;-| Default Values |-------------------------------------------------------
[Defaults]
; Default value for the "time" parameter of a Command. Minimum 1.
command.time = 15

; Default value for the "buffer.time" parameter of a Command. Minimum 1,
; maximum 30.
command.buffer.time = 1


;-| AI switch |--------------------------------------------------------

[Command]
name = "AI1"
command = ~c, c, c, c, c
time = 1

[Command]
name = "AI2"
command = ~a, a, a, a, a
time = 1

[Command]
name = "AI3"
command = ~b, b, b, b, b
time = 1

[Command]
name = "AI4"
command = ~x, x, x, x, x
time = 1

[Command]
name = "AI5"
command = ~y, y, y, y, y
time = 1

[Command]
name = "AI6"
command = ~z, z, z, z, z
time = 1

[Command]
name = "AI7"
command = ~c, c, c, c
time = 1

[Command]
name = "AI8"
command = ~a, a, a, a
time = 1

[Command]
name = "AI9"
command = ~b, b, b, b
time = 1

[Command]
name = "AI10"
command = ~x, x, x, x
time = 1

[Command]
name = "AI11"
command = ~x, x, x, x, x ,x
time = 1

[Command]
name = "AI12"
command = ~y, y, y, y, y ,y
time = 1

[Command]
name = "AI13"
command = ~z, z, z, z, z ,z
time = 1

[Command]
name = "AI14"
command = ~a, a, a, a, a ,a
time = 1

[Command]
name = "AI15"
command = ~b, b, b, b, b ,b
time = 1

[Command]
name = "AI16"
command = ~c, c, c, c, c, c
time = 1

[Command]
name = "AI17"
command = ~D, D, D, D, D
time = 1

[Command]
name = "AI18"
command = ~D, D, F, a ,x
time = 1

[Command]
name = "AI19"
command = ~D, D, F, b ,x
time = 1

[Command]
name = "AI20"
command = ~D, D, F, x,x

[Command]
name = "AI21"
command = ~D, D, F, B, c ,y
time = 1

[Command]
name = "AI22"
command = ~D, D, F, B, a ,y
time = 1

[Command]
name = "AI23"
command = ~D, D, F, B, b ,y
time = 1

[Command]
name = "AI24"
command = ~D, D, F, B, x ,y
time = 1

[Command]
name = "AI25"
command = ~D, D, F, B, y ,y
time = 1

[Command]
name = "AI26"
command = ~D, D, F, B, z ,y
time = 1

[Command]
name = "AI27"
command = ~D, D, F, c ,y
time = 1

[Command]
name = "AI28"
command = ~D, D, F, a ,y
time = 1

[Command]
name = "AI29"
command = ~D, D, F, b ,y
time = 1

[Command]
name = "AI30"
command = ~D, D, F, x,y

;-| Super Motions |--------------------------------------------------------

[Command]
name = "超新星"
command = ~D, D, F, B, c
time = 50

[Command]
name = "明星落"
command = ~D, D, c
time = 50

[Command]
name = "明星"
command = ~F, c
time = 25

[Command]
name = "流星群"
command = ~D, D, F, D, D, F, a
time = 50

[Command]
name = "beta"
command = ~D, D, F, D, D, F, b
time = 50

[Command]
name = "delta"
command = ~D, F, D, F, a
time = 50

[Command]
name = "alpha"
command = ~D, D, F, D, D, F, c
time = 50

[Command]
name = "麗月乱舞"
command = ~B, D, D, F, a
time = 50

[Command]
name = "麗月"
command = ~D, D, F, a
time = 25


;-| Special Motions |------------------------------------------------------

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
name = "recovery";Required (do not remove)
command = x+y
time = 1

[Command]
name = "ふっ飛ばし"
command = c
time = 1

[Command]
name = "ふっ飛ばし"
command = y+b
time = 1


[Command]
name = "回避"
command = x+a
time = 1

[Command]
name = "回避"
command = z
time = 1


[Command]
name = "HDモード"
command = y+a
time = 1


[Command]
name = "holdx"
command = /$x
time = 1

[Command]
name = "holdy"
command = /$y
time = 1

[Command]
name = "holda"
command = /$a
time = 1

[Command]
name = "holdb"
command = /$b
time = 1




;-| Dir + Button |---------------------------------------------------------
[Command]
name = "down_a"
command = /$D,a
time = 1

[Command]
name = "down_b"
command = /$D,b
time = 1


[Command]
name = "デバッグ用コマンド"
command = ~D, D, s


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
;-----------------------------------------------------------
[Command]
name = "a2"
command = a
time = 1

[Command]
name = "b2"
command = b
time = 1

[Command]
name = "c2"
command = c
time = 1

[Command]
name = "x2"
command = x
time = 1

[Command]
name = "y2"
command = y
time = 1

[Command]
name = "z2"
command = z
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

[Command]
name = "hold_x"
command = /x

[Command]
name = "hold_y"
command = /y


[Command]
name = "hold_z"
command = /z



; Don't remove the following line. It's required by the CMD standard.
[Statedef -1]

;==========================================================================
;                 通常技
;==========================================================================

[State -1]
type = ChangeState
value = 200
triggerall = command = "c"
triggerall = ctrl = 1
trigger1 = Statetype = S
trigger1 = stateno != 501

[State -1]
type = ChangeState
value = 260
triggerall = command = "x"
triggerall = ctrl = 1
trigger1 = Statetype = S
trigger1 = stateno != 501

[State -1]
type = ChangeState
value = 210
triggerall = command = "b"
triggerall = ctrl = 1
trigger1 = Statetype = S
trigger1 = stateno != 501

[State -1]
type = ChangeState
value = 230
triggerall = command = "a"
triggerall = ctrl = 1
trigger1 = Statetype = S
trigger1 = stateno != 501




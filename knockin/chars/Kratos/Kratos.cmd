;===============================================================================
;-------------------------------Comandos----------------------------------------
;===============================================================================
[Remap]
x = x
y = y
z = z
a = a
b = b
c = c
s = s

[Command]
name = "Super Jump"
command = ~D,U
time = 10

;-| Supers |-------------------------------------------------------

[command]
name = "SUPER1"
command = ~D,DF,F,D,DF,F,a+b
time = 30

[command]
name = "SUPER2"
command = ~D,DF,F,D,DF,F,x+y
time = 30

[Command]
name = "SUPER3"
command = ~F, DF, D, DB, B, F, DF, D, DB, B, b
time = 40

;-| Specials |-------------------------------------------------------
[command]
name = "SPECIAL 1"
command = ~D,DF,F,a
time = 15

[command]
name = "tornado-Blade"
command = x+z
time = 15

[command]
name = "Magia-de-Poseidon"
command = c+a
time = 15

[command]
name = "Cabesa-de-Meduza"
command = c+b
time = 15

[command]
name = "Ejercito-de-Hades"
command = c+x
time = 15

[command]
name = "Orbes-de-Relampagos"
command = a+b
time = 15

[command]
name = "Ojo-de-Atlantis"
command = a+x
time = 15

[command]
name = "Temblor-de-Atlas"
command = c+y
time = 15

[command]
name = "Ira-de-Caronte"
command = a+y
time = 15

[command]
name = "Azote-de-espinas"
command = b+x
time = 15

[command]
name = "El-Genio"
command = x+y
time = 15

[command]
name = "Cuerno-de-Boreas"
command = b+y
time = 15

[command]
name = "Esquivar"
command = c+z
time = 15

[command]
name = "Giro-Heracles-Blade"
command = y+z
time = 15

[command]
name = "SPECIAL 2"
command = ~D,DB,B,a
time = 15

[command]
name = "SPECIAL 3"
command = ~D,DF,F,b
time = 15

[command]
name = "SPECIAL 4"
command = ~D,DB,B,b
time = 15

[command]
name = "SPECIAL 5"
command = ~D,DF,F,c
time = 15

[command]
name = "SPECIAL 6"
command = ~D,DB,B,c
time = 15

[command]
name = "SPECIAL 7"
command = ~D,DF,F,x
time = 30

[command]
name = "SPECIAL 8"
command = ~D,DB,B,x
time = 30

[command]
name = "SPECIAL 9"
command = ~B,DB,D,DF,F,b
time = 30

[command]
name = "SPECIAL 10"
command = ~F,DF,D,DB,B,b
time = 30

[command]
name = "SPECIAL 11"
command = ~B,DB,D,DF,F,c
time = 30

[command]
name = "SPECIAL 12"
command = ~F,DF,D,DB,B,c
time = 30

[Command]
name = "DB_y"
command = ~$D, DB, B, y
time = 12
buffer.time = 6

[Defaults]

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
[Statedef -1]
;===========================================================================
;---------------------------Basicos-----------------------------------------
;---------------------------------------------------------------------------
; Correr Adelante
[State -1, Correr Adelante]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 65
triggerall = stateno != 70
value = ifelse(pos y >= 0,60,65)
trigger1 = command = "FF"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Correr Atras
[State -1, Correr Atras]
type = ChangeState
triggerall = stateno != 60
triggerall = stateno != 65
triggerall = stateno != 70
value = 70
trigger1 = command = "BB"
trigger1 = ctrl
;---------------------------------------------------------------------------
; Super Jump
[State -1, Super Jump]
type = ChangeState
value = 80
trigger1 = command = "Super Jump"
trigger1 = statetype = S
trigger1 = ctrl
;===========================================================================
;SUPERS:
;===========================================================================
[State -1,Kratos-Rage]
type = ChangeState
value = 12000
triggerall = RoundState < 3
triggerall = Life <=400
triggerall = numhelper(1650) = 0
triggerall = command= "SUPER3"
triggerall = Power>=3000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;----------------------------------------------------------------------------
[State -1,Armadura-de-Dios-Ira-de-Kratos]
type = ChangeState
value = 10000
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "SUPER1"
triggerall = Power>=3000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;-------------------------------------------------------------------------------
[State -1,Blade of Olympus]
type = ChangeState
value = 4000
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = var(54)=[65,80]
triggerall = command= "SUPER2"
triggerall = power >= 3000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;===========================================================================
;SPECIALS:
;===========================================================================
;----------------------------------------------------------------------------
;Magias
;----------------------------------------------------------------------------
[State -1,Furia-de-Poseidon]
type = ChangeState
value = 2300
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Magia-de-Poseidon"
triggerall = Power>=1500
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Cabesa-de-Meduza]
type = ChangeState
value = 2400
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Cabesa-de-Meduza"
triggerall = Power>=1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;------------------------------------------------------------------------------
[State -1,Ejercito-de-Hades]
type = ChangeState
value = 3100
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Ejercito-de-Hades"
triggerall = Power>=1500
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;--------------------------------------------------------------------------
[State -1,Orbes-de-Relampagos]
type = ChangeState
value = 2500
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Orbes-de-Relampagos"
triggerall = Power>=1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Ojo-de-Atlantis]
type = ChangeState
value = 2600
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Ojo-de-Atlantis"
triggerall = Power>=1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Temblor-de-Atlas]
type = ChangeState
value = 3700
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Temblor-de-Atlas"
triggerall = Power>=1500
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;------------------------------------------------------------------------------
[State -1,Furia-de-los-Titanes]
type = ChangeState
value = 3807
triggerall = RoundState < 3
triggerall = command= "s"
triggerall = var(54)=[65,80]
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = movecontact && stateno = [200,499]
;----------------------------------------------------------------------------
[State -1,Ira-de-Caronte]
type = ChangeState
value = 2700
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Ira-de-Caronte"
triggerall = Power>=1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Azote-de-espinas]
type = ChangeState
value = 2800
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Azote-de-espinas"
triggerall = Power>=1000
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,El-Genio]
type = ChangeState
value = 2900
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "El-Genio"
triggerall = Power>=1800
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Cuerno-de-Boreas]
type = ChangeState
value = 3000
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command= "Cuerno-de-Boreas"
triggerall = Power>=1500
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;---------------------------------------------------------------------------
[State -1,Esquivar]
type = ChangeState
value = 520
triggerall = RoundState < 3
triggerall = command= "Esquivar"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;===========================================================================
;--------------------------------Armas-T-C---------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Barbarian Hammer]
type = ChangeState
value = 1350
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = var(53) >= 400
triggerall = command = "SPECIAL 2"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = movecontact && stateno = [200,499]

[State -1, Destini-Lance]
type = ChangeState
value = 1200
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = var(53) >= 350
triggerall = command = "SPECIAL 3"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = movecontact && stateno = [200,499]
;------------------------------------------------------------------------------
[State -1, Cabeza-de-Helios]
type = ChangeState
value = 1500
triggerall = var(53) >= 500
triggerall = numhelper(1650) = 0
triggerall = RoundState < 3
triggerall = command = "SPECIAL 4"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;-------------------------------------------------------------------------------
[State -1, Hamuleto-de-Hados]
type = ChangeState
value = 1600
triggerall = var(53) >= 1000
triggerall = numhelper(1650) = 0
triggerall = numhelper(1670) = 0
triggerall = RoundState < 3
triggerall = command = "SPECIAL 5"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;-------------------------------------------------------------------------------
[State -1, Guantelete-de-Zeus]
type = ChangeState
value = 1700
triggerall = var(53) >= 600
triggerall = numhelper(1650) = 0
triggerall = RoundState < 3
triggerall = command = "SPECIAL 6"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = movecontact && stateno = [200,499]
;-------------------------------------------------------------------------------
[State -1, Zapatillas-de-Hermes]
type = ChangeState
value = 1800
triggerall = var(53) >= 325
triggerall = numhelper(1650) = 0
triggerall = RoundState < 3
triggerall = command = "SPECIAL 7"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;-------------------------------------------------------------------------------
[State -1, Espada-de-Artemisa]
type = ChangeState
value = 1150
triggerall = var(53) >= 200
triggerall = RoundState < 3
triggerall = command = "SPECIAL 8"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
trigger2 = movecontact && stateno = [200,499]
;-------------------------------------------------------------------------------
;-----------------------------------------------------------------------------
[State -1, Fire Bow]
type = ChangeState
value = 1100
triggerall = var(53) >= 200
triggerall = RoundState < 3
triggerall = numhelper(1650) = 0
triggerall = command = "SPECIAL 1"
triggerall = statetype != A
trigger1 = ctrl || stateno = 101
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = movecontact && stateno = [200,499]
;===========================================================================
;--------------------------------Ataques Normales---------------------------
;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
[State -1, Vellocino-de-Oro]
type = ChangeState
value = 400
triggerall = numhelper(1650) = 0
triggerall = command = "z"|| command = "DB_y"
triggerall = statetype != A
trigger1 = ctrl
;Basic moves cancelable into Specials, DMs and SDMs
trigger2 = movecontact && stateno = [200,699]
trigger3 = (anim = 210 && animelemtime(4) > 0 && animelemtime(7) < 0)
trigger4 = stateno = 240 && animelemtime(8) > 0 && animelemtime(11) < 0 && !movecontact
trigger5 = stateno = 280 && animelemtime(3) > 0 && animelemtime(6) < 0
trigger6 = stateno = 285 && animelemtime(4) > 0 && animelemtime(6) < 0
trigger7 = movecontact && stateno = [820,825]
trigger8 = stateno = 980 && animelemtime(4) > 0 && animelemtime(8) < 0
trigger9 = movecontact && (stateno = 980 || stateno = 990)
;Max cancel
;-------------------------------------------------------------------------------
[State -1, combo blades]
type = ChangeState
value = 350
triggerall = (command = "holdback" || command = "holdfwd") && command = "y" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl

[State -1, combo blades]
type = ChangeState
value = 360
triggerall = (command = "holdback" || command = "holdfwd") && command = "y" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 350

[State -1, combo blades]
type = ChangeState
value = 380
triggerall = (command = "holdback" || command = "holdfwd") && command = "y" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 360 && animelemtime(10) > 0



[State -1, combo blades]
type = ChangeState
value = 300
triggerall = (command = "holdback" || command = "holdfwd") && command = "x" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl

[State -1, combo blades]
type = ChangeState
value = 310
triggerall = (command = "holdback" || command = "holdfwd") && command = "x" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 300

[State -1, combo blades]
type = ChangeState
value = 320
triggerall = (command = "holdback" || command = "holdfwd") && command = "x" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 310

[State -1, combo blades]
type = ChangeState
value = 330
triggerall = (command = "holdback" || command = "holdfwd") && command = "x" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 320


[State -1, combo blades]
type = ChangeState
value = 1050
triggerall = command = "tornado-Blade"
trigger1 = Statetype = A
trigger1 = ctrl

[State -1, combo blades-Heracles]
type = ChangeState
value = 1460
triggerall = command = "Giro-Heracles-Blade"
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ataques-aereos
;---------------------------------------------------------------------------
;Jumping Light Punch
[State -1, Jumping Light Punch]
type = ChangeState
value = 600
triggerall = command = "b"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;Jumping Light Kick
[State -1, Jumping Light Kick]
type = ChangeState
value = 630
triggerall = command = "x"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
[State -1, Jumping Light Kick]
type = ChangeState
value = 640
triggerall = command = "y"
triggerall = Statetype != C
trigger1 = Statetype = A
trigger1 = ctrl
;---------------------------------------------------------------------------
;ataques-agachado
;---------------------------------------------------------------------------
;Crouching Light Punch
[State -1, Crouching Light Punch]
type = ChangeState
value = 260
triggerall = command = "holddown" && command = "a" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

[State -1, Crouching Light Kick]
type = ChangeState
value = 270
triggerall = command = "holddown" && command = "x" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Latigos-de-Hefestos]
type = ChangeState
value = 550
triggerall = command = "holddown" && command = "c" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 310

;---------------------------------------------------------------------------
;Crouching Hard Kick
[State -1, Crouching Hard Kick]
type = ChangeState
value = 280
triggerall = command = "holddown" && command = "y" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101

;Crouching Hard Punch
[State -1, Crouching Hard Punch]
type = ChangeState
value = 285
triggerall = command = "holddown" && command = "b" && command != "holdup"
triggerall = Statetype != A
trigger1 = Statetype = C
trigger1 = ctrl
trigger2 = stateno = 101
;-------------------------------------------------------------------------------
;Ataques-1-Boton
;-------------------------------------------------------------------------------
[State -1, Blade]
type = ChangeState
value = 210
triggerall = command = "x" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1, Blade]
type = ChangeState
value = 215
triggerall = command = "y" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1, golpe]
type = ChangeState
value = 1900
triggerall = numhelper(1650) = 0
triggerall = command = "a" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1, Cestus-de-Nemea]
type = ChangeState
value = 502
triggerall = command = "c"
Triggerall = statetype != A
trigger1 = ctrl

[State -1, golpe]
type = ChangeState
value = 200
triggerall = command = "b" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = stateno = 101

[State -1, otro-golpe]
type = ChangeState
value = 230
triggerall = command = "b" && command != "holddown"
triggerall = Statetype != A
trigger1 = Statetype = S
trigger1 = ctrl
trigger2 = movecontact && stateno = 200 && animelemtime(3) > 0

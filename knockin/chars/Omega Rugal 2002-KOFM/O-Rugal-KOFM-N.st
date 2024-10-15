;==================================================================================
;Rugal's Basic Attacks
;==================================================================================


;Light Punch
[Statedef 200]
Type = S
Movetype = A
Physics = S
anim = 200
juggle = 8
velset = 0,0
ctrl = 0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 200, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,0
channel = 0

[State 200, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
priority = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 9,10
sparkno = 0
guard.sparkno = 30
sparkxy = 5,-70
hitsound = S0,ifelse(random < 333, 0, ifelse(random < 333, 10, 11))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6.5
air.velocity = -3.5,-6
guard.velocity = -6.5
getpower = 63,40
givepower = 30,10
guard.pausetime = 12,11
guard.slidetime = 10
guard.hittime = 20
guard.ctrltime = 20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 200, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Close Light Punch
[Statedef 201]
Type = S
Movetype = A
Physics = S
anim = 201
juggle = 8
velset = 0,0
ctrl = 0

[State 201, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 201, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,0
channel = 0

[State 201, 3]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = animelem = 3
attr = S, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
priority = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 9,10
sparkno = 0
guard.sparkno = 30
sparkxy = 5,-100
hitsound = S0,ifelse(random < 333, 0, ifelse(random < 333, 10, 11))
guardsound = S1,0
ground.type = high
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6.5
air.velocity = -3.5,-6
guard.velocity = -6.5
getpower = 63,40
givepower = 30,10
guard.pausetime = 12,11
guard.slidetime = 10
guard.hittime = 20
guard.ctrltime = 20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
Persistent = 0

[State 201, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Light Kick
[Statedef 210]
Type = S
Movetype = A
Physics = S
anim = 210
juggle = 8
velset = 0,0
ctrl = 0

[State 210, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2,0

[State 210, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,0
channel = 0

[State 210, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 40
priority = 7, Hit
hitflag = MAF
guardflag = L
pausetime = 12,13;9,10
sparkno = 0
guard.sparkno = 30
sparkxy = 5,-35
hitsound = S0,ifelse(random < 333, 1, ifelse(random < 333, 12, 13))
guardsound = S1,0
ground.type = low
ground.slidetime = 11
ground.hittime = 11
ground.velocity = -5.5;-6.5
air.velocity = -3.5,-6
guard.velocity = -5.5;-6.5
getpower = 63,40
givepower = 30,10
guard.pausetime = 12,11
guard.slidetime = 10
guard.hittime = 20
guard.ctrltime = 20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 210, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Close Light Kick
[Statedef 211]
Type = S
Movetype = A
Physics = S
anim = 211
juggle = 8
velset = 0,0
ctrl = 0

[State 211, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 211, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,0
channel = 0

[State 211, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = S, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 40
priority = 7, Hit
hitflag = MAF
guardflag = MA
pausetime = 9,10
sparkno = 0
guard.sparkno = 30
sparkxy = -5,-70
hitsound = S0,ifelse(random < 333, 1, ifelse(random < 333, 12, 13))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -6.5
air.velocity = -3.5,-6
guard.velocity = -6.5
getpower = 63,40
givepower = 30,10
guard.pausetime = 12,11
guard.slidetime = 10
guard.hittime = 20
guard.ctrltime = 20
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 211, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Hard Punch
[Statedef 220]
Type = S
Movetype = A
Physics = S
anim = 220
juggle = 8
velset = 0,0
ctrl = 0

[State 220, 1]
type = PlaySnd
trigger1 = animelem = 7
value = 2,0

[State 220, 2]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = 8

[State 220, 5]
type = PlaySnd
trigger1 = animelem = 5
trigger1 = random < 600
value = 200,1
channel = 0

[State 220, 6]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 76
guardflag = MA
hitflag = MAF
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-75
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 21;36
guard.ctrltime = 21;36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0

[State 220, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Close Hard Punch
[Statedef 221]
Type = S
Movetype = A
Physics = S
anim = 221
juggle = 8
velset = 0,0
ctrl = 0

[State 221, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 2,0

[State 221, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 221, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 37
guardflag = MA
hitflag = MAF
pausetime = 12,15
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-50
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = low
ground.slidetime = 1
ground.hittime = 9
ground.velocity = -6.5
air.velocity = -3.5,-6
guard.velocity = -6.5
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 222, 2]
type = ChangeState
trigger1 = animelem = 5
value = 222

;Close Hard Punch 2
[Statedef 222]
Type = S
Movetype = A
Physics = S
juggle = 8
velset = 0,0
ctrl = 0

[State 222, 1]
type = HitDef
trigger1 = AnimElem = 5
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 38
guardflag = MA
hitflag = MAF
pausetime = 12,15
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-70
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5

[State 222, 2]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Hard Kick
[Statedef 230]
Type = S
Movetype = A
Physics = S
anim = 230
juggle = 8
velset = 0,0
ctrl = 0

[State 230, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 2,0

[State 230, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 230, 3]
type = HitDef
trigger1 = animelem = 6
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 79
guardflag = MA
hitflag = MAF
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-115
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0

[State 230, 4]
type = HitDef
trigger1 = animelem = 7
trigger1 = !MoveContact
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 79
guardflag = MA
hitflag = MAF
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-62
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0

[State 230, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Close Hard Kick
[Statedef 231]
Type = S
Movetype = A
Physics = S
anim = 231
juggle = 8
velset = 0,0
ctrl = 0

[State 231, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2,0

[State 231, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 231, 3]
type = HitDef
trigger1 = animelem = 4
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 37
guardflag = MA
hitflag = MAF
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-72
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0

[State 231, 5]
type = ChangeState
trigger1 = animelem = 6
value = 232

;Close Hard Kick 2
[Statedef 232]
Type = S
Movetype = A
Physics = S
juggle = 8
velset = 0,0
ctrl = 0

[State 231, 1]
type = PlaySnd
trigger1 = animelem = 9
value = 2,0

[State 232, 2]
type = HitDef
trigger1 = animelem = 10
attr = S, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 38
guardflag = MA
hitflag = MAF
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-78
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 90,60
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .5
persistent = 0

[State 232, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Knockdown attack
[Statedef 240]
Type = S
Movetype = A
Physics = S
anim = 240
juggle = 8
velset = 0,0
ctrl = 0

[State 240, 1]
type = PlaySnd
trigger1 = animelem = 3
value = 2,0

[State 240, 2]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 240, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
damage = 145
hitflag = MAF
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 10,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-120
hitsound = S0,4
guardsound = S1,0
ground.velocity = -4,-9
ground.cornerpush.veloff = 0
air.velocity = -4,-6
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 42
guard.velocity = -12
Guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 90,70
givepower = 50,20
fall.yvelocity = -3.4
guard.pausetime = 12,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55

[State 230, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

; Crouching light punch
[Statedef 300]
type = C
movetype = A
physics = C
anim = 300
velset = 0,0
juggle = 8
ctrl = 0

[State 300, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,0
channel = 0

[State 300, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 300, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 30
guardflag = M
hitflag = MA
priority = 7, Hit
pausetime = 12,13;9,10
;guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = 5,-54
hitsound = S0,ifelse(random < 333, 0, ifelse(random < 333, 10, 11))
guardsound = S1,0
ground.type = low
ground.slidetime = 10;9
ground.hittime = 10;9
ground.velocity = -5.5
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .5

[State 300, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Crouching light kick
[Statedef 310]
type = C
movetype = A
physics = C
anim = 310
velset = 0,0
juggle = 8
ctrl = 0

[State 310, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,0
channel = 0

[State 310, 2]
type = PlaySnd
trigger1 = time = 1
value = 2,0

[State 310, 3]
type = HitDef
trigger1 = AnimElem = 2
attr = C, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
guardflag = L
hitflag = MA
priority = 7, Hit
pausetime = 12,13;9,10
;guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = 5,-5
hitsound = S0,ifelse(random < 333, 1, ifelse(random < 333, 12, 13))
guardsound = S1,0
ground.type = low
ground.slidetime = 10
ground.hittime = 10
ground.velocity = -5.5;-6.5
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .5

[State 310, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; Crouching hard punch
[Statedef 320]
type = C
movetype = A
physics = C
anim = 320
velset = 0
juggle = 8
poweradd = 5
ctrl = 0

[State 320, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 320, 2]
type = PlaySnd
trigger1 = animelem = 4
value = 2,0

[State 320, 3]
type = HitDef
trigger1 = AnimElem = 5
trigger2 = Animelem = 6
attr = C, NA
animtype = hard
air.animtype = back
fall.animtype = back
damage = 47
guardflag = M
hitflag = MAF
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-46
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-1.5
guard.velocity = -12
ground.cornerpush.veloff = -18
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -18
airguard.cornerpush.veloff = 0
getpower = 90,60
givepower = 50,20
yaccel = .5
persistent = 0

[State 320, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

;Crouching hard kick
[Statedef 330]
type = C
movetype = A
physics = C
anim = 330
juggle = 14
velset = 0
ctrl = 0

[State 330, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 330, 2]
type = PlaySnd
trigger1 = Animelem = 5
value = 2,0

[State 330, 3]
type = HitDef
trigger1 = AnimElem = 6
attr = C, NA
animtype = Hard
air.animtype = back
fall.animtype = back
damage = 86
hitflag = MAF
priority = 7,miss
guardflag = L
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = -7,-7
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = trip
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -3,-7
ground.cornerpush.veloff = 0
air.velocity = -3.5,-6
air.cornerpush.veloff = 0
airguard.velocity = -4,-1.7
guard.velocity = -12
Guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
fall = 1
fall.recovertime = 20
fall.yvelocity = -3.5
p2stateno = 331
p2getp1stateno = 1
getpower = 90,60
givepower = 50,20
guard.pausetime = 10,10
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .55

[State 330, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 11
ctrl = 1

; HIT_TRIP (shaking)
[Statedef 331]
type    = A
movetype= H
physics = N
velset = 0,0

[State 335, 1]
type = ChangeAnim 
trigger1 = 1
value = 5070

[State 335, 2]
type = ChangeState
trigger1 = HitShakeOver
value = 332

[State 335, 3]
type = ForceFeedback
trigger1 = time = 0
time = 12
waveform = sinesquare
ampl = 140

; HIT_TRIP2 (fall through air)
[Statedef 332]
type    = A
movetype= H
physics = N

[State 336, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 336, 2] ;Acceleration
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 336, 3] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 336, 4] ;Hit ground
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 15
type = Selfstate
value = 5100

;Jumping vertical light punch
[Statedef 400]
type = A
movetype = A
physics = A
juggle = 8
anim = 400
ctrl = 0

[State 400, 1]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Random < 600
value = 200,0
channel = 0

[State 400, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 400, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 37
priority = 7, Hit
guardflag = HA
hitflag = MAF
pausetime = 9,10
guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = -5,-62
hitsound = S0,ifelse(random < 333, 0, ifelse(random < 333, 10, 11))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -7
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
guard.velocity = -7
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .6

;Jumping diagonal light punch
[Statedef 401]
type = A
movetype = A
physics = A
juggle = 8
anim = 401
ctrl = 0

[State 401, 1]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Random < 600
value = 200,0
channel = 0

[State 401, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 401, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
priority = 7, Hit
guardflag = HA
hitflag = MAF
pausetime = 9,10
guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = -5,-62
hitsound = S0,ifelse(random < 333, 0, ifelse(random < 333, 10, 11))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -7
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
guard.velocity = -7
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .6

;Jumping vertical light kick
[Statedef 410]
type = A
movetype = A
physics = A
juggle = 8
anim = 410
ctrl = 0

[State 410, 1]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Random < 600
value = 200,0
channel = 0

[State 410, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 410, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
priority = 7, Hit
guardflag = HA
hitflag = MAF
pausetime = 9,10
guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = -5,-34
hitsound = S0,ifelse(random < 333, 1, ifelse(random < 333, 12, 13))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -7
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
guard.velocity = -7
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .6

;Jumping diagonal light kick
[Statedef 411]
type = A
movetype = A
physics = A
juggle = 8
anim = 411
ctrl = 0

[State 411, 1]
type = PlaySnd
trigger1 = Time = 0
trigger1 = Random < 600
value = 200,0
channel = 0

[State 410, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 411, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
animtype = light
air.animtype = back
fall.animtype = back
damage = 38
priority = 7, Hit
guardflag = HA
hitflag = MAF
pausetime = 7,13
guard.pausetime = 12,11
sparkno = 0
guard.sparkno = 30
sparkxy = -5,-55
hitsound = S0,ifelse(random < 333, 1, ifelse(random < 333, 12, 13))
guardsound = S1,0
ground.type = low
ground.slidetime = 9
ground.hittime = 9
ground.velocity = -7
air.velocity = -3.5,-6
airguard.velocity = -2.5,-1
guard.velocity = -7
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 63,40
givepower = 30,10
yaccel = .6

;Jumping vertical hard punch
[Statedef 420]
type = A
movetype = A
physics = A
juggle = 8
anim = 420
ctrl = 0

[State 420, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 420, 2]
type = PlaySnd
trigger1 = Time = animelem = 3
value = 2,0

[State 420, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 76
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = Low
air.type = Low
ground.slidetime = 17
guard.slidetime = 18
ground.hittime = 17
guard.hittime = 36
air.hittime = 20
guard.ctrltime = 36
yaccel = .5
ground.velocity = -12
guard.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 20
getpower = 90,60
givepower = 50,20

;Jumping diagonal hard punch
[Statedef 421]
type = A
movetype = A
physics = A
juggle = 8
anim = 421
ctrl = 0

[State 421, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 421, 2]
type = PlaySnd
trigger1 = Time = animelem = 3
value = 2,0

[State 421, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 76
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-60
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = Low
air.type = Low
ground.slidetime = 17
guard.slidetime = 18
ground.hittime = 17
guard.hittime = 36
air.hittime = 20
guard.ctrltime = 36
yaccel = .5
ground.velocity = -12
guard.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 20
getpower = 90,60
givepower = 50,20

;Jumping vertical hard kick
[Statedef 430]
type = A
movetype = A
physics = A
juggle = 8
anim = 430
ctrl = 0

[State 430, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 430, 2]
type = PlaySnd
trigger1 = Time = animelem = 3
value = 2,0

[State 430, 3]
type = HitDef
trigger1 = AnimElem = 4
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 78
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-123
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = Low
air.type = Low
ground.slidetime = 17
guard.slidetime = 18
ground.hittime = 17
guard.hittime = 36
air.hittime = 20
guard.ctrltime = 36
yaccel = .5
ground.velocity = -12
guard.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 20
getpower = 90,60
givepower = 50,20

[State 430, 3]
type = HitDef
trigger1 = AnimElem = 5
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 67
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-70
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = Low
air.type = Low
ground.slidetime = 17
guard.slidetime = 18
ground.hittime = 17
guard.hittime = 36
air.hittime = 20
guard.ctrltime = 36
yaccel = .5
ground.velocity = -12
guard.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 20
getpower = 90,60
givepower = 50,20

;Jumping diagonal hard kick
[Statedef 431]
type = A
movetype = A
physics = A
juggle = 8
anim = 431
ctrl = 0

[State 431, 1]
type = PlaySnd
trigger1 = Time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 431, 2]
type = PlaySnd
trigger1 = Time = animelem = 2
value = 2,0

[State 431, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A,NA
hitflag = MAF
guardflag = HA
animtype = Hard
air.animtype = Back
fall.animtype = Back
priority = 4,Hit
damage = 87
pausetime = 9,12
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = -10,-53
hitsound = S0,ifelse(random < 333, 3, ifelse(random < 333, 16, 17))
guardsound = S1,0
ground.type = Low
air.type = Low
ground.slidetime = 17
guard.slidetime = 18
ground.hittime = 18
guard.hittime = 17;36
air.hittime = 20
guard.ctrltime = 18;36
yaccel = .5
ground.velocity = -12
guard.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = -8.5
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.ctrltime = 20
getpower = 90,60
givepower = 50,20

;Jumping knockdown attack
[Statedef 440]
type = A
movetype = A
physics = A
anim = 440
juggle = 14
ctrl = 0

[State 440, 1]
type = PlaySnd
trigger1 = time = 1
trigger1 = Random < 600
value = 200,1
channel = 0

[State 440, 2]
type = PlaySnd
trigger1 = animelem = 2
value = 2,0

[State 440, 3]
type = HitDef
trigger1 = AnimElem = 3
attr = A, NA
hitflag = MAF
animtype = HARD
damage = 145
guardflag = HA
pausetime = 10,11
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
ground.type = low
sparkxy = -10,-32
hitsound = S0,4
guardsound = S1,0
ground.velocity = -4,-8
ground.cornerpush.veloff = 0
air.velocity = -4,-7
air.cornerpush.veloff = 0
airguard.velocity = -2.5,-1
fall = 1
fall.recover = 1
fall.recovertime = 35
guard.velocity = -12
ground.cornerpush.veloff = 0
guard.cornerpush.veloff = -8.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 95,60
givepower = 50,20
air.juggle = 15
yaccel = .5

;SideStep
[Statedef 500]
type = S
movetype = I
physics = N
anim = 500
sprpriority = -1
velset = 0,0
ctrl = 0

[State 500, 1]
type = PlaySnd
trigger1 = Time = 1
value = 500,0
channel = 0

[State 500, 2]
type = HitBy
trigger1 = Time >= 0
value = SCA, NT, ST, HT

[State 500, 3]
type = SprPriority
trigger1 = Time = 10
value = -1

[State 500, 4]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 500, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Attack
[Statedef 501]
type = S
movetype = A
physics = S
anim = 501
sprpriority = -1
velset = 0,0
juggle = 8
ctrl = 0

[State 501, 1]
type = HitBy
trigger1 = AnimElem = 3 < 0
value = SCA, NT, ST, HT

[State 501, 2]
type = PlaySnd
trigger1 = animelem = 5
value = 2,0

[State 501, 3]
type = HitDef
trigger1 = AnimElem = 6
trigger2 = animelem = 7
attr = S, NA
hitflag = MAF
animtype = hard
air.animtype = back
fall.animtype = back
damage = 65
guardflag = MA
pausetime = 12,13
guard.pausetime = 12,11
sparkno = 1
guard.sparkno = 40
sparkxy = 5,-93
hitsound = S0,ifelse(random < 333, 2, ifelse(random < 333, 14, 15))
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -11.5
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -11.5
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
getpower = 90,60
givepower = 50,20
fall = 0
yaccel = .5
Persistent = 0

[State 501, Player Push]
type = Playerpush
trigger1 = 1
value = 1

[State 501, 4]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Slide Fwd
[Statedef 510]
type = S
movetype = I
physics = N
anim = 510
sprpriority = -1
velset = 0,0
ctrl = 0

[State 510, 1]
type = PlaySnd
trigger1 = Time = 1
value = 200,1
channel = 0

[State 510, 2]
type = HitBy
trigger1 = animelem = 7 < 0
value = SCA, NT, ST, HT

[State 510, 3]
type = SprPriority
trigger1 = Time = 8
value = -1

[State 510, 4]
type = VelSet
trigger1 = time >= 8
trigger1 = time < 26
x = 6

[State 510, 5]
type = VelSet
trigger1 = Time = 26
x = 0

[State 510, 7]
type = AfterImage
trigger1 = Time = 2
time = 12
palbright = 30,30,30
Palcontrast = 128,128,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 6
FrameGap = 2
trans = add1

[State 510, 8]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 510, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Slide Back
[Statedef 520]
type = S
movetype = I
physics = N
anim = 520
sprpriority = -1
velset = 0,0
ctrl = 0

[State 520, 1]
type = PlaySnd
trigger1 = Time = 1
value = 200,1
channel = 0

[State 520, 2]
type = HitBy
trigger1 = animelem = 7 < 0
value = SCA, NT, ST, HT

[State 520, 3]
type = SprPriority
trigger1 = Time = 7
value = -1

[State 520, 4]
type = VelSet
trigger1 = time >= 7
trigger1 = time < 25
x = -6

[State 520, 5]
type = VelSet
trigger1 = time = 25
x = 0

[State 520, 7]
type = AfterImage
trigger1 = Time = 2
time = 12
palbright = 30,30,30
Palcontrast = 128,128,128
PalAdd = 0, 0, 0
PalMul = 1,1,1
Length = 6
FrameGap = 2
trans = add1

[State 520, 8]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 510, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Scorpion Deathlock    
[Statedef 600]
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 650
sprpriority = 1

[State 600, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = var(23) <= 0
attr = S, NT          
hitflag = M-   
animtype = hard       
priority = 4, Miss    
sparkno = -1          
sprpriority = 1 
hitsound = -1
p2facing = 1          
p1stateno = 601      
p2stateno = 603    
fall = 1   
ground.velocity = -4,-7
ground.cornerpush.veloff = 0
yaccel = .6
getpower = 0,0
givepower = 0,0

[State 600, 2]
type = ChangeState
trigger1 = !MoveContact
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Success
[Statedef 601] 
type    = S
movetype= A
physics = S
anim = 600
sprpriority = 5

[State 601, 1]
type = Width
trigger1 = 1
edge = 70,0

[State 601, 2]
type = playsnd
trigger1 = animelem = 2
value = 0,5

[State 601, 3]
type = Explod
trigger1 = animelem = 2
Anim = f80
pos = 58,-75
sprpriority = 5

[State 601, 4]
type = Explod
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
trigger6 = AnimElem = 17
trigger7 = AnimElem = 19
trigger8 = AnimElem = 21
id = 6006
anim = 6006
sprpriority = 6
pos = 0,0

[State 601, 5]
type = playsnd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
trigger6 = AnimElem = 17
trigger7 = AnimElem = 19
trigger8 = AnimElem = 21
value = 600,1

[State 601, 6]
type = TargetBind
trigger1 = AnimElem = 1
pos = 44, 0
time = 1

[State 601, 7]
type = TargetBind
trigger1 = AnimElem = 2
pos = 55,-85
time = 1

[State 601, 8]
type = TargetBind
trigger1 = AnimElem = 3
pos = 52,-83
time = 1

[State 601, 9]
type = TargetBind
trigger1 = AnimElem = 4
pos = 51,-81
time = 1

[State 601, 10]
type = TargetBind
trigger1 = AnimElem = 5
pos = 59,-126
time = 1

[State 601, 11]
type = TargetBind
trigger1 = AnimElem = 6
trigger2 = AnimElem = 8
trigger3 = AnimElem = 10
trigger4 = AnimElem = 12
trigger5 = AnimElem = 14
trigger6 = AnimElem = 16
trigger7 = AnimElem = 18
trigger8 = AnimElem = 20
pos = 56,-131
time = 1

[State 601, 12]
type = TargetBind
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
trigger6 = AnimElem = 17
trigger7 = AnimElem = 19
trigger8 = AnimElem = 21
pos = 55,-129
time = 1

[State 601, 13]
type = targetlifeadd
trigger1 = AnimElem = 7
trigger2 = AnimElem = 9
trigger3 = AnimElem = 11
trigger4 = AnimElem = 13
trigger5 = AnimElem = 15
trigger6 = AnimElem = 17
trigger7 = AnimElem = 19
trigger8 = AnimElem = 21
value = -19
kill = 0

[State 601, 14]
type = VarAdd
trigger1 = command = "x" || command = "y"
var(6) = -2

[State 601, 15]
type = VarAdd
trigger1 = target,command = "x" || target,command = "y"
var(6) = 3

[State 601, 16]
type = ChangeState
Trigger1 = AnimTime = 0
trigger2 = var(6) >= 15 && animelem = 12
trigger3 = var(6) >= 15 && animelem = 14
trigger4 = var(6) >= 15 && animelem = 16
trigger5 = var(6) >= 15 && animelem = 18
value = 602

;Trow
[Statedef 602] 
type    = S
movetype= A
physics = S
anim = 601
sprpriority = 2

[State 602, 1]
type = TargetState
Trigger1 = Time = 0
value = 604

[State 602, 2]
type = playsnd
trigger1 = animelem = 3
value = 600,0

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 4
value = 200,0
channel = 0

[State 602, 3]
type = Width
trigger1 = 1
edge = 70,0

[State 602, 4]
type = TargetBind
trigger1 = AnimElem = 1
pos = 51,-129
time = 1

[State 602, 5]
type = TargetBind
trigger1 = AnimElem = 2
pos = 27,-129
time = 1

[State 602, 6]
type = TargetBind
trigger1 = AnimElem = 3
pos = 56,-126
time = 1

[State 602, 7]
type = TargetBind
trigger1 = AnimElem = 4
pos = 75,-126
time = 1

[State 601, 8]
type = targetlifeadd
trigger1 = AnimElem = 4
value = -2

[State 602, 9]
type = ChangeState
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Grabbed
[Statedef 603]
type    = A
movetype= H 
sprpriority = 4
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 603, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 602

[State 603, 2]
type = changeState
trigger1 = animtime = 0
value = 604

;Being Throwed 
[Statedef 604]
type    = A
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 604, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 603

[State 604, 2]
type = PosAdd
trigger1 = animtime = 0
y = -const(size.head.pos.y)
x = const(size.head.pos.x)

[State 604, 3]
type = changeState
trigger1 = animtime = 0
value = 605

;Throwed (in air)
[Statedef 605]
type    = A
movetype= H 
sprpriority = 4
physics = N
ctrl = 0

[State 605, 1]
type = VelSet
trigger1 = time = 0
x = -4
Y = -7

[State 605, 2]
type = VelAdd
trigger1 = time > 0
y = .45

[State 605, 3]
type = ChangeAnim
Trigger1 = Time = 0
value = 5030

[State 605, 4]
type = Changeanim
trigger1 = time = 8
value = 5050

[State 605, 5]
type = Changeanim
trigger1 = Vel Y >= 1
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 605, 6]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100

;Scorpion DeathBlow  
[Statedef 610]
type    = S
movetype= A
physics = S
juggle  = 15
velset = 0,0
ctrl = 0
anim = 650
sprpriority = 1

[State 610, 1]
type = HitDef
Trigger1 = Time = 0
trigger1 = var(23) <= 0
attr = S, NT          
hitflag = M-   
animtype = hard       
priority = 4, Miss    
sparkno = -1          
sprpriority = 1 
hitsound = -1
p2facing = 1          
p1stateno = 611      
p2stateno = 613    
fall = 1   
ground.velocity = -4,-7
ground.cornerpush.veloff = 0
yaccel = .6
getpower = 0,0
givepower = 0,0

[State 610, 2]
type = ChangeState
trigger1 = !MoveContact
Trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Success
[Statedef 611] 
type    = S
movetype= A
physics = S
anim = 610
sprpriority = 2

[State 611, 1]
type = Width
trigger1 = 1
edge = 70,40

[State 611, 2]
type = playsnd
trigger1 = animelem = 2
value = 0,5

[State 611, 3]
type = playsnd
trigger1 = animelem = 9
value = 0,2

[State 611, 4]
type = playsnd
trigger1 = animelem = 8
value = 600,0

[State 611, 5]
type = null;playsnd
trigger1 = time = 57
value = 600,2
pan = -300

[State 200, 1]
type = PlaySnd
trigger1 = animelem = 9, = 1
value = 200,0
channel = 0

[State 611, 6]
type = Explod
trigger1 = animelem = 2
Anim = f80
pos = 66,-77
sprpriority = 1

[State 611, 7]
type = Explod
trigger1 = animelem = 9
Anim = f2
pos = -78,-46
sprpriority = 3

[State 611, 8]
type = TargetBind
trigger1 = AnimElem = 1
pos = 44,0
time = 1

[State 611, 9]
type = TargetBind
trigger1 = AnimElem = 2
pos = 66,-67
time = 1

[State 611, 10]
type = TargetBind
trigger1 = AnimElem = 3
pos = 32,-70
time = 1

[State 611, 11]
type = TargetBind
trigger1 = AnimElem = 4
pos = 14,-70
time = 1

[State 611, 12]
type = TargetBind
trigger1 = AnimElem = 5
pos = -10,-67
time = 1

[State 611, 13]
type = TargetBind
trigger1 = AnimElem = 6
pos = -28,0
time = 1

[State 611, 14]
type = TargetBind
trigger1 = AnimElem = 7
pos = -56,0
time = 1

[State 611, 15]
type = TargetBind
trigger1 = AnimElem = 9
pos = -70,0
time = 1

[State 611, 16]
type = Targetlifeadd
trigger1 = AnimElem = 9
value = -130

[State 611, 17]
type = Turn
trigger1 = animelem = 13

[State 611, 18]
type = PosAdd
trigger1 = animelem = 13
x = 1

[State 611, 19]
type = ChangeState
triggerall = time = [5,10]
triggerall = target,command = "holdfwd" || enemy,command = "holdback"
trigger1 = enemy,command = "a"
trigger2 = enemy,command = "b"
trigger3 = enemy,command = "x"
trigger4 = enemy,command = "y"
value = 5260

[State 611, 20]
type = ChangeState
trigger1 = animtime = 0 
value = 0
ctrl = 1

;Grabbed
[Statedef 613]
type    = A
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 613, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 612

[State 613, 2]
type = SprPriority
trigger1 = animelem = 3
value = 3

[State 613, 3]
type = SprPriority
trigger1 = animelem = 9
value = 0

[State 613, 4]
type = Turn
trigger1 = anim = 612 && animelem = 4

[State 613, 5]
type = changeState
trigger1 = animtime = 0
value = 614

;In air
[Statedef 614]
type    = A
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 614, 1]
type = VelSet
trigger1 = time = 0
x = -7
Y = -4

[State 614, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 614, 3]
type = VelAdd
trigger1 = time > 0
y = .52

[State 614, 4]
type = ChangeAnim
Trigger1 = Time = 0
value = 5070

[State 614, 5]
type = changestate
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 615

;Slide on ground
[Statedef 615]
type    = L
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 615, 1]
type = ChangeAnim
trigger1 = time < 21
value = 5100

[State 615, 2]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 615, 3]
type = PosSet
trigger1 = time = 0
y = 0

[State 615, 4]
type = VelSet
trigger1 = time = 0
x = -5
Y = 0

[State 615, 5]
type = Veladd
trigger1 = time > 0 && anim = 5100
x = .2

[State 615, 6]
type = VelSet
trigger1 = anim = 5110
x = 0
Y = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,6
volumescale = 50

[State 1000, Explod]
type = Explod
trigger1 = time = 0
anim = f60
pos = 0,0
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
sprpriority = 5

[State 615, 7]
type = changeanim
trigger1 = time = 21
value = 5110

[State 615, 8]
type = Selfstate
trigger1 = anim = 5110 && time = 30 && alive
value = 5120

[State 615, 9]
type = Selfstate
trigger1 = anim = 5110 && time = 30 && !alive
value = 5150

;Knocking away
[Statedef 616]
type    = A
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 616, 1]
type = PosSet
trigger1 = time = 0
y = 0

[State 616, 2]
type = ChangeAnim
Trigger1 = Time = 0
value = 120

[State 616, 3]
type = ChangeAnim
Trigger1 = anim = 120 && animtime = 0
value = 130

[State 616, 4]
type = ChangeAnim
Trigger1 = time = 20
value = 140

[State 616, 5]
type = selfState
trigger1 = anim = 140 && animtime = 0
value = 0
ctrl = 1

;Counter Knockdown
[Statedef 700]
Type = S
Movetype = A
Physics = S
anim = 700
poweradd = -1000
juggle = 9
velset = 0,0
ctrl = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f5200,1

[State 1000, Explod]
type = Explod
trigger1 = time = 0
anim = f106
pos = 11,-43
postype = p1
bindtime = 1
removetime = -2
supermove = 1
pausemove = 1
ownpal = 1
sprpriority = 5

[State 2000, SuperPause]
type = SuperPause
trigger1 = time = 0
anim = -1
movetime = 10
time = 10
darken = 0

[State 700, 1]
type = HitBy
trigger1 = Time <= 15
value = SCA, NT, ST, HT

[State 700, 2]
type = SuperPause
trigger1 = time = 0
time = 14
anim = -1
movetime = 14
darken = 0
ignorehitpause = 0

[State 700, 3]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 4
under = 1

[State 700, 4]
type = Explod
trigger1 = time = 0
anim = 8011 
pos = 11,-86
supermove = 1
sprpriority = 2

[State 700, 5]
type = PlaySnd
trigger1 = animelem = 4
value = 2,1

[State 700, 6]
type = PlaySnd
trigger1 = animelemtime(2) = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 700, 7]
type = HitDef
trigger1 = time = 0
attr = S, NA
damage = 70
hitflag = MAF
guardflag = MA
animtype = Hard
ground.animtype = low
pausetime = 7,8
guard.pausetime = 7,6
sparkno = 1
guard.sparkno = 40
sparkxy = 0,-70
hitsound = S0,4
guardsound = S1,0
ground.velocity = -4,-9
ground.cornerpush.veloff = 0
air.velocity = -4,-6
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 35
guard.velocity = -12
Guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 90,70
givepower = 50,20
fall.yvelocity = -3.4
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55

[State 700, 8]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Slide Fwd Counter
[Statedef 710]
type = S
movetype = I
physics = N
anim = 710
sprpriority = -1
poweradd = -1000 
velset = 0,0
ctrl = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f5200,1

[State 1000, Explod]
type = Explod
trigger1 = time = 0
anim = f106
pos = 11,-43
postype = p1
bindtime = 1
removetime = -2
supermove = 1
pausemove = 1
ownpal = 1
sprpriority = 5

[State 1000, Dodge Explod1]
type = Explod
triggerall = numexplod(4150) <= 0
trigger1 = numexplod(4150) <= 0 && teamside = 2
ignorehitpause = 1
persistent = 0
anim = f4160
pos = -81,206
id = 4150
postype = right
bindtime = -1
ontop = 1
ownpal = 1

[State 1000, Dodge Explod2]
type = Explod
triggerall = numexplod(4150) <= 0
trigger1 = numexplod(4150) <= 0 && teamside = 1
ignorehitpause = 1
persistent = 0
anim = f4160
pos = 4,206
id = 4150
postype = left
bindtime = -1
ontop = 1
ownpal = 1

[State 2000, SuperPause]
type = SuperPause
trigger1 = prevstateno = [150,152]
trigger1 = time = 0
anim = -1
movetime = 10
time = 10
darken = 0

[State 700, 1]
type = SuperPause
trigger1 = time = 0
time = 4
anim = -1
movetime = 4
darken = 0
ignorehitpause = 0

[State 700, 2]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 4
under = 1

[State 700, 3]
type = Explod
trigger1 = time = 0
anim = 8011 
pos = 11,-86
supermove = 1
sprpriority = 2

[State 710, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 500,0
channel = 0

[State 710, 2]
type = HitBy
trigger1 = Time >= 0
value = SCA, NT, ST, HT

[State 710, 3]
type = SprPriority
trigger1 = Time = 13
value = -1

[State 710, 4]
type = VelSet
trigger1 = time >= 12
trigger1 = time < 30
x = 5 

[State 710, 5]
type = VelSet
trigger1 = time = 30
x = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 11
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 2041, 2]
type = Afterimagetime
trigger1 = stateno = 710
trigger1 = time%2 = 0 && Time < 20
time = 2

[State 710, 8]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 710, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Slide Back
[Statedef 720]
type = S
movetype = I
physics = N
anim = 720
sprpriority = -1
poweradd = -1000
velset = 0,0
ctrl = 0

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f5200,1

[State 1000, Explod]
type = Explod
trigger1 = time = 0
anim = f106
pos = 11,-43
postype = p1
bindtime = 1
removetime = -2
supermove = 1
pausemove = 1
ownpal = 1
sprpriority = 5

[State 1000, Dodge Explod1]
type = Explod
triggerall = numexplod(4150) <= 0
trigger1 = numexplod(4150) <= 0 && teamside = 2
ignorehitpause = 1
persistent = 0
anim = f4160
pos = -81,206
id = 4150
postype = right
bindtime = -1
ontop = 1
ownpal = 1

[State 1000, Dodge Explod2]
type = Explod
triggerall = numexplod(4150) <= 0
trigger1 = numexplod(4150) <= 0 && teamside = 1
ignorehitpause = 1
persistent = 0
anim = f4160
pos = 4,206
id = 4150
postype = left
bindtime = -1
ontop = 1
ownpal = 1

[State 2000, SuperPause]
type = SuperPause
trigger1 = prevstateno = [150,152]
trigger1 = time = 0
anim = -1
movetime = 10
time = 10
darken = 0

[State 700, 1]
type = SuperPause
trigger1 = time = 0
time = 4
anim = -1
movetime = 4
darken = 0
ignorehitpause = 0

[State 700, 2]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 4
under = 1

[State 700, 3]
type = Explod
trigger1 = time = 0
anim = 8011 
pos = 11,-86
supermove = 1
sprpriority = 2

[State 720, 1]
type = PlaySnd
trigger1 = animelem = 2
value = 500,0
channel = 0

[State 720, 2]
type = HitBy
trigger1 = Time >= 0
value = SCA, NT, ST, HT

[State 720, 3]
type = SprPriority
trigger1 = Time = 12
value = -1

[State 720, 4]
type = VelSet
trigger1 = time >= 12
trigger1 = time < 29
x = -5 

[State 720, 5]
type = VelSet
trigger1 = time = 29
x = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 11
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 2041, 2]
type = Afterimagetime
trigger1 = stateno = 720
trigger1 = time%2 = 0 && Time < 20
time = 2

[State 720, 8]
type = PlayerPush
trigger1 = Time >= 0
value = 0

[State 710, 9]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Power Up
[Statedef 800]
type = S
movetype = I
physics = S
anim = 800
sprpriority = 1
velset = 0,0
ctrl = 0

[State 800, 1]
type = PlaySnd
trigger1 = time = 1
value = 800,0
channel = 0

[State 800, 2]
type = PlaySnd
trigger1 = time = 1
value = 800,1
channel = 3

[State 800, 4]
type = ChangeState
trigger1 = var(58) = 0
trigger1 = command != "holda" || command != "holdy"
trigger2 = power = 4000
trigger3 = var(58) = 1 && p2movetype != H
value = 802

[State 800, 5]
type = ChangeState
triggerAll = AnimTime = 0
trigger1 = command = "holda" && command = "holdy"
trigger2 = var(58) = 1 && p2movetype != H
value = 801

;Power Up - Charge
[Statedef 801]
type = S
movetype = I
physics = S
anim = 801
sprpriority = 1
velset = 0,0
ctrl = 0

[State 902 explod kanji]
type = Explod
trigger1 = Timemod = 20,5
ID = 8014
anim = 8048
postype = p1
pos = -4,0
sprpriority = 8
removeongethit = 1
ownpal = 1
removetime = 6666

[State 900 explod aura]
type = Explod
trigger1 = Time > 1
trigger1 = timemod = 3,2
ID = 3
anim = 8553
postype = p1
pos = 10,-(ifelse(random%2,20,70))
sprpriority = ifelse(random%2,-20,50)
removeongethit = 1
random = 50,50
accel = 0.2,-0.05
velocity = -2.7,-2
ownpal = 1

[State 900 explod aura]
type = Explod
trigger1 = Time > 1
trigger1 = timemod = 3,2
ID = 3
anim = 8553
postype = p1
pos = 10,-(ifelse(random%2,20,70))
sprpriority = ifelse(random%2,-20,50)
removeongethit = 1
random = 50,50
accel = -0.2,-0.05
velocity = 2.7,-2
ownpal = 1


[State 911, 2]
type = PowerAdd
trigger1 = gameTime%1 = 0
value = 16

[State 801, 2]
type = Explod
triggerall = numexplod(911)= 0
trigger1 = time = 0
anim = f130
ID = 8014
bindtime = -1
ownpal = 1
removetime = -1
sprpriority = 2

[State 801, 3]
type = ChangeState
trigger1 = var(58) = 0
trigger1 = command != "holda" || command != "holdy"
trigger2 = power = 4000
trigger3 = var(58) = 1 
trigger3 = p2movetype != H
value = 802

;Power Up - End
[Statedef 802]
type = S
movetype = I
physics = S
anim = 802
sprpriority = 1
velset = 0,0
ctrl = 0

[State 801, 2]
type = Explod
trigger1 = time = 0
trigger1 = power >= 4000
anim = f140
bindtime = -1
ownpal = 1
sprpriority = 2

[State 1000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
trigger1 = power >= 4000
value = f5,6

[State 1000, EnvShake]
type = EnvShake
trigger1 = AnimElem = 1
trigger1 = power >= 4000
time = 10
freq = 90
ampl = -4
phase = 90

[State 802, 1]
type = RemoveExplod
trigger1 = time = 0 
ID = 8014

[State 802, 2]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 802, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

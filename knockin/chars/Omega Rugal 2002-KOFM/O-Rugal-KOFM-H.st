 ;Last Judgement
[Statedef 3400]
type     = S
movetype = A
physics  = N
juggle   = 0
velset   = 0,0
anim     = 4400
ctrl     = 0
sprpriority = 2

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 170, 無敵]
type = NotHitBy
trigger1 = time = 0
value = SCA
time = 30

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time = 0
edge = 50,0

[State 2000, 超必殺技発動の時間停?]
type = SuperPause
trigger1 = time = 0
anim = -1
poweradd = -2000
movetime = 30
time = 30
darken = 0

[State 2000]
type = AssertSpecial
trigger1 = time = [0,30]
flag = NoFG
flag2 = NOBG
ignorehitpause = 1

[State 2000]
type = Explod
trigger1 = time = 0
anim = f103
pos = 0,-105
sprpriority = -3
ownpal = 1
bindtime = 1
supermove = 1

[State 2000]
type = Explod
trigger1 = time = 0
anim = f102
pos = 0,-105
sprpriority = 3
ownpal = 1
bindtime = 1
supermove = 1

[State 2000,]
type = PlaySnd
trigger1 = time = 0
value = s3,1

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 0
value = s10,32

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 3
value = s1900,0

[State -3, 残像]
type = AfterImage
trigger1 = AnimElem = 2
time = 64
trans = add1
timegap = 3
framegap = 1
length = 6
palbright = 5,0,0
palcontrast = 250,120,120
paladd = 100,-50,-50

[State 1000, ]
type = Velset
trigger1 = AnimElem = 3
x = 9

[State 1000, ]
type = Veladd
trigger1 = AnimElem >= 3
x = ifelse(Vel X > 0, -.26,.26)

[State 200, ヒット定?]
type = HitDef
triggerall = P2Stateno != [150,155]
trigger1 = time = 0
attr = S, HT
damage = 0, 0
animtype = Hard
hitflag = MF
guardflag = -1
priority = 5, miss
pausetime = 0, 0
sparkno = 81
sparkxy = 0, -60
hitsound = -1;s1,5
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = 0
fall = 1
fall.recover = 0
p1sprpriority = 0
p2sprpriority = 1
p1facing = 1
p2facing = 1
p1stateno = 3410
p2stateno = 3420
numhits = 0

[State 5040, 4]
type = StateTypeSet
trigger1 = p2bodydist X <= 15
movetype = A

[State 5040, 4]
type = StateTypeSet
trigger1 = p2bodydist X > 15
movetype = I

[State 1000, ステ?ト変更]
type = ChangeState
trigger1 = Time = 64
value = 3405

;---------------------------------------------------------------------------
; ラストジャッジメント?停?

[Statedef 3405]
type     = S
movetype = I
physics  = S
juggle   = 0
poweradd = 0
anim     = 4401
ctrl     = 0
sprpriority = 1

[State 1000, ]
type = Velset
trigger1 = time = 0
x = 0

[State 1000, ステ?ト変更]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;-----------------------------------------------------------------------------
;投げ１・投げている（自分）
[Statedef 3410]
type    = S
movetype= A
physics = N
velset = 0,0
anim = 4402

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = 1
edge = 70,0

[State -2, 残像]
type = AfterImage
trigger1 = time = 0
time = 1

[State 810, 1]
type = PlaySnd
Trigger1 = time = 0
value = s0,5

[State 810, 1]
type = PlaySnd
Trigger1 = time = 0
value = s2500,0

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(1) >= 0 && AnimElemtime(2) < 0
pos = 40, 0

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(2) >= 0 && AnimElemtime(3) < 0
pos = 60, -70

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(3) >= 0 && AnimElemtime(4) < 0
pos = 55, -70

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(4) >= 0 && AnimElemtime(5) < 0
pos = 55, -68

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(5) >= 0 && AnimElemtime(6) < 0
pos = 60, -120

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(6) >= 0 && AnimElemtime(7) < 0
pos = 60, -125

[State 810, 3]
type = TargetBind
Trigger1 = AnimElemtime(7) >= 0
pos = 58, -123

[State 810, 3]
type = TargetBind
Trigger1 = AnimTime = 0
pos = 70, 0

[State 810, 1]
type = ChangeState
trigger1 = time = 40
value = 3411

;-----------------------------------------------------------------------
[Statedef 3411]
type = S
movetype = A
physics = N
movetime = 0

[State 1000, 2]
type = Width
trigger1 = 1
value = 0,0

[State 1100, 5]
type = PlayerPush
trigger1 = 1
value = 0

[State 1260, 1]
type = posadd
trigger1 = Time = 0
x = 0

[State 2000, 15]
type = EnvColor
trigger1 = Time >= 0
time = 1
value = 0,0,0
under = 0
ignorehitpause = 1
persistent = 0

[State 3010, 1]
type = BGPalFX
trigger1 = 1
time = 1
add = 0,0,0
mul = 0,0,0
ignorehitpause = 1

[State 3500, 13]
type = AssertSpecial
trigger1 = 1
flag = Nofg
flag1 = noshadow
ignorehitpause = 1

[state 2]
type = envcolor
trigger1 = time%5 = 0
value = 255,255,255
time = 1
under = 1

[State 1000, 1]
type = PlaySnd
trigger1 = time <= 90
value = s0,ifelse(random<500,3,2)
ignorepausetime = 1
ignorehitpause = 1
persistent = 5
channel = 30

[State 1105, 3]
type = HitAdd
trigger1 = time <= 90
value = 1
ignorepausetime = 1
ignorehitpause = 1
persistent = 5

[State 3000,1]
type = Explod
trigger1 = time <= 90
anim = f3
pos = 0,60
postype = P2
random = 45,85
facing = -1
ontop = 1
ownpal = 1
supermove = 1
pausemovetime = -1
removetime = -2
ignorepausetime = 1
ignorehitpause = 1
persistent = 5

[State 903, 11]
type = TargetpowerAdd
trigger1 = time <= 90
value = 20
ignorepausetime = 1
ignorehitpause = 1
persistent = 5

[State 2000]
type = AssertSpecial
trigger1 = time <= 90
flag = NoFG
flag2 = NOBG
flag3 = invisible
ignorehitpause = 1

[State 2000]
type = AssertSpecial
trigger1 = time <= 90
flag = noshadow
flag2 = globalnoshadow
flag3 = timerfreeze
ignorehitpause = 1

[state 200]
type = envshake
trigger1 = time = 0
time = 76
ampl = -7
freq = 70
phase = 70

[State 810, 1]
type = TargetLifeAdd
trigger1 = Time = 76
value = -550

[State 1270, 10]
type = ChangeState
trigger1 = Time = 76
value = 3415

;-----------------------------------------------------------------------------
;投げ１・投げている（自分）
[Statedef 3415]
type    = S
movetype= I
physics = N
anim = 5503

[State 820, 1]
type = TargetState
trigger1 = Time = 0
value = 3425

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 1]
type = PlaySnd
Trigger1 = !Win
Trigger1 = time = 0
value = s0,4

[State 810, 1]
type = PlaySnd
Trigger1 = time = 0
value = s195,0

[State 810, 1]
type = PlaySnd
Trigger1 = time = 0
value = s2000,2

[State 810, 1]
type = PlaySnd
Trigger1 = time = 0
value = s2000,3

[State 191,]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 2000]
type = Explod
Trigger1 = p2life = 0;Win
trigger1 = time = 0
anim = 3325
pos = 0,0
postype = Left
sprpriority = -10
ownpal = 1
bindtime = 1
supermove = 1
scale = 1.06,1.08

[State 2160, 33]
type = Explod
trigger1 = p2life != 0 && Time = 1
anim = F64
sprpriority = -10
postype = p2
pos = 0,0
bindtime = 1

[State 2160, 34]
type = Explod
trigger1 = p2life != 0 && Time = 1
anim = F65
sprpriority = 10
postype = p2
pos = 0,0
bindtime = 1

[State 183, 3]
type = EnvShake
trigger1 = p2life != 0 && Time = 0
persistent = 0
ignorehitpause = 1
freq = 170
ampl = 7
phase = 170
time = 15

[State 2000]
type = AssertSpecial
Trigger1 = Win
trigger1 = 1
flag = NoMusic
flag2 = NoKOsnd
flag3 = NoBarDisplay

[State 2000]
type = AssertSpecial
Trigger1 = Win
trigger1 = 1
flag = NoFG
flag2 = NOBG
ignorehitpause = 1

[State 820, 1]
type = EnvShake
trigger1 = time = 0
time = 10
ampl = 6
freq = 80

[State 2100,]
type = Envcolor
Trigger1 = Win
trigger1 = time = 0
time = 1
value = 255,255,255

[State 190,]
type = Explod
trigger1 = time = 0
pos = 46,0
anim = 667
keyctrl = 0
bindtime = -1
ownpal = 1
sprpriority = -2

[State 191,]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 810, 1]
type = ChangeAnim
trigger1 = Anim = 5503
trigger1 = Win
trigger1 = AnimTime = 0
value = 4403

[State 810, 1]
type = ChangeState
trigger1 = !Win
trigger1 = AnimTime = 0
value = 3416

[State 810, 1]
type = ChangeState
trigger1 = Anim = 4403
trigger1 = AnimTime = 0
value = 3418

;-----------------------------------------------------------------------------
;投げ１・投げている（自分）
[Statedef 3416]
type    = S
movetype= I
physics = N
anim = 4403

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 191,]
type = AssertSpecial
trigger1 = Win
trigger1 = 1
flag = NoMusic

[State 810, 1]
type = ChangeState
trigger1 = !Win
trigger1 = AnimTime = 0
value = 3417

;-----------------------------------------------------------------------------
;投げ１・投げている（自分）
[Statedef 3417]
type    = S
movetype= I
physics = N
anim = 4404

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 810, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 勝利??ズ1

[Statedef 3418]
type    = S
movetype= I
physics = S
poweradd= 0
ctrl = 1
velset = 0,0
anim = 4406
velset = 0,0
sprpriority = 0

[State 810, 1]
type = PlaySnd
Trigger1 = p2life = 0;Win
Trigger1 = time = 0
value = s181,0
volumescale = 100

[State 190,]
type = AssertSpecial
trigger1 = 1
flag = NoMusic

[State 190,]
type = Changestate
trigger1 = p2movetype = A
value = 0
ctrl = 1
;---------------------------------------------------------------------------
; 勝利??ズ2

[Statedef 3419]
type = S
ctrl = 0
anim = 4406
velset = 0,0
sprpriority = 0

[State 181, 特殊効果]
type = AssertSpecial
trigger1 = time = [0,150]
flag = roundnotover

;---------------------------------------------------------------------------
;投げ１・投げられている（相手の動作）動作
[Statedef 3420]
type    = S
movetype= H
physics = N
velset = 0,0

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5500

[State 820, 1]
type = SelfState
trigger1 = Enemy,Stateno != [3410,3415]
value = 5000

[State 820, 1]
type = ChangeState
trigger1 = AnimTime = 0
value = 3425

;---------------------------------------------------------------------------
;投げ１・投げられている（相手の動作）動作
[Statedef 3425]
type    = L
movetype= H
physics = N
velset = 0,0

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 820, 1]
type = Posset
Trigger1 = Time = 0
y = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 5501

[State 410, 4]
type = null;SelfState
trigger1 = Time >= 1
trigger1 = Life <= 0
value = 5150

[State 820, 1]
type = SelfState
trigger1 = AnimTime = 0
value = ifelse(alive,5120,5150)

;Gigantic Pressure light
[Statedef 2000]
Type = S
Movetype = A
Physics = S
anim = 2000
juggle = ifelse((prevstateno=[1000,1999]),0,8)
velset = 0,0
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -1000
ignorehitpause = 1

[State 2000, nothitby]
type = NotHitBy
trigger1 = time < 33
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2000, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2000, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2000, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2000, 4]
type = Explod
trigger1 = time = 3
anim = f101 
pos = -48,-102
supermove = 1
sprpriority = -1

[State 2000, 5]
type = Explod
trigger1 = time = 3
anim = f100 
pos = -48,-102
supermove = 1
sprpriority = 4

[State 2000, 6]
type = PlaySnd
trigger1 = time = 1
value = 3,0

[State 2000, 8]
type = ChangeState
trigger1 = animtime = 0
value = 2001

;Gigantic pressure light - run
[Statedef 2001]
Type = S
Movetype = A
Physics = S
anim = 2001
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 1301, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 0
channel = 8
loop = 1

[State 2001, 2]
type = VelSet
trigger1 = time >= 0
x = 9

[State 2001, 3]
type = HitDef
trigger1 = 1
attr = S, HA
animtype = hard
priority = 7,miss
damage = 0,10
guardflag = M
hitflag = MAF
hitonce = 1
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 81;hard1
guard.sparkno = 50;hard
sparkxy = 0,-55
hitsound = S0,5
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -12
givepower = 10,10
air.juggle = 15
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
p1stateno = 2004
p2stateno = 2020;19
p2facing = 1
persistent = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 16
trigger2 = MoveContact
trigger3 = MoveHit
channel = 7
;ignorehitpause =
;persistent =

[State 2001, 4]
type = ChangeState
trigger1 = MoveContact
value = 1303

[State 2001, 5]
type = ChangeState
trigger1 = time = 16
value = 1302

;Gigantic Pressure Hard
[Statedef 2010]
Type = S
Movetype = A
Physics = S
anim = 2000
juggle = ifelse((prevstateno=[1000,1999]),0,8)
velset = 0,0
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -1000
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2010, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2010, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2010, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2010, 4]
type = Explod
trigger1 = time = 3
anim = f101
pos = -48,-102
supermove = 1
sprpriority = 0

[State 2010, 5]
type = Explod
trigger1 = time = 3
anim = f100
pos = -48,-102
supermove = 1
sprpriority = 2

[State 2010, 6]
type = PlaySnd
trigger1 = time = 1
value = 3,0

[State 2010, nothitby]
type = NotHitBy
trigger1 = time < 33
value = SCA

[State 2010, 8]
type = ChangeState
trigger1 = animtime = 0
value = 2011

;Gigantic pressure Hard - run
[Statedef 2011]
Type = S
Movetype = A
Physics = S
anim = 2001
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 1301, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 0
channel = 8
loop = 1

[State 2011, 2]
type = VelSet
trigger1 = time >= 0
x = 9

[State 2011, 3]
type = HitDef
trigger1 = 1
attr = S, HA
animtype = hard
priority = 7,miss
damage = 0,10
guardflag = M
hitflag = MAF
hitonce = 1
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 81;hard1
guard.sparkno = 50;hard
sparkxy = 0,-55
hitsound = S0,5
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -12
givepower = 10,10
air.juggle = 15
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
p1stateno = 2004
p2stateno = 2020;19
p2facing = 1
persistent = 0

[State 0, StopSnd]
type = StopSnd
trigger1 = time = 24
trigger2 = MoveContact
trigger3 = MoveHit
channel = 7
;ignorehitpause =
;persistent =

[State 2011, 4]
type = ChangeState
trigger1 = MoveContact
value = 1303

[State 2011, 5]
type = ChangeState
trigger1 = time = 24
value = 1302

;Gigantic pressure light - Hit run
[Statedef 2004]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 2]
type = ChangeAnim
trigger1 = time = 0
value = 1310

[State 0, StopSnd]
type = StopSnd
trigger1 = 1
channel = 7

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2004, 1]
type = TargetState
trigger1 = time = 0
value = 2020

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2004, 3]
type = Explod
trigger1 = time = 0
anim = 6255
ID = 6250
bindtime = -1
sprpriority = 3
removetime = 1
ownpal = 1

[State 2004, 4]
type = Explod
trigger1 = time = 1
anim = 6255
ID = 6250
bindtime = -1
sprpriority = 3
removetime = -1
ownpal = 1

[State 2004, 5]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 2004, 7]
type = VelSet
trigger1 = time >= 0
x = 12

[State 1304, 4]
type = TargetBind
trigger1 = time >= 0
pos = -13,-66
ignorehitpause = 1

[State 2004, 9]
type = PlaySnd
trigger1 = time = 0
value = 600, 2
channel = 2

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time <= 5
edge = 45,0;100,0

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time >= 6
edge = 35,0;70,0

[State 2004, 11]
type = ChangeState
trigger1 = time >= 6
trigger1 = FrontEdgeDist <= 55;90
;trigger2 = time >= 180
value = 2005

;Gigantic pressure light - Hit press
[Statedef 2005]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 1]
type = posset
trigger1 = time = 0
y = 0

[State 2005, 1]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 2005, 2]
type = RemoveExplod
trigger1 = time = 0
ID = 6250

[State 2005, 3]
type = Explod
trigger1 = time = 0
anim = 6256
pos = 0,0
sprpriority = 10

[State 2005, 4]
type = ChangeAnim
trigger1 = time = 0
value = 2005

[State 2005, 5]
type = PosAdd
trigger1 = time = 0
x = -70;30

[State 2005, 6]
type = Targetstate
trigger1 = time = 0
value = 1321

[State 2005, 7]
type = TargetBind
trigger1 = anim = 2005 && animelem = 1
pos = 95, -73
ignorehitpause = 0

[State 2005, 8]
type = TargetBind
trigger1 = anim = 2005 && animelemtime(2) >= 0 && animelemtime(2) <= 9
pos = 128, -73
ignorehitpause = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2005, 9]
type = TargetLifeAdd
trigger1 = anim = 2005 && animelem = 2, = 1
value = -300

[State 2005, 10]
type = EnvShake
trigger1 = anim = 2005 && animelem = 2, = 1
time = 16
freq = 90
ampl = 12

[State 0, ]
type = Pause
trigger1 = anim = 2005 && animelem = 2, = 1
time = 3
movetime = 3
ignorehitpause = 1
persistent = 0

[State 2000, 6]
type =  PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,1

[State 2005, 13]
type = PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,2

[State 2005, 12]
type = PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,3

[State 2005, 14]
type = EnvColor
trigger1 = anim = 2005 && animelem = 2, = 1
value = 255,255,255
time = 1
under = 1

[State 2005, 15]
type = Explod
trigger1 = anim = 2005 && animelem = 2, = 1
anim = 6265
pos = 108,0
sprpriority = 2

[State 2005, 16]
type = ChangeState
trigger1 = animtime = 0
value = 1306
ctrl = 1

;Gigantic pressure - Hitted
[Statedef 2019]
Type = S
Movetype = H
Physics = N
velset = 0,0
anim = 5010
ctrl = 0

[State 2019, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 2019, 2]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 3040, PalFX]
type = PalFX
trigger1 = time = 0
time = -1
add = -10,-75,-20
mul = 150,150,150
sinadd = 50,50,50,10
color = 0
invertall = 1

[State 2019, 4]
type = PosSet
trigger1 = time = 0
y = 0

[State 2019, 5] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 2019, 6] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 2019, 7] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 2019, 8] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2019, 9] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 2019, 10]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 2019, 11]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 2019, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2019, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2019, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;Gigantic pressure light - Hitted
[Statedef 2020]
Type = S
Movetype = H
Physics = N
velset = 0,0
ctrl = 0

[State 2020, 1]
type = ScreenBound
trigger1 = 1
value = 0

[State 3040, PalFX]
type = PalFX
trigger1 = time = 0
time = -1
add = -10,-75,-20
mul = 150,150,150
sinadd = 50,50,50,10
color = 0
invertall = 1

[State 2020, 2]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 2020, 3]
type = sprpriority
trigger1 = time = 0
value = 2

[State 2020, 4]
type = Width
trigger1 = 1 
edge = 0,-20
player = 0,0

[State 2020, 5]
type = Changeanim2
trigger1 = time = 0
value = 1308

;Gigantic pressure light - Hitted
[Statedef 2021]
Type = S
Movetype = H
Physics = N
velset = 0,0
sprpriority = 2
ctrl = 0

[State 3040, PalFX]
type = PalFX
trigger1 = time = 0
time = -1
add = -10,-75,-20
mul = 150,150,150
sinadd = 50,50,50,10
color = 0
invertall = 1

[State 2020, 1]
type = ScreenBound
trigger1 = time <= 12 
value = 0

[State 2021, 1]
type = sprpriority
trigger1 = time = 2
value = 0

[State 2021, 2]
type = Width
trigger1 = time <= 12 
edge = 0,-20
player = 0,0

[State 2021, 3]
type = Changeanim2
trigger1 = time = 2
value = 2009

[State 2021, 4]
type = changestate
trigger1 = anim = 2009 && animtime = 0
value = 2022

;Gigantic pressure light - Hitted (in air)
[Statedef 2022]
type    = A
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 0, PalFX]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
sinadd = 0,0,0,1
color = 256
invertall = 0

[State 2022, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2022, 2]
type = PosAdd
trigger1 = time = 0
y = -const(size.mid.pos.y)
x = const(size.mid.pos.x)

[State 2022, 3]
type = VelSet
trigger1 = time = 0
x = -4
Y = -6

[State 2022, 4]
type = VelAdd
trigger1 = time > 0
y = .45

[State 2022, 5]
type = ChangeAnim
Trigger1 = Time = 0
value = 5030

[State 2022, 6]
type = Changeanim
trigger1 = time = 8
value = 5050

[State 2022, 7]
type = Changeanim
trigger1 = Vel Y >= 1
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 2022, 8]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 2023

;Gigantic pressure light - Hitted (Hit Ground)
[Statedef 2023]
type    = L
movetype= H 
sprpriority = 0
physics = N
ctrl = 0

[State 2023, 1]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
sinadd = 0,0,0,1
color = 256
invertall = 0

[State 2314, 2]
type = NotHitBy
trigger1 = time <= 1
value = SCA

[State 2023, 2]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 2023, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 2023, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 2023, 3] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 2023, 4] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 2023, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 2023, 6]
type = VelSet
trigger1 = Time = 0
y = 0

[State 2023, 7] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 2023, 9]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 2023, 10]
type = HitFallDamage
trigger1 = Time = 3

[State 2023, 11]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 2023, 12]
type = PosFreeze
trigger1 = 1

[State 2023, 13]
type = SelfState
trigger1 = AnimTime = 0
trigger2 = time = 5
value = 5101

[State 2023, 14]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;Omega Dextruction light
[Statedef 2300]
Type = S
Movetype = A
Physics = S
juggle = ifelse((prevstateno=[1000,1999]),0,8)
anim = 2200
velset = 0,0
ctrl = 0

;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -1000
ignorehitpause = 1

[State 2200, 1]
type = NotHitBy
trigger1 = time < 33
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2200, 2]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2200, 3]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2200, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2200, 4]
type = Explod
trigger1 = time = 3
anim = f101
pos = 16,-119
supermove = 1
sprpriority = 0

[State 2200, 5]
type = Explod
trigger1 = time = 3
anim = f100
pos = 16,-119
supermove = 1
sprpriority = 2

[State 2200, 6]
type = PlaySnd
trigger1 = time = 1
value = 3,0

[State 2200, ]
type = PlaySnd
trigger1 = time = 10
value = 180,0
channel = 0

[State 2200, Hitdef]
type = HitDef
trigger1 = roundstate = 2
trigger1 = AnimElem = 6
attr = S, HA
hitflag = MAF
animtype = hard
priority = 7,miss
damage = 0,0
hitonce = 1
guardflag = M
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 0,-51
hitsound = S0,6
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = -12
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
numhits = 0
fall = 0
snap = 38,0
yaccel = .5
p1stateno = 2320
p2getp1state = 1
p2stateno = 2235
P2facing = 1
kill = 0

[State 2200, ]
type = ChangeAnim
trigger1 = moveguarded
value = 2200
elem = 7
persistent = 0
ignorehitpause = 1

[State 2200, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Omega Dextruction Hard
[Statedef 2310]
Type = S
Movetype = A
Physics = S
juggle = ifelse((prevstateno=[1000,1999]),0,8)
anim = 2210
velset = 0,0
ctrl = 0

;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1400,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1400,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -1000
ignorehitpause = 1

[State 2210, ]
type = NotHitBy
trigger1 = time < 35
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2210, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2210, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2210, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2210, 4]
type = Explod
trigger1 = time = 3
anim = f101
pos = 16,-119
supermove = 1
sprpriority = 0

[State 2210, 5]
type = Explod
trigger1 = time = 3
anim = f100
pos = 16,-119
supermove = 1
sprpriority = 2

[State 2210, 6]
type = PlaySnd
trigger1 = time = 1
value = 3,0

[State 2210, ]
type = PlaySnd
trigger1 = time = 1
value = 2200,0
channel = 0

[State 2210, Hitdef]
type = HitDef
trigger1 = roundstate = 2
trigger1 = AnimElem = 6
attr = S, HA
hitflag = MAF
animtype = hard
priority = 7,miss
hitonce = 1
damage = 0,0
guardflag = M
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 0,-51
hitsound = S0,6
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = -12
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
numhits = 0
fall = 0
snap = 38,0
yaccel = .5
p1stateno = 2320
p2getp1state = 1
p2stateno = 2235
p2facing = 1
kill = 0

[State 2210, ]
type = ChangeAnim
trigger1 = moveguarded
value = 2210
elem = 7
persistent = 0
ignorehitpause = 1

[State 2210, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Grab Opponent
[Statedef 2320]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2201
sprpriority = 3
ctrl = 0

[State 2220, ]
type = Width
trigger1 = time = 0
edge = 80,0

[State 2220, ]
type = TargetState
trigger1 = time = 0
value = 2230

[State 2220, ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2220, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) <= -60
trigger1 = time = 0
pos = 96,0

[State 2220, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) > -60
trigger1 = time = 0
pos = 115,-62

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -71
trigger1 = animelem = 2
pos = 72,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -71
trigger1 = animelem = 2
pos = 87,-73

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -83
trigger1 = animelem = 3
pos = 60,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -83
trigger1 = animelem = 3
pos = 64,-85

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -101
trigger1 = animelem = 4
pos = 42,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -101
trigger1 = animelem = 4
pos = 45,-103

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 5
pos = 34,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 5
pos = 33,-117

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -122
trigger1 = animelem = 6
pos = 30,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -122
trigger1 = animelem = 6
pos = 29,-122

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 7
pos = 34,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 7
pos = 33,-117

[State 2220, ]
type = targetbind
trigger1 = animelem = 8
pos = 47,-31

[State 2220, ]
type = PosAdd
trigger1 = animelem = 9
x = 12

[State 2220, 3]
type = ChangeState
trigger1 = animtime = 0
value = 2321

;Uppercut
[Statedef 2321]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2202
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2221, ]
type = PlaySnd
trigger1 = time = 0
value = 2100,1
channel = 0

[State 2221, Lp]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -8,-100
hitsound = S0,2
guardsound = S1,1
ground.type = High
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
p2getp1state = 1
p2stateno = 2235
snap = 35,0
p2facing = 1
yaccel = .5
kill = 0

[State 2221, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2221, 3]
type = ChangeState
trigger1 = animelem = 5
value = 2322

;LP Close
[Statedef 2322]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2222, @Lk]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -8,-101
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 35,0
p2facing = 1
yaccel = .5
kill = 0

[State 2222, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2222, 3]
type = ChangeState
trigger1 = animelem = 10
value = 2323

;Punch
[Statedef 2323]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2223, @Lk]
type = HitDef
trigger1 = AnimElem = 12
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -12,-93
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 35,0
p2facing = 1
yaccel = .5
kill = 0

[State 2223, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2223, 3]
type = ChangeState
trigger1 = animelem = 15
value = 2324

;LP
[Statedef 2324]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2224, @Lk]
type = HitDef
trigger1 = AnimElem = 18
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -20,-66
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 35,0
p2facing = 1
yaccel = .5
kill = 0

[State 2224, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2224, 3]
type = ChangeState
trigger1 = animelem = 20
value = 2325

;HP
[Statedef 2325]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2225, ]
type = PosAdd
trigger1 = animelem = 21
x = 10

[State 2225, ]
type = PosAdd
trigger1 = animelem = 22
trigger2 = animelem = 23
x = 8

[State 2225, ]
type = PosAdd
trigger1 = animelem = 24
x = 4

[State 2225, ]
type = TargetBind
triggerall = numtarget >= 1
trigger1 = animelem = 21
trigger2 = animelem = 22
trigger3 = animelem = 23
trigger4 = animelem = 24
time = 2
pos = 31,0

[State 2225, @Lk]
type = HitDef
trigger1 = AnimElem = 23
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -40,-67
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2225, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2225, 3]
type = ChangeState
trigger1 = animelem = 28
value = 2326

;Backstep Punch
[Statedef 2326]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2226, @Lk]
type = HitDef
trigger1 = AnimElem = 30
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -25,-81
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2226, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2226, 3]
type = ChangeState
trigger1 = animelem = 34
value = 2327

;GC First
[Statedef 2327]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2227, ]
type = Explod
trigger1 = animelem = 37, = 1
anim = 6200
pos = -16,0
bindtime = -1
sprpriority = 2
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2227, @Lk]
type = HitDef
trigger1 = AnimElem = 38
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 43,3
guardflag = MA
pausetime = 12,14
sparkno = 12
guard.sparkno = 50
sparkxy = -8,-86
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.velocity = -12
ground.slidetime = 1
ground.hittime = 20
ground.velocity = 0
air.velocity = 0,-10
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
p2getp1state = 1
p2stateno = 2232
air.fall = 1
yaccel = .5
kill = 0

[State 2227, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2227, 3]
type = ChangeState
trigger1 = animtime = 0
value = 2328

;GC Second
[Statedef 2328]
type = A
movetype = A
physics = N
velset = 0,-7
juggle = 0
anim = 2203
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2228, ]
type = PlaySnd
trigger1 = time = 0
value = 1400,2

[State 2228, ]
type = VelAdd
trigger1 = time > 0
y = .31

[State 2228, ]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 6

[State 2228, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 63,3
hitflag = MAF
guardflag = M
animtype = hard
ground.type = low
pausetime = 11,13
sparkno = 12
guard.sparkno = 50
sparkxy = -10,-78
hitsound = S0,4
guardsound = S1,1
ground.velocity = -2,-12
ground.cornerpush.veloff = 0
air.velocity = -2,-12
air.cornerpush.veloff = 0
air.hittime = 9
fall = 1
fall.recovertime = 52
guard.velocity = -12
Guard.cornerpush.veloff = -12
ground.slidetime = 17
ground.hittime = 17
getpower = 0,0
givepower = 16,16
fall.yvelocity = -3.4
guard.pausetime = 11,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
p2getp1state = 1
p2stateno = 2240
yaccel = .55
kill = 1

[State 2228, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2228, 3]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= -5
value = 2329

;Land
[Statedef 2329]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2204
ctrl = 0

[State 2229, snd]
type = PlaySnd
trigger1 = time = 0
value = 52,0

[State 2229, unhittable]
type = NotHitBy
trigger1 = time < 10
value = SCA, AA, AT, AP

[State 2229, ]
type = PosSet
trigger1 = time = 0 
y = 0

[State 2229, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Hitted By Omega Dex
[Statedef 2230]
Type = S
Movetype = H
Physics = N
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -60
trigger1 = time = 0
value = 2230

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -60
trigger1 = time = 0
value = 2231

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -71
trigger1 = animelem = 2
value = 2230
elem = 2

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -71
trigger1 = animelem = 2
value = 2231
elem = 2

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -83
trigger1 = animelem = 3
value = 2230
elem = 3

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -83
trigger1 = animelem = 3
value = 2231
elem = 3

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -101
trigger1 = animelem = 4
value = 2230
elem = 4

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -101
trigger1 = animelem = 4
value = 2231
elem = 4

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -117
trigger1 = animelem = 5
value = 2230
elem = 5

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -117
trigger1 = animelem = 5
value = 2231
elem = 5

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -122
trigger1 = animelem = 6
value = 2230
elem = 6

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -122
trigger1 = animelem = 6
value = 2231
elem = 6

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -117
trigger1 = animelem = 7
value = 2230
elem = 7

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -117
trigger1 = animelem = 7
value = 2231
elem = 7

[State 2230, ]
type = Changeanim
trigger1 = anim = 2230 && animtime = 0
trigger2 = anim = 2231 && animtime = 0
trigger3 = anim = 5030
value = 5030

[State 2230, ]
type = StateTypeSet
trigger1 = anim = 5030
statetype = A

[State 2230, ]
type = VelAdd
trigger1 = anim = 5030
y = .55

[State 2230, 3]
type = SelfState
trigger1 = pos Y >= 10
trigger1 = vel Y > 0
value = 5100

; HITA_SHAKE
[Statedef 2231]
type    = A
movetype= H
physics = N
velset = 0,0

[State 2231, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 2231, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 2231, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 2231, 4]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2231, 5]
type = SelfState
trigger1 = HitShakeOver
value = 5030
ctrl = 0

[State 2231, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2231, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2231, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

; HIT_
[Statedef 2232]
type    = S
movetype= H
physics = N
velset = 0,0

[State 2232, 1] ;State for HIT_LIGHT to HIT_HARD
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = 2235

[State 2232, 2] ;State for HIT_BACK
type = ChangeState
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 2240

; HITG_SHAKE
[Statedef 2235]
type    = S
movetype= H
physics = N
velset = 0,0

[State 2235, 1] 
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5002,5012)

[State 2235, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 2235, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2235, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 2236

[State 2235, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2235, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2235, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

; HITG_SLIDE
[Statedef 2236]
type    = S
movetype= H
physics = S

[State 2236, 1]
type = Hitfallset
trigger1 = Time = 0
value = 0

[State 2236, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 2236, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10)
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 2236, 3] 
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 2236, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 2236, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 2236, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

; HITA_SHAKE
[Statedef 2240]
type    = A
movetype= H
physics = N
velset = 0,0

[State 2240, 2]
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 2240, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 2240, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2240, 5]
type = ChangeState
trigger1 = HitShakeOver
value = 2241
ctrl = 0

[State 2240, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2240, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2240, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

; HITA_UP (initial going up)
[Statedef 2241]
type    = A
movetype= H
physics = N
ctrl = 0

[State 2241, 1]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 2241, 2]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 2241, 4] 
type = ChangeAnim
trigger1 = selfanimexist(5062) 
trigger1 = Time > 0
value = anim

[State 2241, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    
trigger2 = Pos Y >= 10  
value = 2243

[State 2241, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 2242 

; HITA_UP_T (transition)
[Statedef 2242]
type    = A
movetype= H
physics = N

[State 2242, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] 
trigger1 = Anim != 5090
value = 5035

[State 2242, 2]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 2242, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  
trigger2 = AnimTime = 0 
trigger3 = Vel Y > 0    
trigger3 = Pos Y >= 10  
trigger4 = Time = 0     
trigger4 = Anim != 5035 
value = 2243

; HITA_FALL (knocked up, falling)
[Statedef 2243]
type    = A
movetype= H
physics = N

[State 2243, 1]
type = ChangeAnim
triggerall = selfanimexist(5062) = 0
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0 
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 
value = 5050

[State 2243, 2]
type = ChangeAnim
;trigger1 = anim = [5050,5059]
trigger1 = Vel Y < 0;>= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(5062)
value = 5062
;persistent = 0

[State 2243, 2]
type = ChangeAnim
;trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= 0;>= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(5062)
value = 5062
persistent = 0

[State 2240, 2]
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(5062) = 0 
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 2243, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 2243, 6]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 5100

;Omega Dextruction SDM
[Statedef 3250]
Type = S
Movetype = A
Physics = S
juggle = ifelse((prevstateno=[1000,3999]),0,8)
anim = 2250
velset = 0,0
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -2000
ignorehitpause = 1

[State 2250, ]
type = NotHitBy
trigger1 = time < 37
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2250, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2250, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2250, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2250, 4]
type = Explod
trigger1 = time = 3
anim = f103
pos = 16,-119
supermove = 1
sprpriority = 0

[State 2250, 5]
type = Explod
trigger1 = time = 3
anim = f102
pos = 16,-119
supermove = 1
sprpriority = 2

[State 2250, 7]
type = PlaySnd
trigger1 = time = 1
value = 3,1

[State 2250, ]
type = PlaySnd
trigger1 = time = 10
value = 180,0
channel = 0

[State 2225, Hitdef]
type = HitDef
trigger1 = roundstate = 2
trigger1 = AnimElem = 6
attr = S, HA
hitflag = MAF
animtype = hard
hitonce = 1
damage = 0,0
guardflag = M
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 0,-51
hitsound = S0,6
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = -12
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
numhits = 0
fall = 0
snap = 38,0
yaccel = .5
p1stateno = 3251
p2getp1state = 1
p2stateno = 2235
p2facing = 1
kill = 0

[State 2250, ]
type = ChangeAnim
trigger1 = moveguarded
value = 2250
elem = 7
persistent = 0
ignorehitpause = 1

[State 2250, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Grab Opponent
[Statedef 3251]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2251
sprpriority = 3
ctrl = 0

[State 2251, ]
type = Width
trigger1 = time = 0 
edge = 80,0

[State 2251, ]
type = TargetState
trigger1 = time = 0
value = 2230

[State 2251, ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2251, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) <= -60
trigger1 = time = 0
pos = 96,0

[State 2251, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) > -60
trigger1 = time = 0
pos = 115,-62

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -71
trigger1 = animelem = 2
pos = 72,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -71
trigger1 = animelem = 2
pos = 87,-73

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -83
trigger1 = animelem = 3
pos = 60,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -83
trigger1 = animelem = 3
pos = 64,-85

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -101
trigger1 = animelem = 4
pos = 42,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -101
trigger1 = animelem = 4
pos = 45,-103

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 5
pos = 34,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 5
pos = 33,-117

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -122
trigger1 = animelem = 6
pos = 30,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -122
trigger1 = animelem = 6
pos = 29,-122

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 7
pos = 34,0

[State 2251, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 7
pos = 33,-117

[State 2251, ]
type = targetbind
trigger1 = animelem = 8
pos = 47,-31

[State 2251, ]
type = PosAdd
trigger1 = animelem = 9
x = 12

[State 2251, 3]
type = ChangeState
trigger1 = animtime = 0
value = 3252

;LK close
[Statedef 3252]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2252
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2252, ]
type = PlaySnd
trigger1 = time = 0
value = 2100,1
channel = 0

[State 2252, Lp]
type = HitDef
trigger1 = AnimElem = 2
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -8,-76
hitsound = S0,2
guardsound = S1,1
ground.type = High
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
p2getp1state = 1
p2stateno = 2235
snap = 35,0
p2facing = 1
yaccel = .5
kill = 0

[State 2252, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2252, 3]
type = ChangeState
trigger1 = animelem = 4
value = 3253

;LK
[Statedef 3253]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2253, ]
type = PosAdd
trigger1 = animelem = 4
x = 6

[State 2253, ]
type = TargetBind
trigger1 = animelem = 4
trigger1 = numtarget >= 1
pos = 31,0

[State 2253, @Lk]
type = HitDef
trigger1 = AnimElem = 7
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -18,-37
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2253, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2253, 3]
type = ChangeState
trigger1 = animelem = 13
value = 3254

;HK close 1
[Statedef 3254]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2254, @Lk]
type = HitDef
trigger1 = AnimElem = 15
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -15,-71
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2254, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2254, 3]
type = ChangeState
trigger1 = animelem = 19
value = 3255

;HK close 2
[Statedef 3255]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2255, @Lk]
type = HitDef
trigger1 = AnimElem = 21
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -15,-91
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2255, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2255, 3]
type = ChangeState
trigger1 = animelem = 25
value = 3256

;HK
[Statedef 3256]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2256, @Lk]
type = HitDef
trigger1 = AnimElem = 30
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -25,-73
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2256, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2256, 3]
type = ChangeState
trigger1 = animelem = 33
value = 3257

;LK
[Statedef 3257]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2257, @Lk]
type = HitDef
trigger1 = AnimElem = 35
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -18,-37
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2257, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2257, 3]
type = ChangeState
trigger1 = animelem = 41
value = 3258

;Knockdown
[Statedef 3258]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2258, Lp]
type = HitDef
trigger1 = AnimElem = 44
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -8,-98
hitsound = S0,2
guardsound = S1,1
ground.type = High
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 1
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2258, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2258, 3]
type = ChangeState
trigger1 = animelem = 48
value = 3259

;Double Tomahawk 1
[Statedef 3259]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2259, @Lk]
type = HitDef
trigger1 = AnimElem = 50
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -25,-66
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2259, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2259, 3]
type = ChangeState
trigger1 = animelem = 55
value = 3260

;Double Tomahawk 2
[Statedef 3260]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2260, @Lk]
type = HitDef
trigger1 = AnimElem = 57
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 70,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -20,-61
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2260, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2260, 3]
type = ChangeState
trigger1 = animelem = 61
value = 3261

;HK close 1
[Statedef 3261]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2261, @Lk]
type = HitDef
trigger1 = AnimElem = 64
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -15,-71
hitsound = S0,2
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2261, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2261, 3]
type = ChangeState
trigger1 = animelem = 66
value = 3262

;HK
[Statedef 3262]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2262, @Lk]
type = HitDef
trigger1 = AnimElem = 71
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -25,-73
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2262, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2262, 3]
type = ChangeState
trigger1 = animelem = 74
value = 3263

;HK
[Statedef 3263]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2263, @Lk]
type = HitDef
trigger1 = AnimElem = 79
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 3,4
sparkno = 3
guard.sparkno = 50
sparkxy = -25,-73
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 0
ground.hittime = 20
ground.velocity = 0
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
fall = 0
p2getp1state = 1
p2stateno = 2235
snap = 31,0
p2facing = 1
yaccel = .5
kill = 0

[State 2263, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2263, 3]
type = ChangeState
trigger1 = animelem = 82
value = 3264

;GC First
[Statedef 3264]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2264, ]
type = Explod
trigger1 = animelem = 85, = 1
anim = 6200
pos = -16,0
bindtime = -1
sprpriority = 2
removeongethit = 1
ignorehitpause = 1
persistent = 0

[State 2264, @Lk]
type = HitDef
trigger1 = AnimElem = 86
attr = S, HA
hitflag = MAF
animtype = hard
ID = 2220
damage = 30,3
guardflag = MA
pausetime = 12,13
sparkno = 12
guard.sparkno = 50
sparkxy = -8,-86
hitsound = S0,2
guardsound = S1,1
ground.type = low
ground.velocity = 0
ground.slidetime = 1
ground.hittime = 17
air.hittime = 9
ground.velocity = 0
air.velocity = 0,-10
guard.velocity = -12
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
air.fall = 1
p2getp1state = 1
p2stateno = 2232
yaccel = .5
kill = 0

[State 2264, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2264, 3]
type = ChangeState
trigger1 = animtime = 0
value = 3265

;GC Second
[Statedef 3265]
type = A
movetype = A
physics = N
velset = 0,-7
juggle = 0
anim = 2253
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2265, ]
type = PlaySnd
trigger1 = time = 0
value = 1400,2

[State 2265, ]
type = VelAdd
trigger1 = time > 0
y = .31

[State 2265, 1]
type = HitDef
trigger1 = AnimElem = 1
attr = A, HA
damage = 55,3
hitflag = MAF
guardflag = M
animtype = hard
ground.type = low
pausetime = 12,13
sparkno = 12
guard.sparkno = 50
sparkxy = -10,-78
hitsound = S0,4
guardsound = S1,1
ground.velocity = 0,-11
ground.cornerpush.veloff = 0
air.velocity = 0,-11
air.cornerpush.veloff = 0
air.hittime = 9
fall = 1
fall.recovertime = 52
guard.velocity = -12
Guard.cornerpush.veloff = 0
ground.slidetime = 17
ground.hittime = 17
getpower = 0,0
givepower = 16,16
fall.yvelocity = -3.4
guard.pausetime = 12,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
p2getp1state = 1
p2stateno = 2240
yaccel = .55
kill = 0

[State 2265, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2265, 3]
type = ChangeState
trigger1 = animtime = 0
value = 3266

;GC Third
[Statedef 3266]
type = A
movetype = A
physics = N
juggle = 0
anim = 2254
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2266, ]
type = PlaySnd
trigger1 = animelem = 1, = 1
value = 1400,2

[State 2266, ]
type = VelAdd
trigger1 = time >= 0
y = .31

[State 2266, 4]
type = Explod
trigger1 = animelem = 1, = 1
anim = 6210
id = 6210
pos = -16,1
bindtime = 1
sprpriority = 2
removeongethit = 0
ignorehitpause = 1
persistent = 0

[State 2266, 1]
type = HitDef
trigger1 = AnimElem = 3
attr = A, HA
damage = 65,3
hitflag = MAF
guardflag = M
animtype = hard
ground.type = low
pausetime = 16,17
sparkno = 12
guard.sparkno = 50
sparkxy = -10,-78
hitsound = S0,4
guardsound = S1,1
ground.velocity = -2,-12
ground.cornerpush.veloff = 0
air.velocity = -2,-12
air.cornerpush.veloff = 0
air.hittime = 9
fall = 1
fall.recovertime = 52
guard.velocity = -12
Guard.cornerpush.veloff = -12
ground.slidetime = 17
ground.hittime = 17
getpower = 0,0
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 16,15
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
p2getp1state = 1
p2stateno = 2240
envshake.time = 20
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2
yaccel = .55
kill = 1

[State 0, ]
type = Pause
;trigger1 = roundstate = 2
trigger1 = MoveHit
time = 1
movetime = 0 
ignorehitpause = 1
persistent = 0

[State 2266, ]
type = EnvColor
trigger1 = MoveHit
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2266, 3]
type = ChangeState
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 3267

;Land
[Statedef 3267]
type = A
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2255
ctrl = 0

[State 2229, snd]
type = PlaySnd
trigger1 = time = 0
value = 52,0

[State 2229, unhittable]
type = NotHitBy
trigger1 = time < 17
value = SCA, AA, AT, AP

[State 2267, ]
type = PosSet
trigger1 = time = 0 
y = 0

[State 2267, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Gigantic Pressure SDM
[Statedef 3000]
Type = S
Movetype = A
Physics = S
anim = 2000
juggle = ifelse((prevstateno=[1000,2999]),0,8)
velset = 0,0
ownpal = 1
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -2000
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2050, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2050, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2050, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2050, 4]
type = Explod
trigger1 = time = 3
anim = f103 
pos = -48,-102
supermove = 1
sprpriority = 0

[State 2050, 5]
type = Explod
trigger1 = time = 3
anim = f102 
pos = -48,-102
supermove = 1
sprpriority = 2

[State 2050, 6]
type = StopSnd
trigger1 = 1
channel = 0

[State 2050, 7]
type = PlaySnd
trigger1 = time = 1
value = 3,1

[State 2050, nothitby]
type = NotHitBy
trigger1 = time < 33
value = SCA

[State 2050, 10]
type = ChangeState
trigger1 = animtime = 0
value = 3001

;Gigantic pressure SDM - run
[Statedef 3001]
Type = S
Movetype = A
Physics = S
anim = 2001
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 1301, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 0
channel = 8
loop = 1

[State 2051, 2]
type = VelSet
trigger1 = time >= 0
x = 9

[State 2051, 3]
type = HitDef
trigger1 = 1
attr = S, HA
animtype = hard
priority = 7,miss
damage = 0,10
guardflag = M
hitflag = MAF
hitonce = 1
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 81;hard1
guard.sparkno = 50;hard
sparkxy = 0,-55
hitsound = S0,5
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -12
givepower = 10,10
air.juggle = 15
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
p1stateno = 3004
p2stateno = 2020;19
p2facing = 1
persistent = 0

[State 2051, 5]
type = ChangeState
trigger1 = MoveContact
value = 1303

[State 2051, 6]
type = ChangeState
trigger1 = time = 24
value = 1302

;Gigantic pressure SDM - Hit run
[Statedef 3004]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 2]
type = ChangeAnim
trigger1 = time = 0
value = 1310

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2054, 2]
type = Explod
trigger1 = time = 0
anim = 6255
ID = 6250
bindtime = -1
sprpriority = 3
removetime = -1
ownpal = 1

[State 2054, 2]
type = Explod
trigger1 = time = 1
anim = 6255
ID = 6250
bindtime = -1
sprpriority = 3
removetime = -1
ownpal = 1

[State 2054, 4]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 2054, 6]
type = VelSet
trigger1 = time >= 0
x = 12

[State 0, ]
type = TargetState
trigger1 = time = 0
value = 2020

[State 1304, 4]
type = TargetBind
trigger1 = time >= 0
pos = -13,-66
ignorehitpause = 0

[State 2054, 8]
type = PlaySnd
trigger1 = time = 0
value = 600, 2
channel = 2

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time <= 5
edge = 45,0;100,0

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time >= 6
edge = 35,0;70,0

[State 2054, 11]
type = ChangeState
trigger1 = time >= 6
trigger1 = FrontEdgeDist <= 55;90
;trigger2 = time >= 180
value = 3005

;Gigantic pressure SDM - Hit press
[Statedef 3005]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 1]
type = posset
trigger1 = time = 0
y = 0

[State 2055, 1]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 2055, 2]
type = RemoveExplod
trigger1 = time = 0
ID = 6250

[State 2055, 4]
type = ChangeAnim
trigger1 = time = 0
value = 2055

[State 2055, 5]
type = PosAdd
trigger1 = time = 0
x = -70;30

[State 2055, 6]
type = Targetstate
trigger1 = time = 0
value = 2061

[State 2055, 7]
type = TargetBind
trigger1 = anim = 2055 && animelem = 1
pos = 95, -73
ignorehitpause = 0

[State 2055, 8]
type = TargetBind
trigger1 = anim = 2055 && animelem = 2
pos = 128, -73
ignorehitpause = 0

[State 2055, 7]
type = TargetBind
trigger1 = anim = 2055 && animelem = 4
pos = 95, -73
ignorehitpause = 0

[State 2055, 8]
type = TargetBind
trigger1 = anim = 2055 && animelem = 5
pos = 55, -69
ignorehitpause = 0

[State 2055, 8]
type = TargetBind
trigger1 = anim = 2055 && animelem = 6
pos = 20, -66
ignorehitpause = 0

[State 2055, 8]
type = TargetBind
trigger1 = anim = 2055 && animelem = 7
pos = 16, -66
ignorehitpause = 0

[State 2055, 8]
type = TargetBind
trigger1 = anim = 2055 && animelem = 8
pos = -4, -66
ignorehitpause = 0

[State 2005, 9]
type = TargetLifeAdd
trigger1 = anim = 2055 && animelem = 2
value = -250
kill = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2055, 10]
type = EnvShake
trigger1 = anim = 2055 && animelem = 2, = 1
time = 16
freq = 90
ampl = 12

[State 0, ]
type = Pause
trigger1 = anim = 2055 && animelem = 2, = 1
time = 3
movetime = 3
ignorehitpause = 1
persistent = 0

[State 2055, 12]
type = PlaySnd
trigger1 = anim = 2055 && animelem = 2, = 1
value = 2000,0

[State 2055, 12]
type = PlaySnd
trigger1 = anim = 2055 && animelem = 2, = 1
value = 2000,2

[State 2055, 12]
type = PlaySnd
trigger1 = anim = 2055 && animelem = 2, = 1
value = 2000,3

[State 2055, 14]
type = EnvColor
trigger1 = anim = 2055 && animelem = 2, = 1
value = 255,255,255
time = 1
under = 1

[State 2055, 15]
type = Explod
trigger1 = anim = 2055 && animelem = 2, = 1
anim = 6265
pos = 108,0
sprpriority = 3

[State 2055, 15]
type = Explod
trigger1 = anim = 2055 && animelem = 8
anim = 6257
pos = 30,-15
facing = -1
sprpriority = 3

[State 2055, 16]
type = Turn
trigger1 = anim = 2055 && animelem = 8

[State 2005, 18]
type = ChangeState
trigger1 = animtime = 0
value = 3006

;Gigantic pressure SDM - Hit run 2
[Statedef 3006]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 2056, 1]
type = PosAdd
trigger1 = time = 0
x = 9

[State 1000, AfterImage]
type = AfterImage
trigger1 = time = 0
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2056, 4]
type = Explod
trigger1 = time = 0
anim = 6255
ID = 6255
bindtime = -1
sprpriority = 3
removetime = -1
ownpal = 1

[State 2056, 5]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1304, 2]
type = ChangeAnim
trigger1 = time = 0
value = 1310

[State 2054, 6]
type = VelSet
trigger1 = time >= 0
x = 12

[State 1304, 4]
type = TargetBind
trigger1 = time >= 0
pos = -13,-66
ignorehitpause = 0

[State 2056, 9]
type = PlaySnd
trigger1 = time = 0
value = 600, 2
channel = 2

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time <= 5
edge = 45,0;100,0

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time >= 6
edge = 35,0;70,0

[State 2056, 11]
type = ChangeState
trigger1 = time >= 6
trigger1 = FrontEdgeDist <= 55;90
;trigger2 = time >= 180
value = 3007

;Gigantic pressure SDM - Hit press 2
[Statedef 3007]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 1]
type = posset
trigger1 = time = 0
y = 0

[State 2057, 1]
type = AfterImageTime
trigger1 = time = 0
time = 0

[State 2057, 2]
type = RemoveExplod
trigger1 = time = 0
ID = 6255

[State 2057, 4]
type = ChangeAnim
trigger1 = time = 0
value = 2005

[State 2057, 5]
type = PosAdd
trigger1 = time = 0
x = -70;35

[State 2057, 6]
type = Targetstate
trigger1 = time = 0
value = 2021

[State 2057, 7]
type = TargetBind
trigger1 = anim = 2005 && animelem = 1
pos = 95, -83
ignorehitpause = 0

[State 2057, 8]
type = TargetBind
trigger1 = anim = 2005 && animelemtime(2) >= 0 && animelemtime(2) <= 9
pos = 128, -83
ignorehitpause = 0

[State 2005, 9]
type = TargetLifeAdd
trigger1 = anim = 2005 && animelem = 2, = 1
value = -250

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem = 1
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 2057, 10]
type = EnvShake
trigger1 = anim = 2005 && animelem = 2, = 1
time = 16
freq = 90
ampl = 12

[State 0, ]
type = Pause
trigger1 = anim = 2005 && animelem = 2, = 1
time = 3
movetime = 3
ignorehitpause = 1
persistent = 0

[State 2057, 11]
type = PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,1
channel = 0

[State 2057, 12]
type = PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,3

[State 2057, 13]
type = PlaySnd
trigger1 = anim = 2005 && animelem = 2, = 1
value = 2000,2

[State 2057, 14]
type = EnvColor
trigger1 = anim = 2005 && animelem = 2, = 1
value = 255,255,255
time = 1
under = 1

[State 2057, 15]
type = Explod
trigger1 = anim = 2005 && animelem = 2, = 1
anim = 6265
pos = 108,0
sprpriority = 2

[State 2057, 17]
type = ChangeState
trigger1 = animtime = 0
value = 1306
ctrl = 1

;Gigantic pressure light - Hitted
[Statedef 2061]
Type = S
Movetype = H
Physics = N
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2061, 1]
type = ScreenBound
trigger1 = 1
value = 0

[State 2061, 1]
type = sprpriority
trigger1 = time = 2
value = 0

[State 2061, 1]
type = sprpriority
trigger1 = time = 21
value = 2

[State 2061, 2]
type = Width
trigger1 = 1 
edge = 0,-20
player = 0,0

[State 2061, 3]
type = Changeanim2
trigger1 = time = 2
value = 2059

[State 2230, 0]
type = PalFX
trigger1 = anim = 2059 && animelem = 4
time = -1
add = -10,-75,-20
mul = 150,150,150
sinadd = 50,50,50,10
color = 0
invertall = 1

[State 2061, 4]
type = Turn
trigger1 = anim = 2059 && animelem = 5

;Rugal Execution SDM
[Statedef 3300]
Type = S
Movetype = A
Physics = S
anim = 3300
juggle = ifelse((prevstateno=[1000,2999]),0,8)
velset = 0,0
ownpal = 1
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 0, ]
type = AttackDist
trigger1 = 1
value = 0

[State 2000, pa2k2]
type = PowerAdd
trigger1 = time = 0
value = -3000
ignorehitpause = 1

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2300, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2300, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2300, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2300, 4]
type = Explod
trigger1 = time = 3
anim = f104
scale=1.46,1
pos = 28,-88
supermove = 1
sprpriority = 0

[State 2300, 5]
type = Explod
trigger1 = time = 3
anim = f105
scale=1.46,1
pos = 28,-88
supermove = 1
sprpriority = 3

[State 2050, 6]
type = StopSnd
trigger1 = time = 0
channel = 0

[State 2300, 7]
type = PlaySnd
trigger1 = time = 1
value = 3,2

[State 2300, nothitby]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2300, 5]
type = Explod
trigger1 = time = 9
anim = 7500 
pos = 26,-86
supermove = 1
bindtime = -1
sprpriority = 2

[State 2300, 5]
type = Explod
trigger1 = time = 30
anim = 7501 
pos = 26,-86
sprpriority = 2

[State 2300, 10]
type = ChangeState
trigger1 = animtime = 0
value = 3301

;Rugal Execution - slide fwd
[Statedef 3301]
Type = S
Movetype = A
Physics = N
anim = 3301
ctrl = 0

[State 0, ]
type = ChangeAnim
trigger1 = anim = 3301 && animtime = 0
trigger2 = anim = 3301 && time >= 3 && p2bodydist x <= 80
value = 3304

[State 2300, nothitby]
type = NotHitBy
trigger1 = time < 3
value = SCA

[State 0, ]
type = AttackDist
trigger1 = 1
value = 0

[State 2301, 1]
type = PlaySnd
trigger1 = time = 0
value = 2300,2

[State 2300, 5]
type = Explod
trigger1 = time = 0
anim = 7502
id = 6502 
pos = 0,0
bindtime = -1
removeongethit = 1
sprpriority = 1

[State 0, ]
type = RemoveExplod
trigger1 = anim != 3301
ID = 6502

[State 2300, 5]
type = Explod
trigger1 = anim = 3304
anim = 7503 
pos = 88,-82
sprpriority = 2
persistent = 0

[State 2301, 2]
type = VelSet
trigger1 = time = 0
x = 26

[State 2301, 3]
type = VelAdd
trigger1 = time > 0
trigger1 = time < 15
x = -0.7857142

[State 2301, 2]
type = VelSet
trigger1 = time = 15
x = 0

[State 2301, 3]
type = HitDef
trigger1 = anim = 3304 && animelem = 2
attr = S, HA
animtype = hard
priority = 7,miss
damage = 100,30
hitflag = MAF
hitonce = 1
pausetime = 3,3
guard.pausetime = 0,11
sparkno = 12
guard.sparkno = 50
sparkxy = -20,-55
hitsound = S0,8
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -4,-6
airguard.velocity = -4,-6
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = 0
guard.velocity = -12
givepower = 16,16
air.juggle = 15
guard.pausetime = 10,10
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
p2stateno = 3309
yaccel = .55
p2facing = 1
persistent = 0

[State 2301, 5]
type = ChangeState
trigger1 = MoveContact
value = 3303

[State 2301, 6]
type = ChangeState
trigger1 = anim = 3304 && animtime = 0
value = 3302

;Rugal Execution - stop
[Statedef 3302]
Type = S
Movetype = A
Physics = S
anim = 3302
juggle = 8
ctrl = 0

[State 0, ]
type = AttackDist
trigger1 = 1
value = 0

[State 2302, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 2302, 2]
type = PosAdd
trigger1 = animelem = 8
x = -12

[State 2302, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Rugal Execution - execute
[Statedef 3303]
Type = S
Movetype = A
Physics = S
anim = 3303
juggle = 8
ctrl = 0

[State 2303, nothitby]
type = NotHitBy
trigger1 = time < 222
value = SCA

[State 2303, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 2303, 2]
type = TargetState
trigger1 = numtarget >= 1
trigger1 = time = 0
value = 3310

[State 2303, 3]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) <= -63
trigger1 = time = 0
pos = 97,0

[State 2303, 4]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) > -63
trigger1 = time = 0
pos = 116,-61

[State 2303, 5]
type = targetbind
triggerall = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) <= -63
trigger1 = animelem = 2
pos = 88,0

[State 2303, 6]
type = targetbind
triggerall = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) > -63
trigger1 = animelem = 2
pos = 103,-61

[State 2303, 7]
type = targetbind
triggerall = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) <= -63
trigger1 = animelem = 3
pos = 52,0

[State 2303, 8]
type = targetbind
triggerall = numtarget >= 1
trigger1 = target,const(size.mid.pos.y) > -63
trigger1 = animelem = 3
pos = 77,-61

[State 2303, 9]
type = targetbind
trigger1 = animelem = 4
pos = 47,-120

[State 2303, 11]
type = targetbind
trigger1 = animelem = 5
pos = 47,-123

[State 2303, 12]
type = Width
trigger1 = 1
edge = 100,0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5, = 5
value = 2300,0
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5, = 125
value = 2300,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 15
value = 200,1
channel = 0

[State 0, ]
type = PlaySnd
trigger1 = animelem = 5
value = 2300,3
channel = 7
loop = 1

[State 0, ]
type = StopSnd
trigger1 = animelem = 5, = 125
channel = 7

[State 0, ]
type = PlaySnd
trigger1 = animelem = 6
value = 2300,4

[State 0, ]
type = Explod
trigger1 = animelem = 5, = 5
anim = 7504
ID = 6504
bindtime = -1
removetime = -1
sprpriority = 2

[State 0, ]
type = RemoveExplod
trigger1 = animelem = 5, = 125
ID = 6504

[State 0, ]
type = PosAdd
trigger1 = animelem = 9
x = -12

[State 0, ]
type = PosAdd
trigger1 = animelem = 18
x = -4

[State 0, ]
type = EnvColor
trigger1 = Animelemtime(5) = 7 + (4 * var(15))
trigger1 = AnimElemTime(5) < 124
trigger2 = AnimElemTime(5) = 126
value = 255,255,255
time = 1
under = 1

[State 0,]
type = HitAdd
trigger1 = Animelemtime(5) = 7 + (4 * var(15))
trigger1 = AnimElemTime(5) < 124
trigger2 = AnimElemTime(5) = 126
value = 1

[State 0, ]
type = TargetlifeAdd
trigger1 = Animelemtime(5) = 7 + (4 * var(15))
trigger1 = AnimElemTime(5) < 124
value = -18
kill = 0

[State 0, ]
type = TargetlifeAdd
trigger1 = AnimElemTime(5) = 126
value = -120
kill = 1

[State 0, ]
type = VarSet
trigger1 = time = 0
v =  15
value = 0

[State 0, ]
type = VarAdd
trigger1 = AnimElemTime(5) >= 7 && gametime%4 = 1
trigger1 = AnimElemTime(6) < 0
v =  15
value = 1

[State 2303, 13]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Gigantc pressure - Hitted
[Statedef 3309]
Type = S
Movetype = H
Physics = N
velset = 0,0
anim = 5010
ctrl = 0

[State 2309, 1]
type = PlayerPush
trigger1 = 1
value = 0

[State 2309, 2]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 2309, 4]
type = PosSet
trigger1 = time = 0
y = 0

[State 2309, 5]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 2309, 6]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 2309, 7] 
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype)

[State 2309, 8]
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2309, 9]
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 2309, 10]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 2309, 11]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 2309, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2309, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2309, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;Hitted By Rugal Execution
[Statedef 3310]
Type = S
Movetype = H
Physics = N
sprpriority = 0
ctrl = 0

[State 2310, 1]
type = ChangeAnim2
trigger1 = const(size.mid.pos.y) <= -63
trigger1 = time = 0
value = 3310

[State 2310, 2]
type = ChangeAnim2
trigger1 = const(size.mid.pos.y) > -63
trigger1 = time = 0
value = 3311

[State 2310, 3]
type = ChangeAnim2
trigger1 = anim = 3310 && animtime = 0
trigger2 = anim = 3311 && animtime = 0
value = 3312

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 3040, PalFX]
type = PalFX
trigger1 = anim = 3312 && animelem = 2, = 4
time = 999
add = -10,-75,-20
mul = 150,150,150
sinadd = 50,50,50,10
color = 0
invertall = 1

[State 2310, 4]
type = changeState
trigger1 = anim = 3312 && animtime = 0
value = 3311

; HITA_UP (initial going up)
[Statedef 3311]
type    = A
movetype= H
physics = N
anim = 5030
ctrl = 0

[State 2311, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2311, 2]
type = PosAdd
trigger1 = time = 0 
y = -const(size.mid.pos.y)

[State 2311, 3]
type = VelAdd;Gravity
trigger1 = time > 0
y = .55

[State 2311, 4]
type = VelSet
trigger1 = Time = 0
x = -4
y = -6

[State 2311, 5]
type = changeState
trigger1 = AnimTime = 0
value = 3312 ;HITA_UP (transition)

[State 2313, 5]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3314 ;HIT_BOUNCE

; HITA_UP_T (transition)
[Statedef 3312]
type    = A
movetype= H
physics = N

[State 2312, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2312, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 2312, 3]
type = VelAdd
trigger1 = 1
y = .55

[State 2312, 4]
type = ChangeState
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 3313 ;HITA_FALL

[State 2313, 5]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3314 ;HIT_BOUNCE

; HITA_FALL (knocked up, falling)
[Statedef 3313]
type    = A
movetype= H
physics = N

[State 2313, 1]
type = NotHitBy
trigger1 = 1
value = SCA

[State 2313, 2] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 2313, 3] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 2313, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = .55

[State 2313, 5]
type = changeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 3314 ;HIT_BOUNCE

; HIT_BOUNCE (hit ground)
[Statedef 3314]
type    = L
movetype= H
physics = N

[State 2314, 1]
type = PalFX
trigger1 = time = 0
time = 1
add = 0,0,0
sinadd = 0,0,0,1
color = 256
invertall = 0

[State 2314, 2]
type = NotHitBy
trigger1 = time <= 1
value = SCA

[State 5100, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 5100, EnvShake]
type = FallEnvShake
trigger1 = Time = 0

[State 5100, Var] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 5100, 2] ;Hit ground anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = (anim != [5051,5059]) && (anim != [5061,5069])
trigger2 = !SelfAnimExist(5100 + (anim % 10))
value = 5100

[State 5100, 3] ;Hit ground anim (for hit up)
type = ChangeAnim
trigger1 = time = 0
trigger1 = (anim = [5051,5059]) || (anim = [5061,5069])
trigger1 = SelfAnimExist(5100 + (anim % 10))
value = 5100 + (anim % 10)

[State 5100, 4]
type = PosSet
trigger1 = Time = 0
y = 0

[State 5100, 5]
type = VelSet
trigger1 = Time = 0
y = 0

[State 5100, 6] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 5100, 7]
type = selfState
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
value = 5110 ;HIT_LIEDOWN

[State 5100, 8]
type = GameMakeAnim
trigger1 = Time = 1
;value = 61
;pos = 0, 0
;under = 1
value = 60 + (sysvar(1) > 5) + (sysvar(1) > 14)
pos = 0, 0
under = sysvar(1) <= 10

[State 5100, 9]
type = HitFallDamage
trigger1 = Time = 3

[State 5100, 10]
type = PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 5100, 11]
type = PosFreeze
trigger1 = 1

[State 5100, 12]
type = selfState
trigger1 = AnimTime = 0
trigger2 = time = 5
value = 5101

[State 5100, 13]
type = ForceFeedback
trigger1 = Time = 0
waveform = sinesquare
ampl = 128,-3,-.2,.005
time = 20

;G-End
[Statedef 3600]
Type = S
Movetype = A
Physics = S
anim = 3000
velset = 0,0
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
trigger2 = prevstateno = [3221,3226]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
 
[State 2210, ]
type = NotHitBy
trigger1 = time <= 28
value = SCA

[State 0, ]
type = AssertSpecial
trigger1 = time >= 1 && time <= 28
flag = noFG 
ignorehitpause = 1

[State 2000, ]
type = PowerAdd
trigger1 = time = 0
value = -2000
ignorehitpause = 1

[State 2210, 1]
type = SuperPause
trigger1 = time = 1
time = 28
anim = -1
sound = -1
movetime = 28
darken = 0

[State 2210, 2]
type = EnvColor
trigger1 = Time = 1
value = 255,255,255
time = 4
under = 1

[State 2210, 3]
type = EnvColor
trigger1 = Time = 5
value = 0,0,0
time = 24
under = 1

[State 2210, 4]
type = Explod
trigger1 = time = 3
anim = f103
pos = 0,-90
supermove = 1
sprpriority = 0

[State 2210, 5]
type = Explod
trigger1 = time = 3
anim = f102
pos = 0,-90
supermove = 1
sprpriority = 2

[State 2210, 6]
type = PlaySnd
trigger1 = time = 3
value = 3,1

[State 2200, Hitdef]
type = HitDef
trigger1 = roundstate = 2
trigger1 = AnimElem = 2
attr = S, HT
hitflag = MAF
animtype = hard
priority = 7,miss
damage = 0,0
hitonce = 1
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 81
guard.sparkno = 50
sparkxy = -15,-51
hitsound = S0,5
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = -12
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
getpower = 0,0
givepower = 16,16
numhits = 0
fall = 0
yaccel = .5
p1stateno = 3601
p2getp1state = 1
p2stateno = 3610
P2facing = 1
kill = 0

[State 2200, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;G-End 2
[Statedef 3601]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 3001
sprpriority = 3
ctrl = 0

[State 3601, 1]
type = PlaySnd
trigger1 = time = 0
value = 194,1

[State 3601, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 2100,1

[State 3601, 1]
type = TargetState
trigger1 = time = 0
value = 3610

[State 3601, 2]
type = TargetBind
trigger1 = AnimElem >= 1
pos = 45,0

[State 3601, 2]
type = TargetBind
trigger1 = AnimElem >= 2
pos = 52,-60

[State 3601, 2]
type = TargetBind
trigger1 = AnimElem >= 3
pos = 30,-90

[State 3601, 2]
type = TargetBind
trigger1 = AnimElem >= 4
pos = 0,-140

[State 3601, 3]
type = TargetState
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
value = 3611

[State 3601, 3]
type = TargetState
trigger1 = AnimElem = 11
value = 3612

[State 3601, 4]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
anim = 6260
pos = -1,4
scale = 1.3, 1.3
postype = P1
sprpriority = 8+time
ownpal = 0
removetime = -2

[State 3601, 4]
type = Explod
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
anim = f61
pos = 0,0
postype = P1
scale = 1.2,1.2
sprpriority = -1
ownpal = 0
removetime = -2

[State 2325, 10]
type = EnvColor
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
time = 3
under = 1
value = 255,255,255
ignorehitpause = 1

[State 3601, 4]
type = EnvShake
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
time = 15
freq = 90
ampl = 12

[State 3601, 4]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
value = 2000,2

[State 3601, 4]
type = PlaySnd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
value = 2000,3

[State 3601, 4]
type = HitAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
trigger7 = AnimElem = 11
value = 1

[State 3601, 4]
type = TargetLifeAdd
trigger1 = AnimElem = 5
trigger2 = AnimElem = 6
trigger3 = AnimElem = 7
trigger4 = AnimElem = 8
trigger5 = AnimElem = 9
trigger6 = AnimElem = 10
value = -50
kill = 0

[State 3601, 4]
type = TargetLifeAdd
trigger1 = AnimElem = 11
value = -150

[State 3601, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hitted G-End 1
[Statedef 3610]
Type = S
Movetype = H
Physics = N
sprpriority = 0
ctrl = 0

[State 3610, 3]
type = screenbound
trigger1 = 1
value = 1

[State 3610, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3010

[State 2230, ]
type = StateTypeSet
trigger1 = AnimElem = 2
statetype = A

;Hitted G-End 2
[Statedef 3611]
Type = A
Movetype = H
Physics = N
sprpriority = 5
ctrl = 0

[State 3610, 3]
type = screenbound
trigger1 = 1
value = 1

[State 3610, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3011

;Hitted G-End 3
[Statedef 3612]
Type = A
Movetype = H
Physics = N
sprpriority = 5
velset = 0, -14
ctrl = 0

[State 3610, 3]
type = screenbound
trigger1 = 1
value = 1

[State 3610, 1]
type = ChangeAnim2
trigger1 = time = 0
value = 3012

[State 3610, 1]
type = velset
trigger1 = time = 15
x = -2

[State 3610, 2]
type = veladd
trigger1 = time > 0
y = 0.3

[State 3610, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100

; HITG_SHAKE
[Statedef 2235]
type    = S
movetype= H
physics = N
velset = 0,0

[State 2235, 1] 
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5002,5012)

[State 2235, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 2235, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2235, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 2236

[State 2235, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2235, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2235, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

; HITG_SLIDE
[Statedef 2236]
type    = S
movetype= H
physics = S

[State 2236, 1]
type = Hitfallset
trigger1 = Time = 0
value = 0

[State 2236, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 2236, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10)
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 2236, 3] 
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 2236, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 2236, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 2236, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;Destruction Omega
[Statedef 3500]
type    = S
movetype = A
physics = S
velset = 0,0
juggle = ifelse((prevstateno=[1000,3999]),0,8)
poweradd= -3000
anim = 2250
sprpriority = 2
ctrl = 0

;---------------------------------------------------------
;Super Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7500
pos = 0,75
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [1300,1999]
anim = f7510
pos = 0,73
postype = left
removetime = -2
bindtime = -1
supermove = 1
pausemove = 1
pausemovetime = 99999
supermovetime = 99999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------
;Dream Cancel Effect
[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7530
pos = 0,75
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 9
ownpal = 1

[State 1000, Explod]
type = Explod
triggerall = time = 0
trigger1 = prevstateno = [2000,2999]
anim = f7535
pos = 0,73
postype = left
removetime = -2
bindtime = -1
pausemove = 1
supermove = 1
pausemovetime = 9999
supermovetime = 9999
sprpriority = 8
trans = addalpha
alpha = 256, 135
ownpal = 1
;---------------------------------------------------------

[State 1];無敵の状態を作る
type = NotHitBy
trigger1 = time = [0,49]
value = SCA

[State 2000, 2]
type = SuperPause
trigger1 = animelem = 3
time = 23
movetime = 23
anim = -1
darken = 0



[State -2, Helper]
type = Helper
triggerall = !numhelper(40001)
trigger1 = time = 3
helpertype = normal
name = "HSDM"
ID = 40001
stateno = 40001
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40003)
trigger1 = time = 3
helpertype = normal
name = "H.Port"
ID = 40003
stateno = 40003
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State -2, Helper]
type = Helper
triggerall = !numhelper(40004)
trigger1 = time = 3
helpertype = normal
name = "Player 1"
ID = 40004
stateno = 40004
pos = 160,120
postype = left    ;p2,front,back,left,right
facing = 1
keyctrl = 0
ownpal = 0
supermovetime = 999999999999
pausemovetime = 999999999999
ignorehitpause = 1

[State 1000, Explod]
type = Explod
trigger1 = time = 3
anim = f104
pos = 6,-115
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 1
sprpriority = -1

[State 1000, Explod]
type = Explod
trigger1 = time = 3
anim = f105
pos = 6,-115
postype = p1
facing = 1
vfacing = 1
bindtime = 1
removetime = -2
supermove = 1
sprpriority = 9


[State 3040, 7]
type = EnvColor
trigger1 = animelem = 3
persistent = 0
ignorehitpause = 1
time = 29
value = 0,0,0
under = 2

[State 2000, 6]
type = PlaySnd
trigger1 = Time = 7
value = s3,2

[State 2200, Hitdef]
type = HitDef
trigger1 = roundstate = 2
trigger1 = AnimElem = 6
attr = S, HA
hitflag = MAF
animtype = hard
priority = 7,miss
damage = 50,30
hitonce = 1
guardflag = M
pausetime = 0,0
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 51
sparkxy = 0,-51
hitsound = S0,6
guardsound = S1,1
ground.slidetime = 0
ground.hittime = 17
ground.velocity = 0
air.velocity = 0
airguard.velocity = 0
guard.velocity = -12
guard.slidetime = 18
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
p2facing = 1
p1stateno = 3501
p2stateno = 3530
p2getp1state = 1
snap = 38,0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; ディストラクション・オメガ捕まえた
[Statedef 3501]
type = S
movetype = A
physics = N
velset = 0,0
juggle = 0
anim = 2251
sprpriority = 3
ctrl = 0

[State 210, Width];画面?の押し戻し判定
type = Width
trigger1 = time = 0
edge = 115,0

[State 2220, ]
type = null;TargetState
trigger1 = time = 0
value = 3520

[State 2220, ]
type = TargetState
trigger1 = time = 0
value = 3540

[State 2250, ]
type = PlaySnd
trigger1 = time = 0
value = 180,0

[State 2220, ]
type = EnvColor
trigger1 = time = 0
value = 255,255,255
time = 1
under = 1
ignorehitpause = 1
persistent = 0

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 1
pos = 115,0

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 2
pos = 87,-73

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 3
pos = 64,-85

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 4
pos = 45,-103

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 5
pos = 33,-117

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 6
pos = 29,-122

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 7
pos = 33,-117

[State 2220, ]
type = null;targetbind
trigger1 = animelem >= 8
pos = 33,-117

[State 2220, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) <= -60
trigger1 = time = 0
pos = 96,0

[State 2220, ]
type = targetbind
trigger1 = numtarget >= 1
trigger1 = target,const(size.head.pos.y) > -60
trigger1 = time = 0
pos = 115,-62

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -71
trigger1 = animelem = 2
pos = 72,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -71
trigger1 = animelem = 2
pos = 87,-73

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -83
trigger1 = animelem = 3
pos = 60,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -83
trigger1 = animelem = 3
pos = 64,-85

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -101
trigger1 = animelem = 4
pos = 42,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -101
trigger1 = animelem = 4
pos = 45,-103

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 5
pos = 34,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 5
pos = 33,-117

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -122
trigger1 = animelem = 6
pos = 30,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -122
trigger1 = animelem = 6
pos = 29,-122

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) <= -117
trigger1 = animelem = 7
pos = 34,0

[State 2220, ]
type = targetbind
trigger1 = target,const(size.head.pos.y) > -117
trigger1 = animelem = 7
pos = 33,-117

[State 2220, ]
type = targetbind
trigger1 = animelem = 8
pos = 47,-31

[State 810, Throw 11]
type = null;TargetState
trigger1 = animelem = 8
value = 3521

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3502

;--------------------------------------------------------------------------
; ディストラクション・オメガ乱舞
[Statedef 3502]
type    = S
movetype= A
physics = N
velset = 0,0
sprpriority = 2
anim = 22520
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem >= 2
time = 2
length = 7
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State a]
type = PlayerPush
Trigger1 = 1
value = 1

[State 1100, 2]
type = PlaySnd
trigger1 = animelem = 1
value = s2100, 1

[state a];速度付加
type = velset
trigger1 = animelem = 107
x = 15

[state a];速度付加
type = veladd
trigger1 = animelemtime(107) = [2,5]
x = -0.2

[State 440, 2]
type = PlaySnd
trigger1 = animelem = 107
value = 200, 0

[State 1000, 5]
type = Explod
trigger1 = animelem = 107
anim = 6230
sprpriority = 3
postype = p1
pos = -22,0
bindtime = 1
supermove = 1
under = 0
ounpal = 0

[state a]
type = posadd
trigger1 = animelem = 69
trigger2 = animelem = 70
x = 17

[State 801, 2];相手の束縛
type = TargetBind
trigger1 = animelem = 3
trigger2 = animelem = 69
trigger3 = animelem = 70
pos = 70,0

[State 801, 2];相手の束縛
type = TargetBind
trigger1 = animelem = 107
pos = 90,0

[State 810, Throw 11];上段弱
type = TargetState
trigger1 = animelem = 3
trigger2 = animelem = 81
value = 3510

[State 810, Throw 11];上段強
type = TargetState
trigger1 = animelem = 18
trigger2 = animelem = 37
trigger3 = animelem = 56
trigger4 = animelem = 87
trigger5 = animelem = 96
value = 3511

[State 810, Throw 11];下段弱
type = TargetState
trigger1 = animelem = 9
trigger2 = animelem = 27
value = 3512

[State 810, Throw 11];下段強
type = TargetState
trigger1 = animelem = 31
trigger2 = animelem = 48
trigger3 = animelem = 69
trigger4 = animelem = 107
value = 3513

[State 440, 2];ヒットサウンド
type = PlaySnd
trigger1 = animelem = 3
trigger2 = animelem = 80
trigger3 = animelem = 37
trigger4 = animelem = 56
trigger5 = animelem = 87
trigger6 = animelem = 96
trigger7 = animelem = 9
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10 = animelem = 69
trigger11 = animelem = 18
trigger12 = animelem = 48
value = s0,2

[State 440, 2];ヒットサウンド
type = PlaySnd
trigger1 = animelem = 107
value = s0,4

[state a]
type = hitadd
trigger1 = animelem = 3
trigger2 = animelem = 80
trigger3 = animelem = 37
trigger4 = animelem = 56
trigger5 = animelem = 87
trigger6 = animelem = 96
trigger7 = animelem = 9
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10 = animelem = 69
trigger11 = animelem = 18
trigger12 = animelem = 48
trigger13 = animelem = 107
value = 1

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 3
value = -150
kill = 0

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 9
value = -100
kill = 0

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 19
value = -50
kill = 0

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 28
value = -20
kill = 0

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 32
trigger2 = animelem = 38
trigger3 = animelem = 49
trigger4 = animelem = 56
trigger5 = animelem = 69
trigger6 = animelem = 80
trigger7 = animelem = 87
trigger8 = animelem = 96
trigger9 = animelem = 107
value = -10
kill = 0

[State 3040, 7]
type = EnvColor
trigger1 = animelem = 3
trigger2 = animelem = 80
trigger3 = animelem = 37
trigger4 = animelem = 56
trigger5 = animelem = 87
trigger6 = animelem = 96
trigger7 = animelem = 9
trigger8 = animelem = 27
trigger9 = animelem = 31
trigger10= animelem = 69
trigger11= animelem = 107
trigger12= animelem = 18
trigger13= animelem = 48
;persistent = 0
ignorehitpause = 1
time = 1
value = 248,248,248
under = 0

[State 1000, 5]
type = Explod
trigger1 = animelem = 3
anim = f3
sprpriority = 6
postype = p1
pos = 40,-103
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 9
anim = f3
sprpriority = 6
postype = p1
pos = 50,-27
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 18
anim = f3
sprpriority = 6
postype = p1
pos = 60,-65
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 27
anim = f3
sprpriority = 6
postype = p1
pos = 50,-65
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 31
anim = f3
sprpriority = 6
postype = p1
pos = 70,-55
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 37
anim = f3
sprpriority = 6
postype = p1
pos = 75,-80
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 48
anim = f3
sprpriority = 6
postype = p1
pos = 100,-50
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 56
trigger2 = animelem = 87
trigger3 = animelem = 96
anim = f3
sprpriority = 6
postype = p1
pos = 80,-105
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 69
anim = f3
sprpriority = 6
postype = p1
pos = 75,-62
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 80
anim = f3
sprpriority = 6
postype = p1
pos = 80,-65
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 107
anim = f3
sprpriority = 6
postype = p1
pos = 50,-75
bindtime = 1
supermove = 1
under = 0
ounpal = 1

[State 210, Width]
type = Width
trigger1 = animelem = 107
edge = 81,0

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3503

;---------------------------------------------------------------------------
; ディストラクション・ビ?ス
[Statedef 3503]
type    = S
movetype= A
physics = S
velset = 0,0
sprpriority = 2
anim = 22530
ctrl = 0

[State 1000, AfterImage]
type = AfterImage
trigger1 = animelem >= 2
time = 2
length = 8
timegap = 1
paladd = 60,20,100
PalContrast = 220,200,350
palcolor = 0
framegap = 3

[State 3000, fterimagetime]
type = Afterimagetime
trigger1 = gametime%2 = 0
time = 2

[State 210, Width];画面?の押し戻し判定
type = Width
trigger1 = 1
edge = 30,0

[State a]
type = PlayerPush
Trigger1 = 1
value = 1

[State 1000, 5]
type = Explod
trigger1 = animelemtime(5) = 2
anim = 6232
sprpriority = -1
postype = p1
pos = 13,-16
bindtime = 1
supermove = 1
under = 0
ounpal = 0

[State 440, 2]
type = PlaySnd
trigger1 = animelem = 9
value = 200, 1

[State 1000, 5]
type = Explod
trigger1 = animelemtime(9) = 2
anim = 6231
sprpriority = 5
postype = p1
pos = 58,0
bindtime = 1
supermove = 1
under = 0
ounpal = 0

[State 801, 2];相手の束縛
type = TargetBind
trigger1 = animelem = 5
pos = 50,0

[State 810, Throw 11];上段強
type = TargetState
trigger1 = animelem = 5
value = 3512

[State 810, Throw 11];ラスト
type = TargetState
trigger1 = animelem = 9
value = 3512

[State 810, Throw 11];ラスト
type = TargetState
trigger1 = animelem = 21
value = 3514

[State 440, 2];ヒットサウンド
type = PlaySnd
trigger1 = animelem = 5
trigger2 = animelem = 9
value = s0,4

[State 440, 2];ヒットサウンド
type = PlaySnd
trigger1 = animelem = 21
value = s2000,3

[State 440, 2];ヒットサウンド
type = PlaySnd
trigger1 = animelem = 21
value = s2000,2

[State 190,]
type = Explod
trigger1 = AnimElem = 20
pos = 49,0
anim = 669
keyctrl = 0
bindtime = -1
ownpal = 1
sprpriority = 10

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 5
trigger2 = animelem = 9
value = -10
kill = 0

[State 810, Hurt 11];?メ?ジ
type = TargetLifeAdd
trigger1 = animelem = 21
value = -130
kill = 0

[state a]
type = hitadd
trigger1 = animelem = 5
trigger2 = animelem = 9
trigger3 = animelem = 21
value = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 5
anim = f3
sprpriority = 6
postype = p1
pos = 50,-75
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 1000, 5]
type = Explod
trigger1 = animelem = 9
anim = f3
sprpriority = 6
postype = p1
pos = 50,-85
bindtime = 99
supermove = 1
under = 0
ounpal = 1

[State 810, State End]
type = ChangeState
trigger1 = AnimTime = 0
value = 3504

;CvS Genocide Cutter Hard
[Statedef 3504]
type     = S
movetype = A
physics  = S
velset   = 0,0
anim     = 1510
ctrl     = 0
sprpriority = 2

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = 1
edge = 20,0

[State 170, 無敵]
type = NotHitBy
trigger1 = AnimElemtime(6) < 0
value = SCA

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4, = 1
trigger2 = AnimElem = 9, = 1
trigger3 = AnimElem = 19, = 1
value = 1400,2

[State 1000, ]
type = Posadd
trigger1 = AnimElem = 2
x = 10

[State 1000, ]
type = Velset
trigger1 = AnimElemtime(2) = 0
x = 4

[State 1000, ]
type = Velset
trigger1 = AnimElemtime(2) > 0 && AnimElemtime(13) < 0
x = 2

[State 1000, ]
type = Velset
trigger1 = AnimElem = 4
y = -9

[State 1000, ]
type = Veladd
trigger1 = AnimElemtime(4) >= 0 && AnimElemtime(12) < 0
x = -.03

[State 1000, ]
type = Veladd
trigger1 = AnimElemtime(4) >= 0 && AnimElemtime(12) < 0
y = .4

[State 1000, ]
type = Veladd
trigger1 = AnimElemtime(22) >= 0
y = .38

[State 1000, ]
type = Velset
trigger1 = AnimElem = 12
x = 0
y = 0

[State 1000, ]
type = Velset
trigger1 = AnimElemtime(22) >= 0
x = -2.4

[State 1000, ]
type = Velset
trigger1 = AnimElem = 22
y = -3.2

[State 6000, 3]
type = StateTypeSet
trigger1 = AnimElem = 4
statetype = A

[State 700, エフェクト?示]
type = Explod
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
anim = 6200
postype = P1
pos = -25, 0
sprpriority = 10
ownpal = 1
bindtime = 8
ignohitpause = 0
removeongethit = 1

[State 700, エフェクト?示]
type = Explod
trigger1 = AnimElem = 18
anim = 6220
postype = P1
pos = 30, 10
sprpriority = 10
ownpal = 1
bindtime = -1
ignohitpause = 0
removeongethit = 1

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 4
attr = S, HA
damage = 40, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -60
hitsound = s0,4
guardsound = s1,1
ground.type = Low
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -2,-9
air.type = High
air.velocity = -2,-9
air.hittime = 12
yaccel = .45
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 5
attr = A, HA
damage = 40, 3
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -80
hitsound = s0,4
guardsound = s1,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -2,-8
guard.velocity = -6
air.type = High
air.velocity = -2,-8
air.hittime = 12
yaccel = .45
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 9
attr = A, HA
damage = 40, 4
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -80
hitsound = s0,4
guardsound = s1,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -2,-7
guard.velocity = -6
air.type = High
air.velocity = -2,-7
air.hittime = 12
yaccel = .45
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 19
attr = A, HA
damage = 80, 3
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 7, 7
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -20
hitsound = s0,4
guardsound = s1,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 21
ground.velocity = -8,16
guard.velocity = -9
air.type = High
air.velocity = -8,16
airguard.velocity = -6,-6
air.hittime = 12
yaccel = .5
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
p2stateno = 1420
envshake.time = 7
envshake.ampl = 5
envshake.freq = 80
fall.envshake.ampl = 5
fall.envshake.freq = 90
fall.envshake.time = 15

[State 1000, ステ?ト変更]
type = ChangeState
triggerall = AnimElemtime(10) >= 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1415

;つかまった瞬間
[Statedef 3520]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2265

[State 1];カメラ固定
type = screenbound
trigger1 = time = [0,60]
value = 1
movecamera = 1

;落とされる
[Statedef 3521]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1];カメラ固定
type = screenbound
trigger1 = time = [0,60]
value = 1
movecamera = 1

[state a]
type = veladd
trigger1 = time = [0,999]
y = 0.2

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2266

;上段弱
[Statedef 3510]
type    = S
movetype= H
physics = S
velset = 0,0

[state a]
type = velset
trigger1 = time = 0
y = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2260

;上段強
[Statedef 3511]
type    = S
movetype= H
physics = S
velset = 0,0

[state a]
type = posset
trigger1 = time = 0
y = 0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2261

;下段弱
[Statedef 3512]
type    = S
movetype= H
physics = S
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2262

;下段強
[Statedef 3513]
type    = S
movetype= H
physics = S
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2263

;ラスト
[Statedef 3514]
type    = A
movetype= H
physics = N
velset = 0,0

[State 820, 1]
type = ChangeAnim2
Trigger1 = Time = 0
value = 2264

; HITG_SHAKE
[Statedef 3530]
type    = S
movetype= H
physics = N
velset = 0,0

[State 2235, 1] 
type = ChangeAnim
trigger1 = Time = 0
value = ifelse((GetHitVar(groundtype) = 1),5002,5012)

[State 2235, 3]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) 

[State 2235, 4] 
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 2235, 6]
type = ChangeState
trigger1 = HitShakeOver
value = 3531

[State 2235, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 2235, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 2235, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

; HITG_SLIDE
[Statedef 3531]
type    = S
movetype= H
physics = S

[State 2236, 1]
type = Hitfallset
trigger1 = Time = 0
value = 0

[State 2236, 1]
type = HitVelSet
trigger1 = Time = 0
x = 1

[State 2236, 2]
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = SelfAnimExist(5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10)
value = 5005 + GetHitVar(animtype) + (GetHitVar(groundtype)=2)*10

[State 2236, 3] 
type = VelMul
trigger1 = Time >= GetHitVar(slidetime)
x = .6

[State 2236, 4]
type = VelSet
trigger1 = HitOver
x = 0

[State 2236, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[State 2236, 6]
type = SelfState
trigger1 = HitOver
value = 0
ctrl = 1

;Hitted By Omega Dex
[Statedef 3540]
Type = S
Movetype = H
Physics = N
sprpriority = 0
ctrl = 0

[State 0, ]
type = ScreenBound
trigger1 = 1
value = 0

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -60
trigger1 = time = 0
value = 2230

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -60
trigger1 = time = 0
value = 2231

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -71
trigger1 = animelem = 2
value = 2230
elem = 2

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -71
trigger1 = animelem = 2
value = 2231
elem = 2

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -83
trigger1 = animelem = 3
value = 2230
elem = 3

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -83
trigger1 = animelem = 3
value = 2231
elem = 3

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -101
trigger1 = animelem = 4
value = 2230
elem = 4

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -101
trigger1 = animelem = 4
value = 2231
elem = 4

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -117
trigger1 = animelem = 5
value = 2230
elem = 5

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -117
trigger1 = animelem = 5
value = 2231
elem = 5

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -122
trigger1 = animelem = 6
value = 2230
elem = 6

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -122
trigger1 = animelem = 6
value = 2231
elem = 6

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) <= -117
trigger1 = animelem = 7
value = 2230
elem = 7

[State 2230, ]
type = ChangeAnim2
trigger1 = const(size.head.pos.y) > -117
trigger1 = animelem = 7
value = 2231
elem = 7

[State 2230, ]
type = Changeanim
trigger1 = anim = 2230 && animtime = 0
trigger2 = anim = 2231 && animtime = 0
trigger3 = anim = 5030
value = 5030

[State 2230, ]
type = StateTypeSet
trigger1 = anim = 5030
statetype = A

[State 2230, ]
type = VelAdd
trigger1 = anim = 5030
y = .55

[State 2230, ]
type = NotHitBy
trigger1 = anim = 5030
value = SCA

[State 2230, 3]
type = SelfState
trigger1 = pos Y >= 10
trigger1 = vel Y > 0
value = 5100

:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

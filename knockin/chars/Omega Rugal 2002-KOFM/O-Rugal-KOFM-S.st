;Rugal's Super Attacks
;==================================================================================
;Reppu Ken light
[Statedef 1000]
Type = S
Movetype = A
Physics = S
anim = 1000
poweradd = 48
juggle = 8
velset = 0,0
ctrl = 0

[State 1000, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000, 0
channel = 0

[State 1000, 2]
type = PlaySnd
trigger1 = animelem = 7, = 1
value = 1000, 1

[State 1000, 3]
type = Explod
trigger1 = animelem = 7
anim = 6056
ID = 6056
sprpriority = 2
ownpal = 1

[State 1000, 5]
type = Projectile 
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 6050
projanim = 6050
projhitanim = 6054
offset = 74,0
velocity = 4
ownpal = 1
damage = 96,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 0,13
guard.pausetime = 0,12
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = -10,-40
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -12
air.animtype = Back
air.fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 14
getpower = 39,39
givepower = 20,20

[State 1000, 9]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Reppu Ken Hard
[Statedef 1010]
Type = S
Movetype = A
Physics = S
anim = 1001
poweradd = 48
juggle = 8
velset = 0,0
ctrl = 0

[State 1010, 1]
type = PlaySnd
trigger1 = time = 1
value = 1000, 0
channel = 0

[State 1010, 2]
type = PlaySnd
trigger1 = animelem = 7, = 1
value = 1000, 1

[State 1000, 3]
type = Explod
trigger1 = animelem = 7
anim = 6056
ID = 6056
sprpriority = 2
ownpal = 1

[State 1010, 5]
type = Projectile
trigger1 = AnimElem = 7, = 1
attr = S, SP
projID = 6050
projanim = 6050
projhitanim = 6054
offset = 71,0
velocity = 7
ownpal = 1
damage = 96,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 0,13
guard.pausetime = 0,12
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = -10,-40
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -12
air.animtype = Back
air.fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 14
getpower = 39,39
givepower = 20,20

[State 1010, 9]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;Double Tomahawk
[Statedef 1050]
Type = S
Movetype = A
Physics = S
anim = 212
juggle = 8
velset = 0,0
ctrl = 0

[State 212, 1]
type = ChangeAnim
triggerall = time = 0
trigger1 = prevstateno = 201
trigger2 = prevstateno = 211
trigger3 = prevstateno = 221
trigger4 = prevstateno = 222
trigger5 = prevstateno = 231
trigger6 = prevstateno = 300
trigger7 = prevstateno = 320
trigger8 = prevstateno = 330
trigger9 = prevstateno = 501
value = 213
ignorehitpause = 1

[State 212, 2]
type = PlaySnd
trigger1 = animelem = 3
value = 2,0

[State 212, 3]
type = PlaySnd
trigger1 = time = 1
trigger1 = random < 600
value = 200,1
channel = 0

[State 212, 4]
type = HitDef
trigger1 = AnimElem = 4
attr = S, NA
animtype = hard
damage = 38
guardflag = MA
hitflag = MAF
pausetime = 12,13
sparkno = 1;medium
guard.sparkno = 40;medium
sparkxy = 0,-53
hitsound = S0,3
guardsound = S1,0
ground.type = low
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 45,30
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 212, 5]
type = ChangeState
trigger1 = animtime = 0
value = 1051

;Double Tomahawk 2
[Statedef 1051]
Type = S
Movetype = A
Physics = S
anim = 214
juggle = 8
velset = 0,0
ctrl = 0

[State 213, 1]
type = PlaySnd
trigger1 = animelem = 5
value = 2,0

[State 213, 2]
type = HitDef
trigger1 = AnimElem = 6
attr = S, NA
animtype = hard
damage = 96
guardflag = HA
hitflag = MAF
pausetime = 12,13
sparkno = 1;medium
guard.sparkno = 40;medium
sparkxy = 0,-53
hitsound = S0,3
guardsound = S1,0
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = -12
getpower = 45,30
givepower = 50,20
air.juggle = 15
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 213, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Light
[Statedef 1100]
Type = S
Movetype = A
Physics = S
anim = 1100
poweradd = 78
juggle = 8
velset = 0,0
ctrl = 0

[State 1100, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 0
channel = 0

[State 1100, 2]
type = Explod
trigger1 = AnimElem = 6
anim = 6110
ID = 6110
pos = -10,0
bindtime = -1
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1100, 3]
type = PosAdd
trigger1 = animelem = 3
Trigger2 = animelem = 4
x = -7

[State 1100, 6]
type = ChangeState
triggerall = AnimElem = 11
trigger1 = command != "holdx" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1101

[State 1100, 7]
type = ChangeState
triggerall = time >= 39 && time < 70
trigger1 = command != "holdx" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1102

[State 1100, 8]
type = ChangeState
triggerall = time >= 70
trigger1 = command != "holdx" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1103

[State 1100, 9]
type = ChangeState
trigger1 = animtime = 0
value = 1104

;Kaiser Wave Light - Shoot Immediately
[Statedef 1101]
Type = S
Movetype = A
Physics = S
anim = 1101
juggle = 8
velset = 0,0
ctrl = 0

[State 1101, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1101, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1101, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1101, 4]
type = Explod
trigger1 = time = 0
anim = 6111
ID = 6111
pos = 2, 0
bindtime = -1
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1101, 5]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6100
projanim = 6100
projhitanim = 6101
projpriority = 25
offset = 68,0
velocity = 6
ownpal = 1
damage = 115,10
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 1,13
guard.pausetime = 0,11
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1101, 8]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Light - Shoot 1
[Statedef 1102]
Type = S
Movetype = A
Physics = S
anim = 1101
juggle = 8
velset = 0,0
ctrl = 0

[State 1102, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1102, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1102, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1102, 4]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6100
projanim = 6100
projhitanim = 6101
projpriority = 25
offset = 68,0
velocity = 6
ownpal = 1
damage = 115,10
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1102, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Light - Shoot 2
[Statedef 1103]
Type = S
Movetype = A
Physics = S
anim = 1101
juggle = 8
velset = 0,0
ctrl = 0

[State 1103, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1103, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1103, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1103, 4]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6101
projanim = 6100
projhitanim = 6101
projpriority = 50
projhits = 2
projmisstime = 1
offset = 68,0
velocity = 6
ownpal = 1
damage = 85,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 3,4
guard.pausetime = 3,2
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.7,-9
air.animtype = Back
fall = 1
fall.recovertime = 40
p2stateno = 1105
air.velocity = -3.7,-9
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .45
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1103, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Light - Shoot 3
[Statedef 1104]
Type = S
Movetype = A
Physics = S
anim = 1101
juggle = 8
velset = 0,0
ctrl = 0

[State 1104, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1104, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1103, 4]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6101
projanim = 6100
projhitanim = 6101
projpriority = 50
projhits = 3
projmisstime = 1
offset = 68,0
velocity = 6
ownpal = 1
damage = 65,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 3,4
guard.pausetime = 3,2
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -4,-9
air.animtype = Back
fall = 1
fall.recovertime = 40
p2stateno = 1106
air.velocity = -4,-9
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .45
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1104, 6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Hard
[Statedef 1110]
Type = S
Movetype = A
Physics = S
anim = 1110
poweradd = 78
juggle = 8
velset = 0,0
ctrl = 0

[State 1110, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 0
channel = 0

[State 1110, 2]
type = Explod
trigger1 = AnimElem = 6
anim = 6110
ID = 6110
pos = -10,0
bindtime = -1
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1100, 3]
type = PosAdd
trigger1 = animelem = 3
Trigger2 = animelem = 4
x = -7

[State 1110, 6]
type = ChangeState
triggerall = animelem = 11 
trigger1 = command != "holdy" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1111

[State 1110, 7]
type = ChangeState
triggerall = time >= 41 && time < 72
trigger1 =  command != "holdy" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1112

[State 1110, 8]
type = ChangeState
triggerall = time >= 72
trigger1 = command != "holdy" && !AiLevel
trigger2 = AiLevel
trigger2 = enemynear,statetype != L
trigger2 = enemynear,movetype = A || enemynear,numproj > 0
trigger3 = AiLevel
trigger3 = enemynear,statetype != L
trigger3 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger3 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger4 = AiLevel
trigger4 = enemynear,stateno = 5120
trigger4 = enemynear,animtime = -5
value = 1113

[State 1110, 9]
type = ChangeState
trigger1 = animtime = 0
value = 1114

;Kaiser Wave Hard - Shoot Immediately
[Statedef 1111]
Type = S
Movetype = A
Physics = S
anim = 1111
juggle = 8
velset = 0,0
ctrl = 0

[State 1111, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1111, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1111, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1111, 4]
type = Explod
trigger1 = time = 0
anim = 6111
ID = 6111
pos = 2, 0
bindtime = -1
ownpal = 1
removeongethit = 1
sprpriority = 2

[State 1111, 5]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6100
projanim = 6100
projhitanim = 6102
projpriority = 25
offset = 56,0
velocity = 16
ownpal = 1
damage = 115,10
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 1,13
guard.pausetime = 0,11
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1111, 8]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Hard - Shoot 1
[Statedef 1112]
Type = S
Movetype = A
Physics = S
anim = 1111
juggle = 8
velset = 0,0
ctrl = 0

[State 1112, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1112, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1112, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1112, 4]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6100
projanim = 6100
projhitanim = 6102
projpriority = 25
offset = 56,0
velocity = 16
ownpal = 1
damage = 115,10
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1112, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Hard - Shoot 2
[Statedef 1113]
Type = S
Movetype = A
Physics = S
anim = 1111
juggle = 8
velset = 0,0
ctrl = 0

[State 1113, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1113, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1113, 3]
type = RemoveExplod
trigger1 = time = 0
ID = 6110

[State 1113, 4]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6101
projanim = 6100
projhitanim = 6102
projhits = 2
projmisstime = 1
projpriority = 50
offset = 56,0
velocity = 16
ownpal = 1
damage = 85,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 3,4
guard.pausetime = 3,2
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.7,-9
air.animtype = Back
fall = 1
fall.recovertime = 40
p2stateno = 1105
air.velocity = -3.7,-9
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .45
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1113, 7]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Kaiser Wave Hard - Shoot 3
[Statedef 1114]
Type = S
Movetype = A
Physics = S
anim = 1111
juggle = 8
velset = 0,0
ctrl = 0

[State 1114, 1]
type = PlaySnd
trigger1 = time = 1
value = 1100, 1
channel = 0

[State 1114, 2]
type = PlaySnd
trigger1 = animelem = 2, = 1
value = 1100, 2

[State 1114, 3]
type = Projectile
trigger1 = AnimElem = 2, = 1
attr = S, SP
projID = 6101
projanim = 6100
projhitanim = 6102
projhits = 3
projmisstime = 1
projpriority = 100
offset = 56,0
velocity = 16
ownpal = 1
damage = 65,10
animtype = Hard
hitflag = MAFP
guardflag = M
pausetime = 3,4
guard.pausetime = 3,2
sparkno = 2;hard1
guard.sparkno = 50;hard
sparkxy = 12,-70
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -4,-9
air.animtype = Back
fall = 1
fall.recovertime = 40
p2stateno = 1106
air.velocity = -4,-9
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .45
air.juggle = 1
getpower = 49,49
givepower = 20,20

[State 1101, 6]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1101, 7]
type = PosAdd
trigger1 = animelem = 5
trigger2 = animelem = 6
trigger3 = animelem = 7
x = -8

[State 1114, 6]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;Hitted By Kaiser Wave 2
[Statedef 1105]
type    = A
movetype= H
physics = N
sprpriority = 0
velset = 0,0
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = hitshakeover
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 1105, 4]
type = ChangeAnim
Trigger1 = hitshakeover = 0
value = 5030

[State 1106, 5]
type = Changeanim
triggerall = selfanimexist(5052) = 1 
trigger1 = hitshakeover
value = 5052
persistent = 0

[State 1106, 6]
type = Changeanim
triggerall = selfanimexist(5052) = 0 
trigger1 = anim = 5030
trigger1 = animtime = 0
value = 5050

[State 1106, 7]
type = Changeanim 
trigger1 = anim = 5052
trigger1 = vel Y >= 1
value = 5050

[State 1106, 8]
type = Changeanim
trigger1 = Vel Y >= 4
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 1105, 8] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1105, 9]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100

;Hitted By Kaiser Wave 3
[Statedef 1106]
type    = A
movetype= H
physics = N
sprpriority = 0
velset = 0,0
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = hitshakeover
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 1106, 4]
type = ChangeAnim
Trigger1 = hitshakeover = 0
value = 5030

[State 1106, 5]
type = Changeanim
triggerall = selfanimexist(5052) = 1 
trigger1 = hitshakeover
value = 5052
persistent = 0

[State 1106, 6]
type = Changeanim
triggerall = selfanimexist(5052) = 0 
trigger1 = anim = 5030
trigger1 = animtime = 0
value = 5050

[State 1106, 7]
type = Changeanim 
trigger1 = anim = 5052
trigger1 = vel Y >= 1
value = 5050

[State 1106, 8]
type = Changeanim
trigger1 = Vel Y >= 4
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 1106, 9] ;Recover near ground
type = SelfState
triggerall = Vel Y > 0
triggerall = Pos Y >= -20
triggerall = alive
triggerall = CanRecover
trigger1 = Command = "recovery"
value = 5200 ;HITFALL_RECOVER

[State 1106, 10]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100


;Dark Barrier Light
[Statedef 1200]
type    = S
movetype= A
physics = S
anim = 1200
poweradd = 63
sprpriority = 1
velset = 0,0
ctrl = 0

[State 1200, 1]
type = PlaySnd
trigger1 = time = 1
value = 195, 0
channel = 0

[State 1200, 2]
type = Width 
trigger1 = time >=1
edge = 30,0
player = 25,0

[State 1200, 3]
type = Helper
trigger1 = time >= 2
helpertype = normal
name = "barrier"
ID = 6150
stateno = 1202 
pos = 0,0
postype = p1
ownpal = 1
persistent = 0

[State 1200, 4]
type = VarSet
trigger1 = time = 0
v =  10
value = 0
ignorehitpause = 1

[State 1200, 5]
type = Varadd
trigger1 = time >=2 && time <= 11
v =  10
value = 1

[State 1200, 6]
type = changestate
trigger1 = animtime = 0
trigger2 = var(10) = 11
trigger3 = numhelper(6150) 
trigger3 = time >= 12 && time <= 26
trigger3 = helper(6150), stateno = 1204 && helper(6150), time = 2 || helper(6150) , stateno = 1205 && helper(6150), time = 2
value = 1201

[Statedef 1201]
type    = S
movetype= A
physics = S
anim = 1201
sprpriority = 1
velset = 0,0
ctrl = 0

[State 1201, 1]
type = Width 
trigger1 = time <= 28 
edge = 30,0
player = 25,0

[State 1201, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;barrier
[Statedef 1202]
type    = S
movetype= A
physics = N
anim = 6150
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1202, 1]
type = PlaySnd
trigger1 = time = 1
value = 1200, 0

[State 1202, 2]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 1202, 3]
type = ChangeAnim
trigger1 = anim = 6150 && animtime = 0
value = 6151

[State 1202, 4]
type = parentVarSet
trigger1 = MoveContact
v =  10
value = 11

[State 1202, 5]
type = ChangeAnim
trigger1 = time >= 25
trigger2 = Parent, stateno != 1200
trigger3 = MoveContact
value = 1202

[State 1202, 6]
type = HitDef
trigger1 = time >= 9
attr = S, SA
damage = 127,10
hitflag = MAF
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 2,13
guard.pausetime = 2,11
sparkno = 1;hard1
guard.sparkno = 50;hard
sparkxy = 0,-55
hitsound = S0,2
guardsound = S1,0
ground.velocity = -4,-9
ground.cornerpush.veloff = 0
air.velocity = -4,-6
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 35
guard.velocity = -12
Ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
Guard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 47,47
givepower = 50,20
fall.yvelocity = -3.4
guard.slidetime = 22
guard.hittime = 22;44
guard.ctrltime = 22;44
sprpriority = 2
yaccel = .55
persistent = 0

[State 0, ]
type = ParentVarSet
trigger1 = MoveHit
var(40) = 1
ignorehitpause = 1
persistent = 0

[State 1202, 7]
type = HitBy	
trigger1 = Time >= 0
value = SCA, AP

[State 1202, 8]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, NP, SP
stateno = 1204
time = -1
slot = 0

[State 1202, 9]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, HP, HA
stateno = 1205
time = -1
slot = 1

[State 1202, 9]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, AA, AT
stateno = 1204
time = -1
slot = 2

[State 0, ]
type = SprPriority
trigger1 = time >= 0
value = 2
ignorehitpause = 1

[State 1202, 10]
type = Explod
trigger1 = parent, var(10) = 1
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.1, 0.1
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 11]
type = Explod
trigger1 = parent, var(10) = 2
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.2, 0.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 12]
type = Explod
trigger1 = parent, var(10) = 3
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.3, 0.3
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 13]
type = Explod
trigger1 = parent, var(10) = 4
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.4, 0.4
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 14]
type = Explod
trigger1 = parent, var(10) = 5
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.5, 0.5
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 15]
type = Explod
trigger1 = parent, var(10) = 6
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.6, 0.6
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 16]
type = Explod
trigger1 = parent, var(10) = 7
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.7, 0.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 17]
type = Explod
trigger1 = parent, var(10) = 8
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.8, 0.8
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 18]
type = Explod
trigger1 = parent, var(10) = 9
trigger1 = Parent, stateno != 1200
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.9, 0.9
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1202, 19]
type = Explod
triggerall = !MoveContact
trigger1 = parent, var(10) = 10
trigger1 = Parent, stateno != 1200
trigger1 = numexplod(6152) = 0
trigger2 = time = 25
trigger2 = numexplod(6152) = 0
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 1, 1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1202, 20]
type = Explod
trigger1 = MoveContact
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 1, 1
sprpriority = 2
ownpal = 1
persistent = 0

[State 1202, 21]
type = DestroySelf
trigger1 = parent, stateno != 1200
;trigger1 = numexplod(6152) = 0

[Statedef 1204]
type    = S
movetype= A
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1204, 1]
type = ChangeAnim
trigger1 = time = 0 && anim != 6151
value = 6151
ignorehitpause = 1

[State 1204, 2]
type = ChangeAnim
trigger1 = time = 1
value = 6152
ignorehitpause = 1

[State 1204, 3]
type = PosAdd
trigger1 = time = 1
x = 72
y = -56
ignorehitpause = 1

[State 1204, 4]
type = PlaySnd
trigger1 = time = 0
value = 1200, 1

[State 1214, 5]
type = Projectile
trigger1 = time = 0
attr = S, SP
projID = 6160
projanim = 6160
projhitanim = 6161
offset = 90,-56
velocity = 4
ownpal = 1
damage = 95,10
animtype = Hard
hitflag = MAFP
projpriority = 999
guardflag = MA
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 12,0
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -12
air.animtype = Back
air.fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 78,78
givepower = 20,20

[State 1204, 6]
type = destroyself
trigger1 = anim = 6152 && animtime = 0

[Statedef 1205]
type    = S
movetype= A
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1205, 1]
type = ChangeAnim
trigger1 = time = 0 && anim != 6151
value = 6151
ignorehitpause = 1

[State 1205, 2]
type = ChangeAnim
trigger1 = time = 1
value = 6152
ignorehitpause = 1

[State 1205, 3]
type = PosAdd
trigger1 = time = 1
x = 72
y = -56
ignorehitpause = 1

[State 1205, 4]
type = PlaySnd
trigger1 = time = 0
value = 1200, 1

[State 1205, 5]
type = Projectile
trigger1 = time = 0
attr = S, HP
projID = 6165
projanim = 6165
projhitanim = 6166
projpriority = 25
offset = 92,-56
velocity = 4
ownpal = 1
damage = 280,10
animtype = diagup
hitflag = MAFP
projpriority = 9999
guardflag = M
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 12,0
hitsound = S0,4
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.8,-9
fall = 1
fall.recover = 0
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 78,78
givepower = 20,20

[State 1205, 6]
type = destroyself
trigger1 = anim = 6152 && animtime = 0

;Dark Barrier Hard
[Statedef 1210]
type    = S
movetype= A
physics = S
anim = 1210
poweradd = 63
sprpriority = 1
velset = 0,0
ctrl = 0

[State 1210, 1]
type = PlaySnd
trigger1 = time = 1
value = 195, 0
channel = 0

[State 1210, 2]
type = Width 
trigger1 = time >=2
edge = 30,0
player = 25,0

[State 1210, 3]
type = Helper
trigger1 = time >= 5
helpertype = normal
name = "barrierb"
ID = 6151
stateno = 1212 
pos = 0,0
postype = p1
ownpal = 1
persistent = 0

[State 1210, 4]
type = VarSet
trigger1 = time = 0
v =  10
value = 0
ignorehitpause = 1

[State 1210, 5]
type = Varadd
trigger1 = time >=5 && time <= 14
v =  10
value = 1

[State 1210, 6]
type = changestate
trigger1 = animtime = 0
trigger2 = var(10) = 11
trigger3 = numhelper(6151) 
trigger3 = time >= 15 && time <= 45
trigger3 = helper(6151), stateno = 1214 && helper(6151), time = 2 || helper(6151) , stateno = 1215 && helper(6151), time = 2
value = 1211

[Statedef 1211]
type    = S
movetype= A
physics = S
anim = 1211
sprpriority = 1
velset = 0,0
ctrl = 0

[State 1211, 1]
type = Width 
trigger1 = time <= 30 
edge = 30,0
player = 25,0

[State 1211, 2]
type = changestate
trigger1 = animtime = 0
value = 0
ctrl = 1

;barrier
[Statedef 1212]
type    = S
movetype= A
physics = N
anim = 6150
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1212, 1]
type = PlaySnd
trigger1 = time = 1
value = 1200, 0

[State 1212, 2]
type = PosSet
trigger1 = 1
x = parent, pos x

[State 1212, 3]
type = ChangeAnim
trigger1 = anim = 6150 && animtime = 0
value = 6151

[State 1212, 4]
type = parentVarSet
trigger1 = MoveContact
v =  10
value = 11

[State 1212, 5]
type = ChangeAnim
trigger1 = time >= 41
trigger2 = Parent, stateno != 1210
trigger3 = MoveContact
value = 1202

[State 1212, 6]
type = HitDef
trigger1 = time >= 9
attr = S, SA
damage = 127,10
hitflag = MAF
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 2,13
sparkno = 1;hard1
guard.sparkno = 50;hard
sparkxy = 10,-55
hitsound = S0,2
guardsound = S1,0
ground.velocity = -4,-9
ground.cornerpush.veloff = 0
air.velocity = -4,-6
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 35
guard.velocity = -12
Ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
Guard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 47,47
givepower = 50,20
fall.yvelocity = -3.4
guard.pausetime = 2,11
guard.slidetime = 22
guard.hittime = 22;44
guard.ctrltime = 22;44
sprpriority = 2
yaccel = .55
persistent = 0

[State 0, ]
type = ParentVarSet
trigger1 = MoveHit
var(40) = 1
ignorehitpause = 1
persistent = 0

[State 1202, 7]
type = HitBy	
trigger1 = Time >= 0
value = SCA, AP

[State 1212, 8]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, NP, SP
stateno = 1214
time = -1
slot = 0

[State 1212, 9]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, HP
stateno = 1215
time = -1
slot = 1

[State 1202, 9]
type = hitoverride
trigger1 = anim = 6151
attr = SCA, AA, AT
stateno = 1214
time = -1
slot = 2

[State 0, ]
type = SprPriority
trigger1 = time >= 0
value = 2
ignorehitpause = 1

[State 1212, 10]
type = Explod
trigger1 = parent, var(10) = 1
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.1, 0.1
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 11]
type = Explod
trigger1 = parent, var(10) = 2
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.2, 0.2
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 12]
type = Explod
trigger1 = parent, var(10) = 3
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.3, 0.3
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 13]
type = Explod
trigger1 = parent, var(10) = 4
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.4, 0.4
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 14]
type = Explod
trigger1 = parent, var(10) = 5
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.5, 0.5
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 15]
type = Explod
trigger1 = parent, var(10) = 6
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.6, 0.6
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 16]
type = Explod
trigger1 = parent, var(10) = 7
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.7, 0.7
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 17]
type = Explod
trigger1 = parent, var(10) = 8
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.8, 0.8
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 18]
type = Explod
trigger1 = parent, var(10) = 9
trigger1 = Parent, stateno != 1210
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 0.9, 0.9
sprpriority = 2
ownpal = 1
ignorehitpause = 1
persistent = 0

[State 1212, 19]
type = Explod
triggerall = !MoveContact
trigger1 = parent, var(10) = 10
trigger1 = Parent, stateno != 1210
trigger1 = numexplod(6152) = 0
trigger2 = time = 41
trigger2 = numexplod(6152) = 0
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 1, 1
sprpriority = 2
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1212, 20]
type = Explod
trigger1 = MoveContact
anim = 6152
ID = 6152
pos = 72, -56
postype = p1
facing = 1
scale = 1, 1
sprpriority = 2
ownpal = 1
persistent = 0

[State 1212, 21]
type = DestroySelf
trigger1 = parent, stateno != 1210
;trigger1 = numexplod(6152) = 0

[Statedef 1214]
type    = S
movetype= A
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1214, 1]
type = ChangeAnim
trigger1 = time = 0 && anim != 6151
value = 6151
ignorehitpause = 1

[State 1214, 2]
type = ChangeAnim
trigger1 = time = 1
value = 6152
ignorehitpause = 1

[State 1214, 3]
type = PosAdd
trigger1 = time = 1
x = 72
y = -56
ignorehitpause = 1

[State 1214, 4]
type = PlaySnd
trigger1 = time = 0
value = 1200, 1

[State 1214, 5]
type = Projectile
trigger1 = time = 0
attr = S, SP
projID = 6160
projanim = 6160
projhitanim = 6161
offset = 90,-56
velocity = 6
ownpal = 1
damage = 95,10
animtype = Hard
hitflag = MAFP
projpriority = 999
guardflag = MA
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 12,0
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -12
air.animtype = Back
air.fall = 1
fall.recovertime = 40
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 78,78
givepower = 20,20

[State 1214, 6]
type = destroyself
trigger1 = anim = 6152 && animtime = 0

[Statedef 1215]
type    = S
movetype= A
physics = S
sprpriority = 2
velset = 0,0
ctrl = 0

[State 1215, 1]
type = ChangeAnim
trigger1 = time = 0 && anim != 6151
value = 6151
ignorehitpause = 1

[State 1215, 2]
type = ChangeAnim
trigger1 = time = 1
value = 6152
ignorehitpause = 1

[State 1215, 3]
type = PosAdd
trigger1 = time = 1
x = 72
y = -56
ignorehitpause = 1

[State 1215, 4]
type = PlaySnd
trigger1 = time = 0
value = 1200, 1

[State 1215, 5]
type = Projectile
trigger1 = time = 0
attr = S, HP
projID = 6165
projanim = 6165
projhitanim = 6166
projpriority = 25
offset = 80,-56
velocity = 16
ownpal = 1
damage = 280,10
animtype = diagup
hitflag = MAFP
projpriority = 9999
guardflag = M
pausetime = 0,13
guard.pausetime = 0,11
sparkno = 3
guard.sparkno = 50
sparkxy = 12,0
hitsound = S0,2
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -3.8,-9
fall = 1
fall.recover = 0
air.velocity = -3.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 1
getpower = 78,78
givepower = 20,20

[State 1215, 6]
type = destroyself
trigger1 = anim = 6152 && animtime = 0

;God Press light
[Statedef 1300]
Type = S
Movetype = A
Physics = S
anim = 1300
poweradd = 62
juggle = 8
velset = 0,0
ctrl = 0

[State 1300, 1]
type = PlaySnd
trigger1 = time = 1
value = 200, 0
channel = 0

[State 1300, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1301

;God Press light - run
[Statedef 1301]
Type = S
Movetype = A
Physics = S
anim = 1301
juggle = 8
ctrl = 0

[State 1301, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 0
channel = 8
loop = 1

[State 1301, 2]
type = VelSet
trigger1 = time >= 0
x = 8

[State 1301, 3]
type = HitDef
trigger1 = 1
attr = S, SA
animtype = hard
priority = 7,miss
damage = 0,10
guardflag = M
hitflag = MAF
hitonce = 1
pausetime = 4,4
guard.pausetime = 4,12
sparkno = 3;hard1
guard.sparkno = 50;hard
sparkxy = 0,-65
hitsound = S0,2
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
getpower = 55,55
givepower = 10,10
air.juggle = 15
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
p1stateno = 1304
p2stateno = 1319
p2facing = 1
persistent = 0

[State 1301, 4]
type = ChangeState
trigger1 = MoveContact
value = 1303

[State 1301, 5]
type = ChangeState
trigger1 = time = 16
value = 1302


;God Press / Gigantic Pressure - Stop
[Statedef 1302]
Type = S
Movetype = A
Physics = S
anim = 1302
juggle = 8
ctrl = 0

[State 1302, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 1303, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;God Press / Gigantic Pressure - When Guarded
[Statedef 1303]
Type = S
Movetype = A
Physics = S
anim = 1303
juggle = 8
ctrl = 0

[State 1302, 1]
type = VelSet
trigger1 = time = 0
x = 0

[State 1303, 2]
type = HitDef
trigger1 = animelem = 2, = 1
attr = S, SA
animtype = hard
damage = 96,5
guardflag = M
hitflag = MAF
pausetime = 12,17
sparkno = 3
guard.sparkno = 50
sparkxy = -32,-55
hitsound = S0,3
guardsound = S1,1
ground.type = high
ground.slidetime = 17
ground.hittime = 17
ground.velocity = -12
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0;-12
getpower = 125,125
givepower = 10,10
air.juggle = 15
guard.pausetime = 18,11
guard.slidetime = 18
guard.hittime = 12;36
guard.ctrltime = 36
yaccel = .5
persistent = 0

[State 1303, 3]
type = PosAdd
trigger1 = animelem = 6
trigger2 = animelem = 7
trigger3 = animelem = 8
x = -8

[State 1303, 4]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;God Press light - Hit jump away
[Statedef 1306]
Type = A
Movetype = A
Physics = N
anim = 1306
velset = 0,0
ctrl = 0

[State 1307, nothitby]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1307]
type = PlaySnd
trigger1 = AnimElem = 1
value = s105, 0

[State 1306, 1]
type = VelSet
trigger1 = time = 1
x = -5.1
y = -3

[State 1306, 2]
type = veladd
trigger1 = time > 1
y = 0.5

[State 1306, 3]
type = ChangeState
trigger1 = vel y > 0
trigger1 = pos y >= 0
value = 1307

;God Press light - Hit land
[Statedef 1307]
Type = S
Movetype = A
Physics = S
anim = 1307
velset = 0,0
ctrl = 0

[State 52, PlaySnd]
type = PlaySnd
trigger1 = AnimElem = 2
value = f7,ifelse(Stagevar(Info.name)!="Boss",3,9)
volumescale = 50

[State 1307, nothitby]
type = NotHitBy
trigger1 = time < 13
value = SCA

[State 1307, 1]
type = posset
trigger1 = time = 0
y = 0

[State 1307, 2]
type = posadd
trigger1 = time = 0
x = 11

[State 1307, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;God Press - Hit run
[Statedef 1304]
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
type = TargetState
trigger1 = time = 0
value = 1320

[State 0, ]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1304, 1]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1304, 3]
type = VelSet
trigger1 = time >= 0
x = 11

[State 1304, 4]
type = TargetBind
trigger1 = AnimElemtime(1) >= 0
pos = -23,-76
ignorehitpause = 0

[State 1304, 4]
type = TargetBind
trigger1 = AnimElemtime(2) >= 0
pos = -18,-72
ignorehitpause = 0

[State 1304, 4]
type = TargetBind
trigger1 = AnimElemtime(3) >= 0
pos = -13,-66
ignorehitpause = 0

[State 1304, 5]
type = PlaySnd
trigger1 = AnimElem = 2
value = 600, 2

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time <= 5
edge = 100,0

[State 810, 物理的なキャラの幅]
type = Width
trigger1 = time >= 6
edge = 70,0

[State 1304, 7]
type = ChangeState
trigger1 = time >= 1
trigger1 = FrontEdgeDist <= 90
;trigger2 = time >= 180
value = 1305

;God Press light - Hit press
[Statedef 1305]
Type = S
Movetype = A
Physics = S
velset = 0,0
ctrl = 0

[State 1304, 1]
type = posset
trigger1 = time = 0
y = 0

[State 1305, 1]
type = ChangeAnim
trigger1 = time = 0
value = 1305

[State 1305, 2]
type = PosAdd
trigger1 = time = 0
x = -30

[State 1304, 5]
type = PlaySnd
trigger1 = time = 0
value = s1300, 2

[State 1305, 3]
type = Targetstate
trigger1 = time = 0
value = 1321

[State 1305, 4]
type = TargetBind
trigger1 = anim = 1305 && animelem = 1
pos = 95, -73
ignorehitpause = 0

[State 1305, 5]
type = TargetBind
trigger1 = anim = 1305 && animelemtime(2) >= 0 && animelemtime(2) <= 17
pos = 128, -73
ignorehitpause = 0

[State 1305, 6]
type = TargetLifeAdd
trigger1 = anim = 1305 && animelem = 2
value = -110

[State 1305, 7]
type = EnvShake
trigger1 = anim = 1305 && animelem = 2
time = 16
freq = 90
ampl = 12

[State 1305, 8]
type = PlaySnd
trigger1 = anim = 1305 && animelem = 2
value = 0,4

[State 1305, 9]
type = Explod
trigger1 = anim = 1305 && animelem = 2
anim = f3
pos = 128,-73
sprpriority = 2
ownpal = 1

[State 1305, 9]
type = HitAdd
trigger1 = anim = 1305 && animelem = 2
value = 1

[State 1405, Explod]
type = Explod
trigger1 = anim = 1305 && animelem = 1
anim = 6700
pos = -15,10
postype = P1
sprpriority = 8
facing = 1
ownpal = 0
persistent = 0
ignorehitpause = 1
removeongethit = 1

[State 1305, 10]
type = ChangeState
trigger1 = animtime = 0
value = 1306
ctrl = 1

;God Press hard
[Statedef 1310]
Type = S
Movetype = A
Physics = S
anim = 1300
poweradd = 62
juggle = 8
velset = 0,0
ctrl = 0

[State 1310, 1]
type = PlaySnd
trigger1 = time = 1
value = 200, 0
channel = 0

[State 1310, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1311

;God Press Hard - run
[Statedef 1311]
Type = S
Movetype = A
Physics = S
anim = 1301
juggle = 8
ctrl = 0

[State 1301, 1]
type = PlaySnd
trigger1 = time = 0
value = 100, 0
channel = 8
loop = 1

[State 1311, 3]
type = VelSet
trigger1 = time >= 0
x = 8

[State 1311, 4]
type = HitDef
trigger1 = 1
attr = S, SA
animtype = hard
priority = 7,miss
damage = 0,10
guardflag = M
hitflag = MAF
hitonce = 1
pausetime = 4,4
guard.pausetime = 4,12
sparkno = 3;hard1
guard.sparkno = 50;hard
sparkxy = 0,-65
hitsound = S0,2
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
getpower = 55,55
givepower = 10,10
air.juggle = 15
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
p1stateno = 1304
p2stateno = 1319
p2facing = 1
persistent = 0

[State 1311, 5]
type = ChangeState
trigger1 = MoveContact
value = 1303

[State 1311, 6]
type = ChangeState
trigger1 = time = 24
value = 1302

;God Press hard - stop
[Statedef 1312]
Type = S
Movetype = A
Physics = S
anim = 1312
juggle = 8
ctrl = 0

[State 1312, 1]
type = VelSet
trigger1 = time = 6
x = 0

[State 1302, 2]
type = PosAdd
trigger1 = animelem = 2
trigger2 = animelem = 3
x = -8

[State 1312, 3]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1


;God Press - Hitted
[Statedef 1319]
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

[State 2020, 2]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1319, ]
type = PosSet
trigger1 = time = 0
y = 0

[State 1319, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 1319, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 1319, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 1319, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1319, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 && GetHitVar(fall)
trigger2 = Pos Y != 0
type = a

[State 1319, 6]
type = SelfState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0
value = 5001 ;HITG_SLIDE

[State 1319, 7]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 1319, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 1319, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 1319, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

;God Press - Hitted
[Statedef 1320]
Type = S
Movetype = H
Physics = N
velset = 0,0
;anim = 5010
ctrl = 0

[State 1320, 5]
type = Changeanim2
trigger1 = time = 0
value = 1308

[State 1320, 1]
type = NotHitBy
trigger1 = 1
value = SCA
ignorehitpause = 1

[State 1320, 2]
type = sprpriority
trigger1 = time = 0
value = 2

[State 2120]
type = ScreenBound
trigger1 = 1
value = 1
movecamera = 1,0

;God Press - Hitted
[Statedef 1321]
Type = S
Movetype = H
Physics = N
velset = 0,0
sprpriority = 2
ctrl = 0

[State 2023, 1]
type = PalFX
trigger1 = time = 30
time = 1
add = 0,0,0
sinadd = 0,0,0,1
color = 256
invertall = 0

[State 1321, 1]
type = sprpriority
trigger1 = time = 2
value = 0

[State 1321, 2]
type = Width
trigger1 = time <= 20 
edge = 0,-20
player = 0,0

[State 1321, 3]
type = Changeanim2
trigger1 = time = 2
value = 1309

[State 1320, 4]
type = ScreenBound
trigger1 = time <= 20
value = 0

[State 1321, 5]
type = changestate
trigger1 = anim = 1309 && animtime = 0
value = 1322

;God Press - Hitted (in air)
[Statedef 1322]
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

[State 1322, 1]
type = PosAdd
trigger1 = time = 0
y = -const(size.mid.pos.y)
x = const(size.mid.pos.x)

[State 1322, 2]
type = VelSet
trigger1 = time = 0
x = -4
Y = -6

[State 1322, 3]
type = VelAdd
trigger1 = time > 0
y = .45

[State 1322, 4]
type = ChangeAnim
Trigger1 = Time = 0
value = 5030

[State 1322, 5]
type = Changeanim
trigger1 = time = 8
value = 5050

[State 1322, 6]
type = Changeanim
trigger1 = Vel Y >= 1
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 1322, 7]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100

; CvS Genocide Cutter Hard
[Statedef 1410]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 70
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

[State 1400, 3]
type = VarSet
trigger1 = time = 1
v =  11
value = 47

[State 1400, 4]
type = PlaySnd
trigger1 = time = 0
value = 1400, 0
Channel = 0  

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = AnimElem = 4
trigger2 = AnimElem = 9
trigger3 = AnimElem = 19
value = 1400,2

[State 1000, 音を鳴らす]
type = PlaySnd
trigger1 = time = 43
value = 195,0

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
attr = S, SA
damage = 30, 4
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -60
hitsound = s0,8
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
attr = A, SA
damage = 30, 3
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -80
hitsound = s0,8
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
attr = A, SA
damage = 30, 4
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 10, 10
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -80
hitsound = s0,8
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
attr = A, SA
damage = 30, 3
animtype = up
guardflag = M
hitflag = MAF
priority = 3, Hit
pausetime = 7, 7
sparkno = 12
guard.sparkno = 50
sparkxy = -20, -20
hitsound = s0,8
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
envshake.time = 20;7
envshake.ampl = -3;5
envshake.freq = 80
envshake.phase = -2
fall.envshake.ampl = 5
fall.envshake.freq = 90
fall.envshake.time = 15

[State 0, ]
type = Pause
;trigger1 = roundstate = 2
trigger1 = animelem = 19 && MoveHit
time = 1
movetime = 0 
ignorehitpause = 1
persistent = 0

[State 1000, ステ?ト変更]
type = ChangeState
triggerall = AnimElemtime(10) >= 0
trigger1 = Vel Y > 0 && Pos Y >= 0
value = 1415

;CvS Genocide Cutter Hard Land
[Statedef 1415]
type     = S
movetype = I
physics  = S
juggle   = 0
poweradd = 0
velset   = 0,0
anim     = 1515
ctrl     = 0
sprpriority = 2

[State 52, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,ifelse(Stagevar(Info.name)!="Boss",3,9)
volumescale = 50

[State 1000,]
type = Posset
trigger1 = time = 0
y = 0

[State 1000, 軸位置移動]
type = Velset
trigger1 = time = 0
x = 0
y = 0

[State -2, 残像]
type = AfterImage
trigger1 = time = 0
time = 1

[State 1000, ステ?ト変更]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;Hitted By GC new
[Statedef 1420]
type    = A
movetype= H
physics = N
sprpriority = 0
velset = 0,0
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = hitshakeover
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 1105, 4]
type = ChangeAnim
Trigger1 = hitshakeover = 0
value = 5030

[State 1106, 5]
type = Changeanim
triggerall = selfanimexist(5052) = 1 
trigger1 = hitshakeover
value = 5052
persistent = 0

[State 1106, 6]
type = Changeanim
triggerall = selfanimexist(5052) = 0 
trigger1 = anim = 5030
trigger1 = animtime = 0
value = 5050

[State 1106, 7]
type = Changeanim 
trigger1 = anim = 5052
trigger1 = vel Y >= 1
value = 5050

[State 1106, 8]
type = Changeanim
trigger1 = Vel Y >= 4
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 1105, 9]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100


;Dark Genocide Cutter light
[Statedef 1500]
Type = S
Movetype = A
Physics = S
anim = 1450
poweradd = 156
velset = 0,0
juggle = 8
ctrl = 0

[State 1600, 3]
type = VarSet
trigger1 = time = 1
v =  11
value = 47

[State 1600, 4]
type = PlaySnd
trigger1 = time = 0
value = 1400, 0
Channel = 0  

[State 1600, 5]
type = PlaySnd
trigger1 = animelem = 4, = 1
value = 1400, 2  

[State 1600, 6]
type = HitDef
trigger1 = animelem = 5
attr = S, SA
animtype = hard
damage = 49,3
guardflag = M
hitflag = MAF
pausetime = 12,13
sparkno = 12
guard.sparkno = 50
sparkxy = 0,-26
hitsound = S0,8
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0;-12
ground.cornerpush.veloff = 0
air.velocity = 0,-6;-3.5,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.velocity = 0;-4,-6
guard.velocity = 0;-12
getpower = 94,94
givepower = 10,10
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
persistent = 0
air.fall = 1
fall.recovertime = 38

[State 1600, 7]
type = Explod
trigger1 = animelem = 4, = 1
anim = 6200
id = 6200
pos = -16,0
bindtime = -1
sprpriority = 2
removeongethit = 1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1600, 8]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 8

[State 1600, 9]
type = HitBy
trigger1 = Time <= 9
value = SCA, NT, ST, HT

[State 1600, 10]
type = changestate
trigger1 = animtime = 0
value = 1501

;Dark Genocide Cutter light - Second Hit
[Statedef 1501]
Type = A
Movetype = A
Physics = N
anim = 1460
velset = 0,-3.5
ctrl = 0

[State 1601, 1]
type = Width
trigger1 = time >= 0
player = -12,0

[State 1601, 2]
type = veladd
trigger1 = time >= 1
y = 0.294

[State 1601, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 49,3
hitflag = MAF
guardflag = M
animtype = Hard
ground.type = low
pausetime = 12,13
sparkno = 12
guard.sparkno = 50
sparkxy = 0,-68
hitsound = S0,8
guardsound = S1,1
ground.velocity = 0,-12;-0.3,-12
ground.cornerpush.veloff = 0
air.velocity = 0,-12;-0.3,-12
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 48
guard.velocity = 0;-12
Guard.cornerpush.veloff = 0;-12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 94,94
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 12,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55

[State 1601, 4]
type = changestate
trigger1 = animtime = 0
value = 1502

;Dark Genocide Cutter light - Third Hit
[Statedef 1502]
Type = A
Movetype = A
Physics = N
anim = 1470
ctrl = 0

[State 1602, 1]
type = veladd
trigger1 = time >= 1
y = 0.294

[State 1602, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage = 49,3
hitflag = MAF
guardflag = M
animtype = Hard
ground.type = low
pausetime = 16,17
sparkno = 12
guard.sparkno = 50
sparkxy = 0,-118
hitsound = S0,8
guardsound = S1,1
ground.velocity = -1.5,-10.7
ground.cornerpush.veloff = 0
air.velocity = -1.5,-10.7
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 58
guard.velocity = 0;-12
Guard.cornerpush.veloff = 0;-12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 94,94
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 16,15
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
envshake.time = 20
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2
yaccel = .55

[State 0, ]
type = Pause
;trigger1 = roundstate = 2
trigger1 = MoveHit
time = 1
movetime = 0 
ignorehitpause = 1
persistent = 0

[State 1602, 3]
type = PlaySnd
trigger1 = animelem = 1, = 1
value = 1400, 2 

[State 1602, 4]
type = Explod
trigger1 = animelem = 1, = 1
anim = 6210
id = 6210
pos = -16,1
bindtime = 1
sprpriority = 2
removeongethit = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1401, varset]
type = VarSet
trigger1 = MoveHit
var(18) = 1 
ignorehitpause = 1

[State 1602, 5]
type = changestate
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1503

;Dark Genocide Cutter light - Land
[Statedef 1503]
Type = A
Movetype = A
Physics = N
anim = 1480
velset = 0,0
ctrl = 0

[State 1603, 1]
type = PlaySnd
trigger1 = time = 0
value = 52, 0

[State 1603, 2]
type = PosSet
trigger1 = time = 0 
y = 0

[State 1603, 3]
type = changestate
trigger1 = animtime = 0
value = 0
Ctrl = 1

;Dark Genocide Cutter Hard - First
[Statedef 1550]
Type = S
Movetype = A
Physics = S
anim = 1450
poweradd = 156
velset = 0,0
juggle = 8
ctrl = 0

[State 1400, 3]
type = VarSet
trigger1 = time = 1
v =  11
value = 47

[State 1600, 5]
type = PlaySnd
trigger1 = time = 0
value = 1400, 0
channel = 0  

[State 1600, 5]
type = PlaySnd
trigger1 = animelem = 4, = 1
value = 1400, 2  

[State 1600, 6]
type = HitDef
trigger1 = animelem = 5
attr = S, SA
animtype = hard
damage = 49,3
guardflag = M
hitflag = MAF
pausetime = 12,13
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-26
hitsound = S0,8
guardsound = S1,1
ground.type = low
ground.slidetime = 17
ground.hittime = 17
ground.velocity = 0;-12
ground.cornerpush.veloff = 0
air.velocity = 0,-6;-3.5,-6
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
airguard.velocity = 0;-4,-6
guard.velocity = 0;-12
getpower = 94,94
givepower = 10,10
guard.pausetime = 12,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
yaccel = .5
persistent = 0
air.fall = 1
fall.recovertime = 38

[State 1610, 5]
type = Explod
trigger1 = animelem = 4, = 1
anim = 6201
id = 6200
pos = -16,0
bindtime = -1
sprpriority = 2
removeongethit = 1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1600, 8]
type = PosAdd
trigger1 = animelem = 4
trigger2 = animelem = 5
x = 8

[State 1600, 9]
type = HitBy
trigger1 = 1
value = SCA, NT, ST, HT

[State 1600, 10]
type = changestate
trigger1 = animtime = 0
value = 1551

;Dark Genocide Cutter Hard - Second
[Statedef 1551]
Type = A
Movetype = A
Physics = N
anim = 1460
velset = 0,-7;-8
ctrl = 0

[State 1601, 1]
type = Width
trigger1 = time >= 0
player = -12,0

[State 1601, 2]
type = veladd
trigger1 = time >= 1
y = 0.294

[State 1601, 3]
type = HitDef
trigger1 = AnimElem = 1
attr = A, SA
damage = 49,3
hitflag = MAF
guardflag = M
animtype = Hard
ground.type = low
pausetime = 12,13
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-68
hitsound = S0,8
guardsound = S1,1
ground.velocity = 0,-12;-0.3,-12
ground.cornerpush.veloff = 0
air.velocity = 0,-12;-0.3,-12
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 48
guard.velocity = 0;-12
Guard.cornerpush.veloff = 0;-12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 94,94
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 12,11
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .55

[State 1601, 4]
type = changestate
trigger1 = animtime = 0
value = 1552

;Dark Genocide Cutter Hard - Third
[Statedef 1552]
Type = A
Movetype = A
Physics = N
anim = 1470
ctrl = 0

[State 1602, 1]
type = veladd
trigger1 = time >= 1
y = 0.294

[State 1602, 2]
type = HitDef
trigger1 = AnimElem = 3
attr = A, SA
damage = 59,3
hitflag = MAF
guardflag = M
animtype = Hard
ground.type = low
pausetime = 16,17
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-118
hitsound = S0,8
guardsound = S1,1
ground.velocity = -1.5,-10.7
ground.cornerpush.veloff = 0
air.velocity = -1.5,-10.7
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 58
guard.velocity = 0;-12
Guard.cornerpush.veloff = 0;-12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 94,94
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 16,15
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
envshake.time = 20
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2
yaccel = .55

[State 0, ]
type = Pause
;trigger1 = roundstate = 2
trigger1 = MoveHit
time = 1
movetime = 0 
ignorehitpause = 1
persistent = 0

[State 0, ]
type = VarSet
trigger1 = MoveHit
var(30) = 14
ignorehitpause = 1
persistent = 0

[State 1602, 3]
type = PlaySnd
trigger1 = animelem = 1, = 1
value = 1400, 2 

[State 1602, 4]
type = Explod
trigger1 = animelem = 1, = 1
anim = 6210
id = 6210
pos = -16,1
bindtime = 1
sprpriority = 2
removeongethit = 0
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 1401, varset]
type = VarSet
trigger1 = MoveHit
var(18) = 1 
ignorehitpause = 1

[State 1602, 5]
type = changestate
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1553

;Dark Genocide Cutter Hard - Land
[Statedef 1553]
Type = A
Movetype = A
Physics = N
anim = 1480
velset = 0,0
ctrl = 0

[State 1603, 1]
type = PlaySnd
trigger1 = time = 0
value = 52, 0

[State 1603, 2]
type = PosSet
trigger1 = time = 0 
y = 0

[State 1603, 3]
type = changestate
trigger1 = animtime = 0
value = 0
Ctrl = 1

;Dark Genocide Cutter hard - New Hit
[Statedef 1554]
Type = A
Movetype = A
Physics = N
anim = 1530
velset = 0,0
ctrl = 0

[State 1613, 1]
type = veladd
trigger1 = time < 2
y = 0.304

[State 1613, 2]
type = velSet
trigger1 = time = 2 
y = 0

[State 1613, 3]
type = PlaySnd
trigger1 = animelem = 7, = 1
value = 1400, 2 

[State 1613, 4]
type = Explod
trigger1 = animelem = 7, = 1
anim = 6220
pos = 49,1
bindtime = -1
sprpriority = 2
removeongethit = 1
ignorehitpause = 1
ownpal = 1
persistent = 0

[State 0, ]
type = Pause
trigger1 = MoveHit
time = 3
movetime = 0 
ignorehitpause = 1
persistent = 0

[State 1613, 5]
type = HitDef
trigger1 = AnimElem = 7
trigger2 = AnimElem = 8
trigger3 = AnimElem = 9
attr = A, SA
damage = 40, 10
hitflag = MAF
guardflag = M
animtype = Hard
priority = 7,miss
ground.type = low
pausetime = 1,2
sparkno = 12;cuthard
guard.sparkno = 50;hard
sparkxy = 20,(floor(p2dist y))-60
hitsound = S0,8
guardsound = S1,1
ground.velocity = -3.7,-9
ground.cornerpush.veloff = 0
air.velocity = -3.7,-9
air.cornerpush.veloff = 0
fall = 1
fall.recovertime = 58
guard.velocity = -12
Guard.cornerpush.veloff = -12
airguard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 46
givepower = 12,12
p2stateno = 1570
fall.yvelocity = -3.4
guard.pausetime = 1,0
guard.slidetime = 22
guard.hittime = 44
guard.ctrltime = 44
yaccel = .45
persistent = 0

[State 1613, 6]
type = velSet
trigger1 = animelem = 11 , = 1 
y = -4
x = -2

[State 1613, 7]
type = veladd
trigger1 = animelem = 11 , > 3 
y = 0.36

[State 1613, 8]
type = PosAdd
trigger1 = animelem = 14, = 3
x = -2

[State 1613, 9]
type = PosAdd
trigger1 = animelem = 15
trigger2 = animelem = 16
x = 10

[State 1613, 10]
type = HitBy
trigger1 = animelem = 7, >= 0 || animelem = 8, >= 0 || animelem = 9, >= 0
trigger1 = animelem = 10, < 0
value = SCA, NT, ST, HT

[State 1401, varset]
type = VarSet
trigger1 = MoveHit
var(18) = 1 
ignorehitpause = 1

[State 1613, 11]
type = changestate
trigger1 = vel Y > 0
trigger1 = pos Y >= 0
value = 1555

;Dark Genocide Cutter hard - Land
[Statedef 1555]
Type = A
Movetype = A
Physics = N
anim = 1540
velset = 0,0
ctrl = 0

[State 1614, 1]
type = PlaySnd
trigger1 = time = 0
value = 52, 0

[State 1614, 2]
type = PosSet
trigger1 = time = 0 
y = 0

[State 1614, 3]
type = changestate
trigger1 = animtime = 0
value = 0
Ctrl = 1

;Hitted By GC new
[Statedef 1570]
type    = A
movetype= H
physics = N
sprpriority = 0
velset = 0,0
ctrl = 0

[State 5030, 1]
type = VelAdd;Gravity
trigger1 = hitshakeover
y = GetHitVar(yaccel)

[State 5030, 2]
type = HitVelSet
trigger1 = hitshakeover
x = 1
y = 1
persistent = 0

[State 1105, 4]
type = ChangeAnim
Trigger1 = hitshakeover = 0
value = 5030

[State 1106, 5]
type = Changeanim
triggerall = selfanimexist(5052) = 1 
trigger1 = hitshakeover
value = 5052
persistent = 0

[State 1106, 6]
type = Changeanim
triggerall = selfanimexist(5052) = 0 
trigger1 = anim = 5030
trigger1 = animtime = 0
value = 5050

[State 1106, 7]
type = Changeanim 
trigger1 = anim = 5052
trigger1 = vel Y >= 1
value = 5050

[State 1106, 8]
type = Changeanim
trigger1 = Vel Y >= 4
trigger1 = selfanimexist(5060)
value = 5060
persistent = 0

[State 1105, 9]
type = SelfState
trigger1 = vel y > 0
trigger1 = pos y >= 10
value = 5100

;Gravity Smash Light
[Statedef 1600]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
velset   = 0,0
anim     = 1500
ctrl     = 0
sprpriority = 2

[State 1500, lp]
type = Varset
trigger1 = time = 0
var(0) = 0

[State 1500, lp]
type = Varset
trigger1 = time = 0
trigger1 = command = "x"
var(0) = 0

[State 1500, 2]
type = PlaySnd
trigger1 = time = 9
value = 1500,2
channel = 5

[State 1500, 3]
type = PlaySnd
trigger1 = time = 1
value = 1500,0
channel = 0

[State 1500, 1]
type = Helper
trigger1 = time = 8
helpertype = normal
name = "elec"
ID = 6400
pos = 0,-80
postype = p1
facing = 1
stateno = 1602
keyctrl = 0
ownpal = 1

[State 1500, 4]
type = PosAdd
trigger1 = anim = 1500 && animelem = 3
x = -7

[State 1500, 5]
type = PosAdd
trigger1 = anim = 1500 && animelem = 4
x = -4

[State 1500, 5]
type = PosAdd
trigger1 = anim = 1500 && animelem = 5
x = -8

[State 1500, 6]
type = ChangeAnim
trigger1 = anim = 1500 && animtime = 0
value = 1501

[State 1500, 7]
type = null;ChangeState
triggerall = time >= 29
trigger1 = time = 119
trigger2 = !var(58)
trigger2 = command != "holdx"
trigger3 = var(58)
trigger3 = enemynear,statetype != L
trigger3 = enemynear,movetype = A || enemynear,numproj > 0
trigger4 = var(58)
trigger4 = enemynear,statetype != L
trigger4 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger4 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger5 = var(58)
trigger5 = enemynear,stateno = 5120
trigger5 = enemynear,animtime = -5
value = 1601

[State 1500, 7]
type = ChangeState
triggerall = time >= 29
trigger1 = time = 119
trigger2 = !var(58)
trigger2 = command != "holdx"
trigger3 = var(58)
trigger3 = enemynear,movetype != I
value = 1601

;---------------------------------------------------------------------------
; 弱グラビティス?ッシュ発射

[Statedef 1601]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
velset   = 0,0
anim     = 1502
ctrl     = 0
sprpriority = 2

[State 1501, 1]
type = PlaySnd
trigger1 = time = 1
value = 1500,1
channel = 0

[State 1501, 3]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1000, ステ?ト変更]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; 強グラビティス?ッシュ
; CNS レベル: 中級

[Statedef 1610]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
velset   = 0,0
anim     = 1500
ctrl     = 0
sprpriority = 2

[State 1500, hp]
type = Varset
trigger1 = time = 0
var(0) = 0

[State 1500, lp]
type = Varset
trigger1 = time = 0
trigger1 = command = "y"
var(0) = 1

[State 1500, 2]
type = PlaySnd
trigger1 = time = 9
value = 1500,2
channel = 5

[State 1500, 3]
type = PlaySnd
trigger1 = time = 1
value = 1500,0
channel = 0

[State 1500, 1]
type = Helper
trigger1 = time = 8
helpertype = normal
name = "elec"
ID = 6400
pos = 0,-80
postype = p1
facing = 1
stateno = 1602
keyctrl = 0
ownpal = 1

[State 1500, 4]
type = PosAdd
trigger1 = anim = 1500 && animelem = 3
x = -7

[State 1500, 5]
type = PosAdd
trigger1 = anim = 1500 && animelem = 4
x = -4

[State 1500, 5]
type = PosAdd
trigger1 = anim = 1500 && animelem = 5
x = -8

[State 1500, 6]
type = ChangeAnim
trigger1 = anim = 1500 && animtime = 0
value = 1501

[State 1510, 7]
type = null;ChangeState
triggerall = time >= 29
trigger1 = time = 119
trigger2 = !var(58)
trigger2 = command != "holdy"
trigger3 = var(58)
trigger3 = enemynear,statetype != L
trigger3 = enemynear,movetype = A || enemynear,numproj > 0
trigger4 = var(58)
trigger4 = enemynear,statetype != L
trigger4 = p2bodydist x = [0+floor(5*(enemynear,vel x)),90+floor(5*(enemynear,vel x))]
trigger4 = p2bodydist y = [-70-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20)),0-floor(5*(enemynear,vel y)+(5*(5+1)/2)*fvar(20))]
trigger5 = var(58)
trigger5 = enemynear,stateno = 5120
trigger5 = enemynear,animtime = -5
value = 1611

[State 1500, 7]
type = ChangeState
triggerall = time >= 29
trigger1 = time = 119
trigger2 = !var(58)
trigger2 = command != "holdy"
trigger3 = var(58)
trigger3 = enemynear,movetype != I
value = 1611

;---------------------------------------------------------------------------
; 強グラビティス?ッシュ発射

[Statedef 1611]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
velset   = 0,0
anim     = 1502
ctrl     = 0
sprpriority = 2

[State 1501, 1]
type = PlaySnd
trigger1 = time = 1
value = 1500,1
channel = 0

[State 1501, 3]
type = PosAdd
trigger1 = animelem = 2
x = 8

[State 1000, ステ?ト変更]
type = ChangeState
trigger1 = Animtime = 0
value = 0
ctrl = 1

;Air Gravity Smash
[Statedef 1650]
Type = A
Movetype = A
Physics = N
anim = 1550
poweradd = 125
juggle = 8
velset = 0,0
ctrl = 0

[State 1500, lp]
type = Varset
trigger1 = time = 0
var(0) = 0

[State 1500, lp]
type = Varset
trigger1 = time = 0
trigger1 = command = "x"
var(0) = 0

[State 1500, lp]
type = Varset
trigger1 = time = 0
trigger1 = command = "y"
var(0) = 1

[State 1550, 1]
type = Helper
trigger1 = time = 0
helpertype = normal
name = "elec"
ID = 6450
pos = -8,-96
postype = p1
facing = 1
stateno = 1602
keyctrl = 0
ownpal = 1

[State 1550, 2]
type = PlaySnd
trigger1 = time = 1
value = 1500,2
channel = 5

[State 1550, 3]
type = PlaySnd
trigger1 = time = 1
value = 1500,0
channel = 0

[State 1550, 4]
type = ChangeAnim
trigger1 = anim = 1550 && animtime = 0
value = 1551

[State 1550, 5]
type = ChangeState
trigger1 = time = 101
trigger2 = !var(58)
trigger2 = time >= 19
trigger2 = command != "holdx"
trigger2 = command != "holdy"
trigger3 = var(58)
trigger3 = time >= 19
trigger3 = !(EnemyNear(var(59)),StateType = L)
value = 1651

;Air Gravity Smash Light - Shoot
[Statedef 1651]
Type = A
Movetype = A
Physics = N
anim = 1552
velset = 0,0
ctrl = 0

[State 1551, 1]
type = PlaySnd
trigger1 = time = 1
value = 1500,1
channel = 0

[State 1551, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1652

;Air Gravity Smash Light - Fall
[Statedef 1652]
Type = A
Movetype = A
Physics = A
anim = 1553
ctrl = 0

[state 1552, 1]
type = null
trigger1 = 1

;---------------------------------------------------------------------------
;グラビティス?ッシュ?ヘルパ?

[Statedef 1602]
type     = A
movetype = A
physics  = N
juggle   = 8
ctrl     = 0
anim     = 6400
sprpriority = 5
velset   = 0,0

[State 0, ]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause = 1

[State 4000, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 1603
time = -1

[State 1502, 5]
type = Changeanim 
trigger1 = anim = 6400 && animtime = 0
value = 6401

[State 1001, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201, キャラ?体に引っ付く位置]
type = BindToParent
trigger1 = Parent,Statetype = S
pos = 0,-80
ignorehitpause = 1

[State 1201, キャラ?体に引っ付く位置]
type = BindToParent
trigger1 = Parent,Statetype = A
pos = -8,-96
ignorehitpause = 1

[State 200, ヒット定?]
type = HitDef
triggerall = (enemy,stateno!=[5020,5050])&&(!(enemy,gethitvar(fall)))
trigger1 = Parent,Var(36) = 0
attr = A, SA
priority = 7, Hit
damage = 136,13
hitflag = MAFP
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 2,13
sparkno = S8009
guard.sparkno = 50
sparkxy = 5,-5
hitsound = S0,9
guardsound = S1,0
ground.velocity = -4.5,-7
ground.cornerpush.veloff = 0
air.velocity = -4.5,-7
air.cornerpush.veloff = 0
air.juggle = 8
fall = 1
fall.recovertime = 35
guard.velocity = -12
Guard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 109,109
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 2,11
guard.ctrltime = 44
yaccel = .55
p2getp1state = 1
p2stateno = 1620

[State 1500, ]
type = ParentVarSet
trigger1 = MoveGuarded
var(36) = 16
ignorehitpause = 1
persistent = 1

[State 1500, ]
type = ParentVarSet
trigger1 = MoveHit
var(37) = 1
ignorehitpause = 1
persistent = 1

[State 1502, 6]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1
persistent = 1

[State 1502, 6]
type = Changestate 
trigger1 = parent,stateno = 1601 || parent,stateno = 1611 || parent,stateno = 1651
trigger1 = parent,time >= 3  
value = 1503
persistent = 0
ignorehitpause = 1

[State 1502, 6]
type = Changestate 
trigger1 = Anim = 6401  
value = 1603
persistent = 0
ignorehitpause = 1

[State 1001, ]
type = DestroySelf
trigger1 = Root,MoveType = H

;Gravity Smash - Elec 2
[Statedef 1603]
Type = S
Movetype = A
Physics = N
sprpriority = 5
velset = 0,0
juggle = 8
ctrl = 0

[State 0, ]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause = 1

[State 1503, 1]
type = Changeanim 
trigger1 = time = 1
value = 6401

[State 4000, Override]
type = HitOverride
trigger1 = Time = 0
attr = SCA, AA, AP, AT
slot = 0
stateno = 1603
time = -1

[State 1001, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 0, ]
type = PlayerPush
trigger1 = time >= 0
value = 0

[State 1201, キャラ?体に引っ付く位置]
type = BindToParent
trigger1 = Parent,Statetype = S
pos = 0,-80
ignorehitpause = 1

[State 1201, キャラ?体に引っ付く位置]
type = BindToParent
trigger1 = Parent,Statetype = A
pos = -8,-96
ignorehitpause = 1

[State 200, ヒット定?]
type = HitDef
triggerall = (enemy,stateno!=[5020,5050])&&(!(enemy,gethitvar(fall)))
trigger1 = Parent,Var(36) = 0
trigger1 = parent,var(37) = 0
attr = A, SA
priority = 7, Hit
damage = 136,13
hitflag = MAFP
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 2,13
sparkno = S8009
guard.sparkno = 50
sparkxy = 5,-5
hitsound = S0,9
guardsound = S1,0
ground.velocity = -4.5,-7
ground.cornerpush.veloff = 0
air.velocity = -4.5,-7
air.cornerpush.veloff = 0
air.juggle = 8
fall = 1
fall.recovertime = 35
guard.velocity = -12
Guard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 109,109
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 2,11
guard.ctrltime = 44
yaccel = .55
p2getp1state = 1
p2stateno = 1620

[State 0, ]
type = ParentVarSet
trigger1 = MoveHit
var(40) = 1
ignorehitpause = 1
persistent = 1

[State 1500, ]
type = ParentVarSet
trigger1 = MoveGuarded
var(36) = 16
ignorehitpause = 1
persistent = 1

[State 1500, ]
type = ParentVarSet
trigger1 = MoveHit
var(37) = 1
ignorehitpause = 1
persistent = 1

[State 1502, 6]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1
persistent = 1

[State 1500,]
type = ChangeState
trigger1 = Parent,stateno != 1600
trigger1 = Parent,Stateno != 1610
trigger1 = Parent,stateno != 1650
value = 1604

[State 1001, ]
type = DestroySelf
trigger1 = Root,MoveType = H

;Gravity Smash - Elec 3
[Statedef 1604]
Type = S
Movetype = A
Physics = N
sprpriority = 5
velset = 0,0
juggle = 8
ctrl = 0

[State 0, ]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause = 1

[State 1500,]
type = ChangeAnim
trigger1 = time = 0
value = 6402

[State 1504, 1]
type = velset
trigger1 = Parent,Statetype = S
trigger1 = time >= 0
trigger1 = !MoveContact
trigger1 = anim = 6402
x = 4
ignorehitpause = 1

[State 1555, 1]
type = velset
trigger1 = Parent,Statetype = A
trigger1 = time >= 1
trigger1 = !MoveContact
trigger1 = anim = 6402
x = 5.85
y = 3.9
ignorehitpause = 1

[State 200, ヒット定?]
type = HitDef
triggerall = (enemy,stateno!=[5020,5050])&&(!(enemy,gethitvar(fall)))
trigger1 = Parent,Var(36) = 0
trigger1 = parent,var(37) = 0
attr = A, SA
priority = 7, Hit
damage = 136,13
hitflag = MAFP
guardflag = MA
animtype = Hard
ground.type = low
pausetime = 2,13
sparkno = S8009
guard.sparkno = 50
sparkxy = 5,-5
hitsound = S0,9
guardsound = S1,0
ground.velocity = -4.5,-7
ground.cornerpush.veloff = 0
air.velocity = -4.5,-7
air.cornerpush.veloff = 0
air.juggle = 8
fall = 1
fall.recovertime = 35
guard.velocity = -12
Guard.cornerpush.veloff = 0
guard.slidetime = 17
guard.hittime = 17
getpower = 109,109
givepower = 10,10
fall.yvelocity = -3.4
guard.pausetime = 2,11
guard.ctrltime = 44
yaccel = .55
p2getp1state = 1
p2stateno = 1620

[State 0, ]
type = ParentVarSet
trigger1 = MoveHit
var(40) = 1
ignorehitpause = 1
persistent = 1

[State 1500, ]
type = ParentVarSet
trigger1 = MoveGuarded
var(36) = 16
ignorehitpause = 1
persistent = 1

[State 1500, ]
type = ParentVarSet
trigger1 = MoveHit
var(37) = 1
ignorehitpause = 1
persistent = 1

[State 1502, 6]
type = MoveHitReset
trigger1 = MoveContact
ignorehitpause = 1
persistent = 1

[State 1001, ]
type = ChangeState
trigger1 = Animtime = 0
value = 1605

[State 1001, ]
type = DestroySelf
trigger1 = Root,MoveType = H

;Gravity Smash - Elec 3
[Statedef 1605]
Type = S
Movetype = A
Physics = N
sprpriority = 5
velset = 0,0
juggle = 8
ctrl = 0

[State 0, ]
type = SprPriority
trigger1 = 1
value = 7
ignorehitpause = 1

[State 1504, 4]
type = playSnd
trigger1 = time = 0
value = 1500,3

[State 1504, 5]
type = Projectile
trigger1 = Parent,StateType = S
trigger1 = time = 0
attr = S, SP
projID = 6410
projanim = 6410
projhitanim = 6411
projpriority = 25
offset = 0,0
velocity = ifelse((Parent,Var(0)=0),4,7)
ownpal = 1
damage = 136,13
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 2,13
guard.pausetime = 2,11
sparkno = S8009
guard.sparkno = 50
sparkxy = 10,-1
hitsound = S0,9
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -4.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -4.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 14
getpower = 109,109
givepower = 10,10
p2getp1state = 1
p2stateno = 1620

[State 1565, 5]
type = Projectile
trigger1 = Parent,Statetype = A
trigger1 = time = 0
attr = A, SP
projID = 6410
projanim = 6410
projhitanim = 6411
projpriority = 25
offset = 0,0
velocity = ifelse((Parent,var(0)=0),(5.85),(5)),ifelse((Parent,var(0)=0),(3.9),(5))
projheightbound = 240,0
ownpal = 1
damage = 136,13
animtype = Hard
hitflag = MAP
guardflag = M
pausetime = 2,13
guard.pausetime = 2,11
sparkno = S8009
guard.sparkno = 50
sparkxy = 10,-1
hitsound = S0,9
guardsound = S1,1
ground.type = Low
ground.slidetime = 17
ground.hittime  = 17
air.hittime = 100
ground.velocity = -4.5,-7
air.animtype = Back
fall = 1
fall.recovertime = 40
air.velocity = -4.5,-7
down.hittime = 12
down.velocity = -6,0
down.hittime = 17
guard.ctrltime = 17
yaccel = .50
air.juggle = 14
getpower = 109,109
givepower = 10,10
p2getp1state = 1
p2stateno = 1620

[State 1001, ]
type = DestroySelf
trigger1 = Root,MoveType = H
trigger2 = Animtime = 0

; HITA_SHAKE
[Statedef 1620]
type    = A
movetype= H
physics = N
velset = 0,0

[State 1520, 1]
type = PalFX
trigger1 = Time % 2 = 0
time = 1
add = 0,15,75
color = 0
invertall = 1

[State 1520, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
value = 5030

[State 1520, 3] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 1520, ]
type = NotHitBy
trigger1 = enemy, name = "Rugal Bernstein"
trigger1 = enemy, authorname = "Cyber Joker"
trigger1 = enemy, var(21) = 0
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1520, 4]
type = ChangeState
trigger1 = HitShakeOver
value = 1630
ctrl = 0

; HITA_UP (initial going up)
[Statedef 1630]
type    = A
movetype= H
physics = N
ctrl = 0

[State 1520, ]
type = NotHitBy
trigger1 = enemy, name = "Rugal Bernstein"
trigger1 = enemy, authorname = "Cyber Joker"
trigger1 = enemy, var(21) = 0
value = SCA, AA, AP, AT
ignorehitpause = 1

[State 1530, 1]
type = PalFX
trigger1 = Time % 2 = 0
time = 1
add = 0,15,75
color = 0
invertall = 1

[State 1530, 2]
type = VelAdd;Gravity
trigger1 = 1
y = GetHitVar(yaccel)

[State 1530, 3]
type = HitVelSet
trigger1 = Time = 0
x = 1
y = 1

[State 1530, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver
trigger2 = Vel Y > 0    ;Hit ground
trigger2 = Pos Y >= 10  ;.
value = 1635 ;HITA_FALL

[State 1530, 5]
type = ChangeState
trigger1 = AnimTime = 0
value = 1635 ;HITA_UP (transition)

; HITA_UP_T (transition)
[Statedef 1635]
type    = A
movetype= H
physics = N

[State 1535, 1]
type = PalFX
trigger1 = Time % 2 = 0
time = 1
add = 0,15,75
color = 0
invertall = 1

[State 1535, 2]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = SelfAnimExist(5035)
trigger1 = Anim != [5051,5059] ;Not if in hit up anim
trigger1 = Anim != 5090 ;Not if hit off ground anim
value = 5035

[State 1535, 3]
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1535, 4]
type = ChangeState
triggerall = HitFall
trigger1 = HitOver  ;Hit is over
trigger2 = AnimTime = 0 ;Anim is over
trigger3 = Vel Y > 0    ;Hit ground
trigger3 = Pos Y >= 10  ;.
trigger4 = Time = 0     ;No transition anim
trigger4 = Anim != 5035 ;.
value = 1640 ;HITA_FALL

; HITA_FALL (knocked up, falling)
[Statedef 1640]
type    = A
movetype= H
physics = N

[State 1540, 1]
type = PalFX
trigger1 = Time % 2 = 0
time = 1
add = 0,15,75
color = 0
invertall = 1

[State 1540, 2] ;Change anim when done with transition
type = ChangeAnim
trigger1 = AnimTime = 0
trigger1 = Anim = 5035
trigger2 = Time = 0     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 1540, 3] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, 1, -2)
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 1540, 4] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 1540, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, 25)
value = 1645 ;HIT_BOUNCE

; HIT_BOUNCE (hit ground)
[Statedef 1645]
type    = L
movetype= H
physics = N

[State 1545, 1]
type = VelSet
trigger1 = Time = 0
trigger1 = GetHitVar(fall.yvel) = 0
trigger1 = vel x > 1
x = 1

[State 1545, 2]
type = FallEnvShake
trigger1 = Time = 0

[State 1545, 3] ;Save fall velocity
type = VarSet
trigger1 = Time = 0
;trigger1 = GetHitVar(fall.yvel) = 0
sysvar(1) = floor(vel y)

[State 1545, 4] ;Hit ground anim (normal)
type = ChangeAnim
trigger1 = time = 0
value = 5100

[State 1545, 5]
type = PosSet
trigger1 = Time = 0
y = 0

[State 1545, 6]
type = VelSet
trigger1 = Time = 0
y = 0

[State 1545, 7] ;Reduce speed
type = VelMul
trigger1 = Time = 0
x = 0.75

[State 1545, 8]
type = HitFallDamage
trigger1 = Time = 3

[State 5000, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,ifelse(Stagevar(Info.name)!="Boss",1,7)
volumescale = 50

[State 1545, 9]
type = null;PlaySnd
trigger1 = Time = 1
;value = F7, 0 ;Hit ground
value = F7, (sysvar(1) > 5) + (sysvar(1) > 14)

[State 1545, 10]
type = PosFreeze
trigger1 = 1

[State 1545, 11]
type = SelfState
trigger1 = AnimTime = 0
trigger2 = time = 5
value = 5101

;Vanishing Rush light
[Statedef 1700]
Type = S
Movetype = A
Physics = S
anim = 1700
poweradd = 125
juggle = 8
velset = 0,0
ctrl = 0

[State 1700, 2]
type = PlaySnd
trigger1 = MoveContact
value = 1700, 0
channel = 0
persistent = 0

[State 1700, 3]
type = PlaySnd
trigger1 = time  = 1
value = 1700, 1
channel = 6

[State 1700, 4]
type = StopSnd
trigger1 = animelem = 11, = 10
channel = 6

[State 1700, 5]
type = PlaySnd
trigger1 = animelem = 7, = 2
value = 1700, 2

[State 1700, 6]
type = Explod
trigger1 = animelem = 7, = 2
anim = 1701
id = 1701
pos = 0,0
bindtime = 1
sprpriority = 2
removeongethit = 1
ignorehitpause = 0

[State 1700, 7]
type = PlayerPush
trigger1 = animelem = 8, >= 0 && animelem = 9, < 0
value = 0

[State 1700, 8]
type = HitDef
trigger1 = AnimElem = 8
attr = S, SA
damage = 20,3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = 50
sparkxy = -20, -60
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = 0
air.type = High
air.velocity = 0,-4
airguard.velocity = 0,-4
air.hittime = 12
yaccel = .48
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1700, 10]
type = Helper
trigger1 = MoveContact
helpertype = normal
name = "vrlhit"
ID = 1700
pos = 0,0
postype = p2
facing = 1
stateno = 1701
persistent = 0
ignorehitpause = 1
ownpal = 1

[State 1700, 11]
type = velset
trigger1 = animelem = 8, >= 0 && animelem = 9, <= 0
x = 15

[State 1700, 12]
type = velset
trigger1 = animelem = 9
x = 0

[State 1700, 13]
type = changestate
trigger1 = animtime = 0
value = 0
Ctrl = 1

;Vanishing Rush hard
[Statedef 1710]
Type = S
Movetype = A
Physics = S
anim = 1710
poweradd = 125
juggle = 8
velset = 0,0
ctrl = 0

[State 1710, 2]
type = PlaySnd
trigger1 = MoveContact
value = 1700, 0
channel = 0
persistent = 0

[State 1710, 3]
type = PlaySnd
trigger1 = time  = 1
value = 1700, 1
channel = 6

[State 1710, 4]
type = StopSnd
trigger1 = animelem = 15
channel = 6

[State 1710, 5]
type = PlaySnd
trigger1 = animelem = 13, = 2
value = 1700, 2

[State 1710, 6]
type = Explod
trigger1 = animelem = 13, = 2
anim = 1701
id = 1701
pos = 0,0
bindtime = 1
sprpriority = 2
removeongethit = 1
ignorehitpause = 0

[State 1710, 7]
type = PlayerPush
trigger1 = animelem = 14, >= 0 && animelem = 15, < 0
value = 0

[State 1710, 8]
type = HitDef
trigger1 = AnimElem = 14
attr = S, SA
damage = 20,3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 2
guard.sparkno = 50
sparkxy = -20, -60
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = 0
air.type = High
air.velocity = 0,-5
airguard.velocity = 0,-5
air.hittime = 12
yaccel = .48
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1710, 10]
type = Helper
trigger1 = MoveContact
helpertype = normal
name = "vrhhit"
ID = 1700
pos = 0,0
postype = p2
facing = 1
stateno = 1702
persistent = 0
ignorehitpause = 1
ownpal = 1

[State 1710, 11]
type = velset
trigger1 = animelem = 14, >= 0 && animelem = 15, <= 0
x = 15

[State 1710, 12]
type = velset
trigger1 = animelem = 15
x = 0

[State 1710, 13]
type = changestate
trigger1 = animtime = 0
value = 0
Ctrl = 1

;Vanishing Rush Light Helper
[Statedef 1701]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
anim     = 1720
ctrl     = 0

[State 1000,]
type = TargetFacing
trigger1 = time = 0;numtarget > 0
value = -1

[State 1001, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1000, ]
type = Posset
trigger1 = 1
y = 0

[State 180,]
type = VarRandom
trigger1 = 1
v = 21
range = -30,5

[State 180,]
type = VarRandom
trigger1 = 1
v = 23
range = -30,-100

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, SA
damage = 20,3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = 50
sparkxy = (var(21)),(var(23)) + (floor(p2bodydist Y))
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
getpower = 47,47
givepower = 16,16
air.type = High
air.velocity = 0,-5
airguard.velocity = 0,-5
air.hittime = 12
yaccel = .48
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 10,1
animtype = up
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 10
sparkno = 3
guard.sparkno = 50
sparkxy = (var(21)),(var(23)) + (floor(p2bodydist Y))
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = 1,15
guard.velocity = 8
getpower = 47,47
givepower = 16,16
air.type = High
air.velocity = 1,15
airguard.velocity = 1,15
air.hittime = 12
yaccel = .48
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
fall.envshake.ampl = 5
fall.envshake.freq = 90
fall.envshake.time = 10

[State 1001, ]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;Vanishing Rush Hard Helper
[Statedef 1702]
type     = S
movetype = A
physics  = S
juggle   = 8
poweradd = 0
anim     = 1720
ctrl     = 0

[State 1000,]
type = TargetFacing
trigger1 = time = 0;numtarget > 0
value = -1

[State 1001, 特殊効果]
type = AssertSpecial
trigger1 = 1
flag = NoShadow ;影を消す

[State 170, 無敵]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1000, ]
type = Posset
trigger1 = 1
y = 0

[State 180,]
type = VarRandom
trigger1 = 1
v = 21
range = -30,5

[State 180,]
type = VarRandom
trigger1 = 1
v = 23
range = -30,-100

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 2
trigger2 = AnimElem = 3
trigger3 = AnimElem = 4
trigger4 = AnimElem = 5
attr = S, SA
damage = 20,3
animtype = Hard
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 8
sparkno = 3
guard.sparkno = 50
sparkxy = (var(21)),(var(23)) + (floor(p2bodydist Y))
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 20
ground.hittime  = 20
ground.velocity = 0
getpower = 47,47
givepower = 16,16
air.type = High
air.velocity = 0,-5
airguard.velocity = 0,-5
air.hittime = 12
yaccel = .48
air.fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 200, ヒット定?]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
damage = 10,1
animtype = Diagup
guardflag = MA
hitflag = MAF
priority = 3, Hit
pausetime = 0, 10
sparkno = 3
guard.sparkno = 50
sparkxy = (var(21)),(var(23)) + (floor(p2bodydist Y))
hitsound = s0,2
guardsound = s1,1
ground.type = High
ground.slidetime = 21
ground.hittime  = 21
ground.velocity = 2,-10
guard.velocity = 8
getpower = 47,47
givepower = 16,16
air.type = High
air.velocity = 2,-12
airguard.velocity = 2,-12
air.hittime = 12
yaccel = .45
fall = 1
fall.recover = 0
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0

[State 1001, ]
type = DestroySelf
trigger1 = AnimTime = 0
trigger2 = Root,MoveType = H

;B. destruction light
[Statedef 1800]
Type = S
Movetype = A
Physics = S
anim = 1804
poweradd = 91
velset = 0,0
juggle = 8
ctrl = 0

[State 1800, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 200,0

[State 1800, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1801

;B. destruction light - Going fwd
[Statedef 1801]
Type = S
Movetype = A
Physics = N
anim = 1801
juggle = 8
velset = 0,0
ctrl = 0

[State 1801, 1]
type = HitBy
trigger1 = Time <= 4
value = SCA, NT, ST, HT

[State 1801, 2]
type = Explod
trigger1 = time = 0
anim = 6230
pos = -22,0
sprpriority = 2
ownpal = 1

[State 1801, 3]
type = PlaySnd
trigger1 = time = 0
value = 1400, 2 

[State 1801, 3]
type = PlaySnd
trigger1 = time = 0
value = 2,0 

[State 1801, 4]
type = VelSet
trigger1 = time = 0
x = 15

[State 1801, 5]
type = VelAdd
trigger1 = time = [2,5]
x = -0.2

[State 1801, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype = hard
damage = 33,2
guardflag = MA
hitflag = MAF
pausetime = 1,2
sparkno = 3;hard
guard.sparkno = 50;hard
sparkxy = -25,-80
hitsound = S0,4
guardsound = S1,1
ground.type = high
ground.slidetime = 0;15
ground.hittime = 18;25
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 15,15
givepower = 15,15
guard.pausetime = 0,0
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 1801, 7]
type = ChangeState
trigger1 = animtime = 0
value = 1802

;B. destruction light - Stop
[Statedef 1802]
Type = S
Movetype = A
Physics = N
anim = 1802
juggle = 8
ctrl = 0

[State 1802, 2]
type = VelSet
trigger1 = animelem = 2
x = 0

[State 1802, 3]
type = Explod
trigger1 = animelem = 6, = 1
anim = 6232
pos = 13,-16
sprpriority = 0
ownpal = 1

[State 1802, snd]
type = PlaySnd
trigger1 = animelem = 6, = 1
value = 2,0

[State 1802, 4]
type = PlaySnd
trigger1 = animelem = 6, = 1 
value = 1400, 2 

[State 1802, 5]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
damage = 33,2
guardflag = MA
hitflag = MAF
pausetime = 1,2
sparkno = 3;hard
guard.sparkno = 50;hard
sparkxy = -20,-70
hitsound = S0,4
guardsound = S1,1
ground.type = high
ground.slidetime = 0;18
ground.hittime = 18;15
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 15,15
givepower = 15,15
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
yaccel = .55

[State 1802, 6]
type = ChangeState
trigger1 = animelem = 8
value = 1803

;B. destruction light - Stop
[Statedef 1803]
Type = S
Movetype = A
Physics = N
juggle = 7
ctrl = 0

[State 1803, 2]
type = Explod
trigger1 = animelem = 9, = 1
anim = 6231
pos = 58,0
sprpriority = 2
ownpal = 1

[State 1803, 3]
type = PlaySnd
trigger1 = animelem = 9, = 1
value = 1400, 2 

[State 1803, 3]
type = PlaySnd
trigger1 = animelem = 9, = 1
value = 2, 0

[State 1803, 3]
type = PlaySnd
trigger1 = animelem = 9, = 1
value = 200, 1
channel = 0

[State 1803, 4]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype = hard
damage = 33,2
guardflag = MA
hitflag = MAF
pausetime = 12,13;5,7
sparkno = 3;hard
guard.sparkno = 50;hard
sparkxy = -20,-85
hitsound = S0,4
guardsound = S1,1
ground.type = low
ground.slidetime = 0;15
ground.hittime = 18;18
ground.velocity = 0,-9
air.velocity = 0,-9
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 15,15
givepower = 15,15
fall = 1
fall.recovertime = 55
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
air.juggle = 8
yaccel = .45

[State 1803, 5]
type = ChangeState
trigger1 = animtime = 0
value = 0
ctrl = 1

;B. destruction hard
;B. destruction hard
[Statedef 1810]
Type = S
Movetype = A
Physics = N;S
anim = 1800
juggle = 8
poweradd = 91
velset = 0,0
ctrl = 0

[State 1800, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 200,0

[State 1810, 2]
type = ChangeState
trigger1 = animtime = 0
value = 1811

;B. destruction hard - Going fwd
[Statedef 1811]
Type = S
Movetype = A
Physics = N
anim = 1801
ctrl = 0

[State 1811, 1]
type = HitBy
trigger1 = Time <= 4
value = SCA, NT, ST, HT

[State 1811, 2]
type = Explod
trigger1 = time = 0
anim = 6230
pos = -22,0
sprpriority = 2
ownpal = 1

[State 1811, 3]
type = PlaySnd
trigger1 = time = 0
value = 1400, 2 


[State 1811, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 200,0

[State 1811, 3]
type = null;PlaySnd
trigger1 = time = 0
value = 1400, 2 

[State 1811, 4]
type = VelSet
trigger1 = time = 0
x = 15

[State 1811, 5]
type = VelAdd
trigger1 = time = [2,5]
x = -0.2

[State 1811, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 2,3
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = -25,-80
hitsound = S0,4
guardsound = S1,1
ground.type = Low;high
ground.slidetime = 15;0
ground.hittime = 15;18
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 15,15
givepower = 15,15
air.juggle = 15
guard.pausetime = 1,0
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 1811, 7]
type = ChangeState
trigger1 = animtime = 0
value = 1812

;B. destruction hard - Stop
[Statedef 1812]
Type = S
Movetype = A
Physics = N
anim = 1803
juggle = 8
ctrl = 0

[State 1812, 2]
type = VelSet
trigger1 = animelem = 2
x = 0

[State 1812, 3]
type = Explod
trigger1 = animelem = 6
anim = 6232
pos = 13,-16
sprpriority = 0
ownpal = 1

[State 1812, 4]
type = PlaySnd
trigger1 = animelem = 6
value = 1400, 2 

[State 1812, 5]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 2,3
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-85
hitsound = S0,4
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 30,30
givepower = 15,15
air.juggle = 15
guard.pausetime = 1,0
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 1812, 6]
type = ChangeState
trigger1 = animelem = 8
value = 1813

;B. destruction hard - third hit
[Statedef 1813]
Type = S
Movetype = A
Physics = N
ctrl = 0
juggle   = 0

[State 1813, 1]
type = Explod
trigger1 = animelem = 9
anim = 6231
pos = 58,0
sprpriority = 2
ownpal = 1

[State 1813, 2]
type = PlaySnd
trigger1 = animelem = 9
value = 1400, 2 

[State 1813, 3]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 11,12
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-90
hitsound = S0,4
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0,-10
air.velocity = 0,-10
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 30,30
givepower = 15,15
air.juggle = 15
guard.pausetime = 10,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
fall = 1
fall.recovertime = 55
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .45

[State 1813, 4]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 10

[State 1813, 5]
type = ChangeState
trigger1 = animelem = 15
value = 1814
ctrl = 1

;-------------------------------------------------------------------------------
;B. destruction hard - last hit
[Statedef 1814]
Type = S
Movetype = H
Physics = N
ctrl = 0
juggle = 0

[State 1850]
type = NotHitBy
trigger1 = AnimElem = 11, < 0
value = SCA
time = 1


[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 11
x = 15

[State 301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1850, 1]
type = explod
trigger1 = animelem = 21
anim = 6232
pos = 40,0
sprpriority = 2
ownpal = 1

[State 1803, 3]
type = PlaySnd
trigger1 = animelem = 21
value = 1400, 2 


[State 1000, 4]
type = PlaySnd
trigger1 = animelem = 21
value = s2300, 1

[State 1850, 3]
type = HitDef
trigger1 = time = 0
attr = S, SA
hitflag = MAF
guardflag = H
animtype = Hard
air.animtype = Back
ground.type = High
priority = 7,hit
damage = 60, 10
pausetime = 11, 12
guard.pausetime = 11,9
sparkno = 3
guard.sparkno = 50
sparkxy = -30,-40
hitsound = S0,4
guardsound = S1,1
ground.hittime = 15
ground.slidetime = 15
guard.ctrltime = 15
air.hittime = 60
air.fall = 1
fall.recovertime = 51
ground.velocity = 0,15.35
air.velocity = -4,15.5
yaccel = .55
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2
fall = 1
kill = 1
getpower = 130, 30
givepower = 115,15
p2stateno=13957 

[State 300, 1]
type = BGPalFX
trigger1 = MoveHit
time = 1
add = 255,255,255
persistent = 0
ignorehitpause = 1

[State 300, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[Statedef 13957]
type = A
movetype = H
physics = N

[State 951, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 20

[State 951, 2]
type = ChangeAnim2
Trigger1 = Time >= 0
value = 3957

[State 952, 2]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 952, 3]
type = changestate
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 13958
;-------------------------------------------------------------------------------
[Statedef 13958]
type = A
movetype = H
physics = N

[State 951, 2]
type = ChangeAnim2
Trigger1 = Time = 0
value = 3958

[State 951, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 810,]
type = EnvShake
trigger1 = Time = 0
ampl = 9
freq = 30
time = 30

[State 3250, Explod]
type = Explod
trigger1 = Time = 0
anim = F64
sprpriority = 10
postype = p1
pos = 0,-12
bindtime = 1

[State 3250, PlaySnd]
type = PlaySnd
trigger1 = time = 0
value = f7,5

[State 951, 3]
type = ChangeState
trigger1 = !animtime
value = 13959

;-------------------------------------------------------------------------------
[Statedef 13959]
type = A
movetype = H
physics = N

[State 951, 1]
type = VelSet
trigger1 = Time = 0
x = 0
y = 0
z = 0

[State 951, 2]
type = ChangeAnim2
Trigger1 = Time >= 0
value = 3959

[State 951, 3]
type = ChangeState
trigger1 = HitShakeOver = 1
value = 13960
;-------------------------------------------------------------------------------
[Statedef 13960]
type = A
movetype = H
physics = N
velset = -1,-20

[State 952, 1]
type = VelAdd
trigger1 = Time > 0
y = .8

[State 952, 2]
type = EnvShake
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
time = 20

[State 952, 3]
type = SelfState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= 0
value = 5100
;-------------------------------------------------------------------------------

;B. destruction hard
[Statedef 11810]
Type = S
Movetype = A
Physics = N;S
anim = 1800
juggle = 8
poweradd = 91
velset = 0,0
ctrl = 0

[State 1800, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 200,0

[State 1810, 2]
type = ChangeState
trigger1 = animtime = 0
value = 11811

;B. destruction hard - Going fwd
[Statedef 11811]
Type = S
Movetype = A
Physics = N
anim = 1801
ctrl = 0

[State 1811, 1]
type = HitBy
trigger1 = Time <= 4
value = SCA, NT, ST, HT

[State 1811, 2]
type = Explod
trigger1 = time = 0
anim = 6230
pos = -22,0
sprpriority = 2
ownpal = 1

[State 1811, 3]
type = PlaySnd
trigger1 = time = 0
value = 1400, 2 


[State 1811, snd]
type = PlaySnd
trigger1 = animelem = 5
value = 200,0

[State 1811, 3]
type = null;PlaySnd
trigger1 = time = 0
value = 1400, 2 

[State 1811, 4]
type = VelSet
trigger1 = time = 0
x = 15

[State 1811, 5]
type = VelAdd
trigger1 = time = [2,5]
x = -0.2

[State 1811, 6]
type = HitDef
trigger1 = AnimElem = 1
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 2,3
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = -25,-80
hitsound = S0,4
guardsound = S1,1
ground.type = Low;high
ground.slidetime = 15;0
ground.hittime = 15;18
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 15,15
givepower = 15,15
air.juggle = 15
guard.pausetime = 1,0
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 1811, 7]
type = ChangeState
trigger1 = animtime = 0
value = 11812

;B. destruction hard - Stop
[Statedef 11812]
Type = S
Movetype = A
Physics = N
anim = 11803
juggle = 8
ctrl = 0

[State 1812, 2]
type = VelSet
trigger1 = animelem = 2
x = 0

[State 1812, 3]
type = Explod
trigger1 = animelem = 6
anim = 6232
pos = 13,-16
sprpriority = 0
ownpal = 1

[State 1812, 4]
type = PlaySnd
trigger1 = animelem = 6
value = 1400, 2 

[State 1812, 5]
type = HitDef
trigger1 = AnimElem = 6
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 2,3
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-85
hitsound = S0,4
guardsound = S1,1
ground.type = high
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0
air.velocity = -3.5,-6
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 30,30
givepower = 15,15
air.juggle = 15
guard.pausetime = 1,0
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
air.fall = 1
fall.recovertime = 35
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .55

[State 1812, 6]
type = ChangeState
trigger1 = animelem = 8
value = 11813

;B. destruction hard - third hit
[Statedef 11813]
Type = S
Movetype = A
Physics = N
ctrl = 0
juggle   = 0

[State 1813, 1]
type = Explod
trigger1 = animelem = 9
anim = 6231
pos = 58,0
sprpriority = 2
ownpal = 1

[State 1813, 2]
type = PlaySnd
trigger1 = animelem = 9
value = 1400, 2 

[State 1813, 3]
type = HitDef
trigger1 = AnimElem = 10
attr = S, SA
animtype = hard
damage = 37,10
guardflag = MA
hitflag = MAF
pausetime = 11,12
sparkno = 3;cuthard
guard.sparkno = 50;hard
sparkxy = 0,-90
hitsound = S0,4
guardsound = S1,1
ground.type = low
ground.slidetime = 0
ground.hittime = 18
ground.velocity = 0,-10
air.velocity = 0,-10
airguard.velocity = -4,-6
guard.velocity = 0
getpower = 30,30
givepower = 15,15
air.juggle = 15
guard.pausetime = 10,11
guard.slidetime = 18
guard.hittime = 36
guard.ctrltime = 36
fall = 1
fall.recovertime = 55
fall.yvelocity = -3.4
air.cornerpush.veloff = 0
airguard.cornerpush.veloff = 0
yaccel = .45

[State 1813, 4]
type = PosAdd
trigger1 = animelem = 11
trigger2 = animelem = 12
x = 10

[State 1813, 5]
type = ChangeState
trigger1 = animelem = 15
value = 11814
ctrl = 1

;-------------------------------------------------------------------------------
;B. destruction hard - last hit
[Statedef 11814]
Type = S
Movetype = H
Physics = N
ctrl = 0
juggle = 0

[State 1850]
type = NotHitBy
trigger1 = AnimElem = 11, < 0
value = SCA
time = 1


[State 1000, PosAdd]
type = PosAdd
trigger1 = animelem = 11
x = 15

[State 301, NotHitBy]
type = NotHitBy
trigger1 = 1
value = SCA

[State 1850, 1]
type = explod
trigger1 = animelem = 21
anim = 6232
pos = 40,0
sprpriority = 2
ownpal = 1

[State 1803, 3]
type = PlaySnd
trigger1 = animelem = 21
value = 1400, 2 


[State 1000, 4]
type = PlaySnd
trigger1 = animelem = 21
value = s2300, 1

[State 1850, 3]
type = HitDef
trigger1 = time = 0
attr = S, SA
hitflag = MAF
guardflag = H
animtype = Hard
air.animtype = Back
ground.type = High
priority = 7,hit
damage = 60, 10
pausetime = 11, 12
guard.pausetime = 11,9
sparkno = 3
guard.sparkno = 50
sparkxy = -30,-40
hitsound = S0,4
guardsound = S1,1
ground.hittime = 15
ground.slidetime = 15
guard.ctrltime = 15
air.hittime = 60
air.fall = 1
fall.recovertime = 51
ground.velocity = 0,15.35
air.velocity = -4,15.5
yaccel = .55
ground.cornerpush.veloff = 0
air.cornerpush.veloff = 0
envshake.time = 20
envshake.freq = 90
envshake.ampl = -3
envshake.phase = -2
fall = 1
kill = 1
getpower = 130, 30
givepower = 115,15
p2stateno=13957 

[State 300, 1]
type = BGPalFX
trigger1 = MoveHit
time = 1
add = 255,255,255
persistent = 0
ignorehitpause = 1

[State 300, 2]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1
;-------------------------------------------------------------------------------

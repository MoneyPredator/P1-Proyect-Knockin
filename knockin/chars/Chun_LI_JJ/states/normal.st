;===========<Stand Light Punch>==========
[Statedef 200]
type=S
movetype=A
physics=S
juggle=6
anim=200
velset=0,0
poweradd=2*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 200, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=5030,1
channel=0

[State 200, snd]
type=playsnd
trigger1= animelem=2
value=200,2
channel=3

[State 200, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= anim=200 && animelem=2
attr=S,NA
damage=20,0
animtype=Light
guardflag = M
hitflag=MAF
priority=4,hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-16,-75
hitsound=s300,2
guardsound=s400,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2.66, -3.66), 0
ground.cornerpush.veloff= ifelse(var(20), -2.33, -4.17)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,26
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 200

[State 200, Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
persistent=0

[State 200, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 200, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

[State 200, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1

;===========<Crouch Light Punch>==========
[Statedef 203]
type=C
movetype=A
physics=C
juggle=6
anim=203
velset=0,0
poweradd=16*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 203, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=5030,1
channel=0

[State 203, snd]
type=playsnd
trigger1= animelem=2
value=200,2
channel=3

[State 203, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=2
attr=C,NA
damage=30,0
animtype=Light
guardflag = M
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-36
hitsound=s300,2
guardsound=s400,0
ground.type= Low
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2.66, -3.64), 0
ground.cornerpush.veloff= ifelse(var(20), -2.66, -4.2)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 203

[State 203, Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
persistent=0

[State 203, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1

[State 203, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

[State 203, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;====================<fadeout move for SLK>================
[Statedef 204]
type=s
movetype=I
physics=s
anim=204
velset=0,0
sprpriority=1
ctrl=0
facep2=1

[State 204, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;===========<Stand Light Kick>==========
[Statedef 205]
type=S
movetype=A
physics=S
juggle=7
anim=205
velset=0,0
poweradd=18*!var(20)
sprpriority=1
ctrl=0
facep2=1



[State 205, snd]
type=playsnd
trigger1= animelem=3 && random<200
value=5030,1
channel=0

[State 205, snd]
type=playsnd
trigger1= animelem=3 || animelem=6 || animelem=9
value=210,2
channel=3

[State 205, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=3 || animelem=9
attr=S,NA
damage=30,0
animtype=Light
guardflag = M
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,6), ifelse(var(20),6,10)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-50
hitsound=s310,2
guardsound=s400,0
ground.type= low
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2.33, -3.21), 0
ground.cornerpush.veloff= ifelse(var(20), -3.33, -4.17)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 205

[State 205, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=6
attr=S,NA
damage=29,0
animtype=Light
guardflag = M
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,6), ifelse(var(20),6,10)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-96
hitsound=s310,2
guardsound=s400,0
ground.type= high
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2.33, -3.21), 0
ground.cornerpush.veloff= ifelse(var(20), -3.33, -4.17)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 205

[State 205, jumpout]
type=changestate
triggerall= !AIlevel && (animelem=5 || animelem=8)
trigger1= command!="holda"
value=204

[State 205, jumpout]
type=changestate
triggerall= AIlevel && (animelem=5 || animelem=8)
trigger1= (p2bodydist x>40) || (!movehit)
value=204

[State 205, Idle]
type=statetypeset
trigger1= animelemtime(10)>=0
movetype=I
persistent=0

[State 205, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 205, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 205, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Stand Light Kick Low>==========
[Statedef 206]
type=S
movetype=A
physics=S
juggle=4
anim=206
velset=0,0
poweradd=18*!var(20)
sprpriority=1
ctrl=0
facep2=1



[State 206, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=5030,1
channel=0

[State 206, snd]
type=playsnd
trigger1= animelem=2
value=210,2
channel=3

[State 206, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=2
attr=S,NA
damage=40,0
animtype=Light
hitflag=MA
guardflag=L
priority=4,Hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-36
hitsound=s310,2
guardsound=s400,0
ground.type= low
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2, -3), 0
ground.cornerpush.veloff= ifelse(var(20), -2, -3)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 206

[State 206, Idle]
type=statetypeset
trigger1= animelemtime(3)>=0
movetype=I
persistent=0

[State 206, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 206, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

[State 206, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1

;===========<Crouch Light Kick>==========
[Statedef 208]
type=C
movetype=A
physics=C
juggle=4
anim=208
velset=0,0
poweradd=18*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 208, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=5030,1
channel=0

[State 208, snd]
type=playsnd
trigger1= animelem=2
value=210,2
channel=3

[State 208, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=2
attr=C,NA
damage=30,0
animtype=Light
hitflag = MAFD
guardflag=L
priority=4,Hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-3
hitsound=s310,2
guardsound=s400,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity= ifelse(var(20), -2.66, -3.46), 0
ground.cornerpush.veloff= ifelse(var(20), -3.11, -5.17)
air.type=Low
air.hittime=16
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 208

[State 208, Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I
persistent=0

[State 208, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1

[State 208, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

[State 208, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1

;===========<Stand Medium Push>==========
[Statedef 210]
type=S
movetype=A
physics=S
juggle=8
anim= ifelse(p2bodydist x <= 30,212,210)
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 210, snd]
type=playsnd
trigger1= animelem=3 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 210, snd]
type=playsnd
trigger1= animelem=3
value=200,2
channel=3

[State 210, Increase attack distance]
type = AttackDist
trigger1= Anim = 210
value = 150

[State 210, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=2 || animelem=3 || animelem=4) && !movecontact && !movereversed
attr=S,NA
damage=60,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s300,1
guardsound=s400,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -4.30, -7.51), 0
ground.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 210

[State 210, Idle]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 210, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 210, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 210, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Stand Medium Push 2>==========
[Statedef 211]
type=S
movetype=A
physics=S
juggle=4
anim=211
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 211, snd]
type=playsnd
trigger1= animelem=5 || animelem=11
value=5030,ifelse(random<300,3,4)
channel=0

[State 211, snd]
type=playsnd
trigger1= animelem=5 || animelem=11
value=200,2
channel=3

[State 211, hit]
type=hitdef
triggerall= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=5 || animelem=11)
attr=S,NA
damage=40,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,3), ifelse(var(20),8,10)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-80
hitsound=s300,3
guardsound=s400,0
ground.type=high
ground.slidetime=14
ground.hittime=14
ground.velocity= ifelse(var(20), -1, -2.0), 0
ground.cornerpush.veloff= ifelse(var(20), -2.11, -3.47)
air.type=Low
air.hittime=14
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 211


[State 211, Idle]
type=statetypeset
trigger1= animelemtime(12)>=0
movetype=I
persistent=0

[State 211, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 211, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(6)>=0
value=1
persistent=0
ignorehitpause=1

[State 211, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Crouch Medium Push>==========
[Statedef 213]
type=C
movetype=A
physics=C
juggle=8
anim=213
velset=0,0
poweradd=20*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 213, snd]
type=playsnd
trigger1= animelem=3 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 213, snd]
type=playsnd
trigger1= animelem=3
value=200,2
channel=3

[State 213, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=3 || animelem=4) && !movecontact && !movereversed
attr=C,NA
damage=60,0
animtype=medium
hitflag=MAF
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-34
hitsound=s300,1
guardsound=s400,0
ground.type=Low
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -3.7, -6.78), 0
ground.cornerpush.veloff= ifelse(var(20), -4.78, -8.47)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 213

[State 213, Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

[State 213, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1

[State 213, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

[State 213, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Stand Medium kick>==========
[Statedef 215]
type=S
movetype=A
physics=S
juggle=8
anim=215
velset=0,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 215, for near attack]
type=changestate
trigger1= P2bodydist x <= 32 && P2StateType != A && !time
trigger1= !NumTarget(217)
value=217

[State 215, snd]
type=playsnd
trigger1= animelem=3 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 215, snd]
type=playsnd
trigger1= animelem=3
value=210,1
channel=3

[State 215, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=3 || animelem=4) && !movecontact && !movereversed
attr=S,NA
damage=70,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-88
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -4.30, -7.68), 0
ground.cornerpush.veloff= ifelse(var(20), -5.78, -10.5)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -6), -7
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-7), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID=215

[State 215, Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 215, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 215, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 215, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Stand Medium kick Roundhorse>==========
[Statedef 216]
type=S
movetype=A
physics=S
juggle=8
anim= 214+!var(20)*2
velset=0,0
poweradd=50*!var(20)
sprpriority=1
ctrl=0
facep2=1


[state 216, width]
type=Width
trigger1=time=[5,20]
player=-20,0

[State 216, posfix 1]
type=posadd
trigger1=animelem=2
x=ifelse(P2Dist y < -60,58,ifelse((p2bodydist x=[0,58]),p2bodydist x+20,58))
persistent=0

[State 216, snd]
type=playsnd
trigger1= animelem=4 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 216, snd]
type=playsnd
trigger1= animelem=4
value=210,1
channel=3

[State 216, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=6
attr=S,NA
damage=80,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,15)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-102
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -4.7, -8), 0
ground.cornerpush.veloff= ifelse(var(20), -5.9, -11)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -8), -7
air.cornerpush.veloff=0
getpower= 350*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-7), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 216

[State 216, Idle]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I
persistent=0


[State 216, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 216, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(7)>=0
value=1
persistent=0
ignorehitpause=1

[State 216, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Stand Medium kick near>==========
[Statedef 217]
type=S
movetype=A
physics=S
juggle=8
anim=217
velset=0,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 217, snd]
type=playsnd
trigger1= animelem=2 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 217, snd]
type=playsnd
trigger1= animelem=3
value=210,1
channel=3

[State 217, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=3
attr=S,NA
damage=70,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),2,12), ifelse(var(20),4,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-88
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -3.88, -6.58), 0
ground.cornerpush.veloff= ifelse(var(20), -4.78, -8.5)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -4), -5
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-4), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID=217

[State 217, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 217, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 217, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1


;===========<Stand SF4 Back Medium kick>==========
[Statedef 229]
type=S
movetype=A
physics=S
juggle=0
anim=229
velset=0,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 229, clear var10]
type = varset
trigger1 = !time
var(10) = 0

[State 229, snd]
type=playsnd
trigger1= animelem=3 && random<800
value=5030,8
channel=0

[State 229, snd]
type=playsnd
trigger1= animelem=3
value=210,1
channel=3

[State 229, hit]
type=hitdef
trigger1= (animelem=4 || animelem=5)
trigger1= !movecontact && !movereversed
attr=S,NA
damage=50,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),14,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-60
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -4.30, -7.68), 0
ground.cornerpush.veloff= ifelse(var(20), -5.78, -10.5)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -6), -7
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-7), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID=229

[State 229, Hit Change into 2nd kick]
type = posadd
triggerall = MoveContact || movereversed
trigger1 = AILevel = 0
trigger1 = command = "a" || command = "b" || command = "c"
trigger1 = var(10) := 3
trigger2 = AILevel >= 1
trigger2 = MoveHit
trigger2 = Random < 700 * (AIlevel ** 2 / 64.0)
trigger2 = var(10) := 3
x = IFElse(P2Bodydist x >= 48,48,P2Bodydist x)

[State 229, Hit Change into 2nd kick]
type = ChangeState
triggerall = MoveContact || movereversed
trigger1 = var(10) = 3
value = 227

[State 229, Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

[State 229, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 229, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(7)>=0
value=1
persistent=0
ignorehitpause=1

[State 229, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1




;===========<Crouch Medium kick>==========
[Statedef 218]
type=C
movetype=A
physics=C
juggle=8
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 218, fast or far]
type = ChangeAnim
trigger1 = !AILevel && !time
value = IFElse(command = "holdback",209,218)

[State 218, fast or far]
type = ChangeAnim
trigger1 = AILevel && !time
value = IFElse((P2Bodydist x < 40 || P2MoveType = A || P2Bodydist x > 80),209,218)

[State 218, snd]
type=playsnd
trigger1 = anim = 209 || anim = 218
trigger1= animelem=4 && random < 200
value=5030,ifelse(random<300,3,4)
channel=0

[State 218, snd]
type=playsnd
trigger1 = anim = 209 || anim = 218
trigger1= animelem=4
value=210,1
channel=3

[State 218, hit]
type=hitdef
trigger1 = anim = 209 || anim = 218
trigger1= (AnimElemNo(0)=4 || AnimElemNo(0)=5) && !movecontact && !movereversed
attr=C,NA
damage=60,0
animtype=medium
hitflag=MAFD
guardflag=L
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-10
hitsound=s310,1
guardsound=s400,0
ground.type=low
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -2.33, -3.44), 0
ground.cornerpush.veloff= ifelse(var(20), -3.33, -4.3)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -5), -7
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 218

[State 218, end]
type=changestate
trigger1 = anim = 209 || anim = 218
trigger1= !animtime
value=11
ctrl=1

[State 218, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(6)>=0
value=1
persistent=0
ignorehitpause=1

[State 218, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Stand Medium kick in counterattack>==========
[Statedef 219]
type=S
movetype=A
physics=S
juggle=8
anim=219
velset=0,0
poweradd=40*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 219, snd]
type=playsnd
trigger1= animelem=5 && random<200
value=5030,ifelse(random<300,3,4)
channel=0

[State 219, snd]
type=playsnd
trigger1= animelem=6
value=210,1
channel=3

[State 219, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=7 || animelem=7 || animelem=8) && !movecontact && !movereversed
attr=S,NA
damage=80,0
animtype=medium
hitflag=MAFD
guardflag = M
priority=5,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-100
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(20), -3.88, -6.58), 0
ground.cornerpush.veloff= ifelse(var(20), -4.78, -8.5)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -2.5, -4), -5
air.cornerpush.veloff=0
getpower= 300*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-4), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 219

[State 219, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 219, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(7)>=0
value=1
persistent=0
ignorehitpause=1

[State 219, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Stand Hard Punch>==========
[Statedef 220]
type=S
movetype=A
physics=S
juggle=8
anim=220
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1


[State 220, for near attack]
type=changestate
trigger1= p2bodydist x <= 30 && !time
value=221

[State 220, Increase attack distance]
type = AttackDist
trigger1= Anim = 220
value = 160

[State 220, snd]
type=playsnd
trigger1= animelem=4 && random<500
value=5030,ifelse(random<500,2,3)
channel=0
persistent=0

[State 220, snd]
type=playsnd
trigger1= animelem=4
value=200,1
channel=3
persistent=0

[State 220, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=5 || animelem=6) && !movecontact && !movereversed
attr=S,NA
damage=100,0
animtype=Hard
guardflag = M
hitflag=MAF
priority=5,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-70
hitsound=s300,0
guardsound=s400,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -5.8, -10.6), 0
ground.cornerpush.veloff= ifelse(var(20), -5, -7)
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -2.5, -7), -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 220

[State 220 Idle]
type=statetypeset
trigger1= animelemtime(9)>=0
movetype=I
persistent=0


[State 220, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 220, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(6)>=0
value=1
persistent=0
ignorehitpause=1

[State 220, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Stand Hard Punch near>==========
[Statedef 221]
type=S
movetype=A
physics=S
juggle=8
anim=221
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1

[state 221, hitbyfor]
type=hitby
trigger1 = Anim = 221
trigger1 = Animelemtime(3)>= 0 && Animelemtime(4) < 0
trigger2= NumHelper(222)
value=SCA,AA
time=1


[state 221, nothitbyfor 750]
type=nothitby
trigger1= prevstateno=750
trigger1= animelemtime(1)>0 && animelemtime(3)<0
value=SCA,AA,AP,AT
time=1

[State 221, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=5030,ifelse(random<500,2,3)
channel=0
persistent=0

[State 221, snd]
type=playsnd
trigger1= animelem=3
value=200,1
channel=3
persistent=0

[State 221, ProjPusher]
type = helper
trigger1 = !NumHelper(222)
trigger1 = anim = 221 && animelemtime(3) = 0
stateno = 222
ID = 222
name = "ProjPusher"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 221, hit]
type=hitdef
triggerall= prevstateno != 750
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=3 || animelem=5) && !movecontact && !movereversed
attr=S,NA
damage=100,8
animtype=Hard
guardflag = M
hitflag=MAF
priority=6,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy= -25,-66
hitsound=s300,0
guardsound=s400,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -4, -8), 0
ground.cornerpush.veloff= ifelse(var(20), -5, -9)
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -2.5, -6), -6
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 221

[State 221, hit for 750]
type=hitdef
triggerall= prevstateno=750
trigger1= (animelem=3 || animelem=5) && !movecontact && !movereversed
attr=S,NA
damage=70,0
animtype=DiagUp
guardflag = M
hitflag=MAF
priority=6,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy= -25,-66
hitsound=s300,0
guardsound=s400,0
ground.type=Low
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -4, -8), -4
ground.cornerpush.veloff= ifelse(var(20), -5, -9)
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -2.5, -6), -6
air.cornerpush.veloff=0
getpower= 0,0
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
fall=1
fall.recover=0
ID = 221

[State 221, Alpha FX]
type = Helper
triggerall = Prevstateno = 750
trigger1 = !NumHelper(751)
trigger1 = MoveHit && NumTarget(221)
trigger1 = Target,StateNo = [5000,5099]
trigger1 = !(Target, HitShakeOver)
trigger1 = var(43) := (Target, ID)
helperType = Normal
stateNo = 751
ID = 751
name = "Alpha FX"
posType = P2
ownPal = 1
ignoreHitPause = 1

[State 221 Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 221, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 221, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>0
value=1
persistent=0
ignorehitpause=1

[State 221, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Crouch Hard Punch>==========
[Statedef 223]
type=C
movetype=A
physics=C
juggle=8
anim=223
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 223, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=5030,ifelse(random<500,2,3)
channel=0
persistent=0

[State 223, snd]
type=playsnd
trigger1= animelem=3
value=200,1
channel=3
persistent=0

[State 223, Increase attack distance]
type = AttackDist
trigger1= Anim = 223
value = 150

[State 223, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=3 || animelem=4) && !movecontact && !movereversed
attr=C,NA
damage=100,0
animtype=Hard
guardflag=L
hitflag=MAFD
priority=4,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-5
hitsound=s300,0
guardsound=s400,0
ground.type=Trip
ground.slidetime=24
ground.hittime=24
ground.velocity=-1.66,-4.85
air.type=Trip
air.velocity=-1.66,-4.85
down.velocity=-4,-6
down.cornerpush.veloff=-16
air.cornerpush.veloff=0
ground.cornerpush.veloff= 0
guard.velocity= ifelse(var(20), -5.11, -9.5)
guard.cornerpush.veloff= ifelse(var(20), -5.7, -11.8)
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=0
yaccel=.6
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 223

[State 223 Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

[State 223, posfix 1]
type=posadd
trigger1=animelem=8
x=ifelse(P2Dist y < -60,56,ifelse((p2bodydist x=[0,56]),p2bodydist x,56))
persistent=0

[State 223, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1

[State 223, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 223, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1




;===========<Stand Hard Kick>==========
[Statedef 225]
type=S
movetype=A
physics=S
juggle=8
anim=225
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 225, for near attack]
type = changestate
trigger1 = p2bodydist x <= 24 && !time
value = 226

[state 225, veladd1]
type=veladd
trigger1= !AIlevel && !time
x= 0 + 1.2 * (command="holdfwd") + 3.8 * (PrevStateNo = 100)
y= const(velocity.jump.y) * const(size.yscale) / 2.0
persistent=0

[state 225, veladdai]
type=veladd
trigger1= AIlevel && !time
x= 1.2 + 3.8 * (PrevStateNo = 100)
y= const(velocity.jump.y) * const(size.yscale) / 2.0
persistent=0

[State 225, StateTypeSet]
type = StateTypeSet
trigger1 = StateType != A
trigger1 = !time && vel y != 0
statetype = A
physics = A
ignorehitpause = 1

[state 225, veladd2]
type=veladd
trigger1= (time=[10,18]) && vel y>0
y=-0.6

[State 225, snd]
type=playsnd
trigger1= animelem=4 && random<500
value=5030,ifelse(random<500,2,3)
channel=0
persistent=0

[State 225, snd]
type=playsnd
trigger1= animelem=4
value=210,0
channel=3
persistent=0

[State 225, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=5
attr=S,NA
damage=100,0
animtype=Hard
guardflag = M
hitflag=MAF
priority=6,Hit
pausetime= 0,0
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -5.4, -9.8), 0
ground.cornerpush.veloff= ifelse(var(20), -5, -10)
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -2.5, -7), -7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 225

[state 225, pause if hit]
type=pause
trigger1= movecontact && animelem=6 && !var(20)
time=12
endcmdbuftime=12
pausebg=0
persistent=0

[State 225, Idle]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I
persistent=0

[State 225, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<Stand Hard kick near>==========
[Statedef 226]
type=S
movetype=A
physics=S
juggle=8
anim=226
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1



[State 226, snd]
type=playsnd
trigger1= animelem=3 && random<500
value=5030,ifelse(random<500,2,3)
channel=0
persistent=0

[State 226, snd]
type=playsnd
trigger1= animelem=3
value=210,0
channel=3
persistent=0

[State 226, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= animelem=3
attr=S,NA
damage=100,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -3.4, -7.6), 0
ground.cornerpush.veloff= ifelse(var(20), -5, -8)
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -2.5, -6), -6
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 226

[State 226 Idle]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

[State 226, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 226, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>=0
value=1
persistent=0
ignorehitpause=1

[State 226, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Stand Hard kick high>==========
[Statedef 227]
type=S
movetype=A
physics=S
juggle=6
anim=227
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1


[state 227, nothitbyfor 750]
type=nothitby
trigger1= prevstateno=750 && animelemtime(1)>=0 && animelemtime(4)<0
value=SCA,AA,AP,AT
time=1

[State 227, posfix 1]
type=posadd
trigger1=animelemtime(4)=0
x = ifelse(P2Dist y < -80,38,ifelse((p2bodydist x=[0,38]),p2bodydist x,38))
persistent=0

[State 227, snd]
type=playsnd
trigger1= animelem=4
value=5030,2
channel=0
persistent=0

[State 227, snd]
type=playsnd
trigger1= animelem=4
value=210,0
channel=3
persistent=0

[State 227, hit]
type=hitdef
trigger1= (p2stateno!=[154,155])
trigger1= (animelem=4||animelem=5) && !movecontact && !movereversed
attr = S,HA
damage = 120 - 70*(PrevStateNo=229),0
animtype = UP
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-110
hitsound=s310,0
guardsound=s400,0
ground.type = high
ground.slidetime=24
ground.hittime=24
ground.velocity= ifelse(var(20), -0.5, -0.7), -9
ground.cornerpush.veloff= ifelse(var(20), 0, -4)
guard.velocity = -5.5
guard.cornerpush.veloff= -12.5
air.type=Low
air.hittime=24
air.velocity= ifelse(var(20), -0.5, -0.7), -9
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20)*!prevstateno=750, 70*!var(20)*!prevstateno=750
givepower = 36,36
yaccel = 0.5
fall = 1
fall.recover = 0
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
;mindist=44,-110
;maxdist=60,-22
ID = 227

[State 227, fix air hit fall problem]
type = TargetState
trigger1 = NumTarget(227)
trigger1 = Target(227),StateType = A
trigger1 = Target(227),StateNo = 5020
value = 115020
ignorehitpause = 1

[State 227, Hit Change into 3rd kick]
type = ChangeState
triggerall = PrevStateNo = 229
triggerall = MoveContact || movereversed
trigger1 = AILevel = 0
trigger1 = command = "1DU_K"
trigger2 = AILevel >= 1
trigger2 = Random < 700 * (AIlevel ** 2 / 64.0)
value = 1100

[State 227 Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 227, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 227, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(5)>=0
value=1
persistent=0
ignorehitpause=1

[State 227, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1





;===========<Crouch Hard Kick>==========
[Statedef 228]
type=C
movetype=A
physics=C
juggle=8
anim=228
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=1

[State 228, snd]
type=playsnd
trigger1= animelem=3
value=5030,2
channel=0
persistent=0

[State 228, snd]
type=playsnd
trigger1= animelem=3
value=210,0
channel=3
persistent=0

[State 228, Increase attack distance]
type = AttackDist
trigger1= Anim = 228
value = 160

[State 228, hit]
type=hitdef
trigger1= (p2stateno!=[154,155]) && ((p2stateno!=[5020,5040]) || var(20)) && p2stateno!=5040
trigger1= (animelem=4 || animelem=5) && !movecontact && !movereversed
attr=C,NA
damage=90,0
animtype=Hard
guardflag=L
hitflag=MAFD
priority=4,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-51
hitsound=s310,0
guardsound=s400,0
ground.type=Trip
ground.slidetime=24
ground.hittime=24
ground.velocity=-1.66,-4.85
air.type=trip
air.velocity=-1.66,-4.85
down.velocity=-4,-6
down.cornerpush.veloff=-16
air.cornerpush.veloff=0
ground.cornerpush.veloff= 0
guard.velocity= ifelse(var(20), -5, -6)
guard.cornerpush.veloff= ifelse(var(20), -5.7, -8)
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=0
yaccel=.6
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-4), -2
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 228

[State 228 Idle]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 228, end]
type=changestate
trigger1= !animtime
value=11
ctrl=1

[State 228, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(5)>=0
value=1
persistent=0
ignorehitpause=1

[State 228, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1



;===========<Air Light Punch>==========
[Statedef 600]
type=A
movetype=A
physics=A
;juggle=8
anim=600
poweradd=5*!var(20)
sprpriority=1
ctrl=0

[State 600, snd]
type=playsnd
trigger1= animelem=2
value=200,0
channel=3
persistent=0

[State 600, hit]
type=hitdef
trigger1= (animelem=2||animelem=3||animelem=4) && !movecontact && !movereversed
attr=A,NA
damage=40,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s300,2
guardsound=s400,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
air.type=Low
air.hittime=14
air.velocity=0,-2.5
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 600

[State 600, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 600, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1


;===========<Air Light Kick forward/backward>==========
[Statedef 605]
type=A
movetype=A
physics=A
;juggle=8
anim=605
poweradd=5*!var(20)
sprpriority=1
ctrl=0

[State 605, snd]
type=playsnd
trigger1= animelem=2
value=210,2
channel=3
persistent=0

[State 605, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=2 || animelem=3 || animelem=4
attr=A,NA
damage=30,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,10), ifelse(var(20),6,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s310,2
guardsound=s400,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
air.type=Low
air.hittime=14
air.velocity=-5,-2.5
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 605

[State 605, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 605, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1


;===========<Air medium Punch>==========
[Statedef 610]
type=A
movetype=A
physics=A
juggle=1
anim=610
poweradd=8*!var(20)
sprpriority=1
ctrl=0

[State 610, snd]
type=playsnd
trigger1= animelem=2
value=200,2
channel=3
persistent=0

[State 610, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=2 || animelem=3 || animelem=4
attr=A,NA
damage=70,0
animtype=medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s300,1
guardsound=s400,0
ground.type=High
ground.hittime=22
ground.slidetime=22
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=22
air.velocity=0,-2.5
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 610

[State 610, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 610, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1

;===========<Air medium Punch 2>==========
[Statedef 611]
type=A
movetype=A
physics=A
juggle=1
anim=820
poweradd=8*!var(20)
sprpriority=1
ctrl=0

[state 611, velset]
type=velset
trigger1= pos y>= -30
y=2
persistent=0

[State 611, snd]
type=playsnd
trigger1= animelem=1
value=200,2
channel=3
persistent=0

[State 611, hit]
type=hitdef
trigger1= animelem=2
attr=A,NA
damage=70,0
animtype=medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-81
hitsound=s300,1
guardsound=s400,0
ground.type=High
ground.hittime=22
ground.slidetime=22
ground.velocity= ifelse(var(20), -2.66, -6.49), ifelse(P2StateType=A,-5,0)
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=22
air.velocity= ifelse(var(20), -1.66, -2.98), ifelse(P2StateType=A,-8.2,0)
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall= Ifelse(P2StateType=A,1,0)
fall.recover= 0
ID = 611

[State 611, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 611, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1


;===========<Air Medium Kick forward/backward>==========
[Statedef 615]
type=A
movetype=A
physics=A
;juggle=8
anim=615
poweradd=8*!var(20)
sprpriority=1
ctrl=0

[State 615, snd]
type=playsnd
trigger1= animelem=2
value=210,1
channel=3
persistent=0

[State 615, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=2 || animelem=3 || animelem=4
attr=A,NA
damage=60,0
animtype=medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-58
hitsound=s310,1
guardsound=s400,0
ground.type=High
ground.hittime=22 + 4*P2StateType=A
ground.slidetime=22+ 4*P2StateType=A
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=22
air.velocity=-6,-3
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 615

[State 615, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 615, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(3)>=0
value=1
persistent=0
ignorehitpause=1


;===========<Air hard Punch>==========
[Statedef 620]
type=A
movetype=A
physics=A
juggle=1
anim=620
poweradd=18*!var(20)
sprpriority=1
ctrl=0

[State 620, snd voice]
type=playsnd
trigger1 = anim = 620
trigger1 = animelem = 2
trigger2 = anim = 820
trigger2 = animelem = 1
value=5030,ifelse(anim = 620,2,3)
channel=0
persistent=0

[State 620, snd wind]
type=playsnd
trigger1 = anim = 620
trigger1 = animelem = 2
trigger2 = anim = 820
trigger2 = animelem = 1
value=200,1
channel=3
persistent=0

[State 620, Target Combo]
type = ChangeAnim
triggerall = !(PrevStateNo = 600 || PrevStateNo = 610)
triggerall = anim = 620
triggerall = (AnimElemTime(4)>=0 && AnimElemtime(8) < 0) || (MoveContact || MoveReversed)
trigger1 = AILevel = 0
trigger1 = Command = "z"
trigger2 = AILevel > 0
value = 820

[State 620, hit]
type=hitdef
triggerall = Anim = 620 
trigger1 = animelem=3 || animelem=4
trigger1 = !(MoveContact || MoveReversed)
attr=A,NA
damage=90,0
animtype=hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,14), ifelse(var(20),8,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-63
hitsound=s300,0
guardsound=s400,0
ground.type=High
ground.hittime=24
ground.slidetime=24
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff= ifelse(var(20), -6.82, -12.74)
air.type=Low
air.hittime=24
air.velocity=-7.5,4
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=(p2statetype=A)
fall.recover=0
airguard.cornerpush.veloff= 0
ID = 620

[State 620, hit 2]
type=hitdef
triggerall = Anim = 820 
trigger1 = AnimElemTime(2) = 0
attr=A,NA
damage=50,0
animtype=hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,14), ifelse(var(20),8,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-63
hitsound=s300,0
guardsound=s400,0
ground.type=High
ground.hittime=24
ground.slidetime=24
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff= ifelse(var(20), -6.82, -12.74)
air.type=Low
air.hittime=24
air.velocity = -3.5, -5.4
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=(p2statetype=A)
fall.recover=0
airguard.cornerpush.veloff= 0
ID = 611

[State 620, holdpos]
type = posset
triggerall = anim = 820
triggerall = Animelemtime(3) < 0
trigger1 = pos y > -20 && vel y > 0
y = -20

[State 620, sts]
type=statetypeset
trigger1 = anim = 620
trigger1 = animelemtime(8)>=0
movetype=I
persistent=0

[State 620, OC Release]
type=ctrlset
triggerall= var(20)
trigger1 = anim = 620
trigger1 = animelemtime(3)>0
value=1
persistent=0
ignorehitpause=1


;===========<Air hard kick forward/backward>==========
[Statedef 625]
type=A
movetype=A
physics=A
juggle=1
anim=625
poweradd=18*!var(20)
sprpriority=1
ctrl=0

[State 625, snd]
type=playsnd
trigger1= animelem=2
value=5030,ifelse(random<500,2,3)
channel=0

[State 625, snd]
type=playsnd
trigger1= animelem=2 || animelem=8
value=210,0
channel=3

[State 625, hit]
type=hitdef
trigger1= animelem=2 || animelem=8
attr=A,NA
damage=100,0
animtype=hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,14), ifelse(var(20),10,18)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-124
hitsound=s310,0
guardsound=s400,0
ground.type=High
ground.hittime=24
ground.slidetime=24
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff= ifelse(var(20), -6.82, -12.74)
air.type=Low
air.hittime=24
air.velocity=-3,-6
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=(p2statetype=A)
fall.recover=0
airguard.cornerpush.veloff= 0
ID= 625

[State 625, sts]
type=statetypeset
trigger1= animelemtime(12)>=0
movetype=I
persistent=0

[State 625, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(2)>0
value=1
persistent=0
ignorehitpause=1


;===========<Air hard kick forward/backward type 2 sf3>==========
[Statedef 626]
type=A
movetype=A
physics=A
juggle=1
anim=626
poweradd=18*!var(20)
sprpriority=1
ctrl=0

[State 626, snd voice]
type=playsnd
trigger1= animelem=2
value=5030,ifelse(random<500,2,3)
channel=0

[State 626, snd wind]
type=playsnd
trigger1= animelem = 4
value=210,0
channel=3

[State 626, hit]
type=hitdef
trigger1= animelem = 5
attr=A,NA
damage=125,0
animtype=hard
guardflag=H
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),0,0), ifelse(var(20),2,2)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy= -10,-26
hitsound=s310,0
guardsound=s400,0
ground.type=High
ground.hittime=24
ground.slidetime=24
ground.velocity= ifelse(var(20), -2, -4), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -5, -10)
guard.cornerpush.veloff= ifelse(var(20), -6, -12)
air.type=Low
air.hittime=24
air.velocity = -9, -2
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel = 0.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=(p2statetype=A)
fall.recover=0
airguard.cornerpush.veloff= 0
ID= 626

[State 626, hold pos]
type = posset
triggerall = !var(20)
triggerall = MoveContact || MoveReversed
trigger1 = Anim = 626 && AnimElemTime(7) <= 1
trigger1 = pos y > -20 && vel y > 0
y = -20
ignorehitpause = 1

[State 626, SF3 style pause]
type = Pause
triggerall = !var(20)
triggerall = MoveContact || MoveReversed
trigger1 = Anim = 626 && animelem = 7
time = 18
endcmdbuftime = 0
pausebg = 1
movetime = 0
ignorehitpause = 1
persistent = 0

[State 626, sts]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 626, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(6)>0
value=1
persistent=0
ignorehitpause=1



;===========<Air Light Kick Uptype>==========
[Statedef 630]
type=A
movetype=A
physics=A
;juggle=8
anim=630
poweradd=5*!var(20)
sprpriority=1
ctrl=0

[State 630, snd]
type=playsnd
trigger1= animelem=2
value=210,2
channel=3
persistent=0

[State 630, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=2 || animelem=3 || animelem=4 || animelem=5 || animelem=6
attr=A,NA
damage=50,0
animtype=Light
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,10), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-128
hitsound=s310,2
guardsound=s400,0
ground.type=High
ground.hittime=14
ground.slidetime=14
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -2.66, -4.49)
guard.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
air.type=Low
air.hittime=14
air.velocity=ifelse(p2dist x>=0,-0.6,0.6),-6.75
air.cornerpush.veloff=0
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 630

[State 630, sts]
type=statetypeset
trigger1= animelemtime(8)>=0
movetype=I
persistent=0

[State 630, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(2)>0
value=1
persistent=0
ignorehitpause=1

;===========<Air Medium Kick Uptype>==========
[Statedef 635]
type=A
movetype=A
physics=A
;juggle=8
anim=635
poweradd=8*!var(20)
sprpriority=1
ctrl=0

[State 635, snd]
type=playsnd
trigger1= animelem=2
value=210,1
channel=3
persistent=0

[State 635, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=2 || animelem=3
attr=A,NA
damage=80,0
animtype=medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),8,14)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-138
hitsound=s310,1
guardsound=s400,0
ground.type=High
ground.hittime=22
ground.slidetime=22
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=22
air.velocity=ifelse(p2dist x>=0,-1.4,1.4),-7.7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0
ID = 635


[State 635, sts]
type=statetypeset
trigger1= animelemtime(5)>=0
movetype=I
persistent=0

[State 635, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(2)>0
value=1
persistent=0
ignorehitpause=1


;===========<Air hard kick uptype>==========
[Statedef 638]
type=A
movetype=A
physics=A
;juggle=8
anim=638
poweradd=18*!var(20)
sprpriority=1
ctrl=0

[State 638, snd]
type=playsnd
trigger1= animelem=3
value=5030,ifelse(random<500,2,3)
channel=0

[State 638, snd]
type=playsnd
trigger1= animelem=3
value=210,0
channel=3

[State 638, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=4 || animelem=5
attr=A,NA
damage=130,0
animtype=hard
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),10,12)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-61
hitsound=s310,0
guardsound=s400,0
ground.type=High
ground.hittime=24
ground.slidetime=24
ground.velocity= ifelse(var(20), ifelse(p2dist x>=0,-2.66,2.66), ifelse(p2dist x>=0,-4.49,4.49)), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -5.77, -10.52)
guard.cornerpush.veloff= ifelse(var(20), -6.82, -12.74)
air.type=Low
air.hittime=14
air.velocity=ifelse(p2dist x>=0,-6,6),-2
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=0
fall.recover=0
airguard.cornerpush.veloff= 0
ID = 638

[State 638, sts]
type=statetypeset
trigger1= animelemtime(7)>=0
movetype=I
persistent=0

[State 638, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(4)>0
value=1
persistent=0
ignorehitpause=1



;===========<Air Medium Kick headhit>==========
[Statedef 640]
type=A
movetype=A
physics=A
juggle=3
anim=640
poweradd=8*!var(20)
sprpriority=1
ctrl=0

[state 640, varset]
type=varset
trigger1= !time && prevstateno!=640
var(10)=0
persistent=0

[State 640, snd]
type=playsnd
trigger1= animelem=2 && random<500
value=5030,ifelse(random<450,4,0)
channel=0
persistent=0

[State 640, snd]
type=playsnd
trigger1= animelem=2
value=210,1
channel=3
persistent=0

[State 640, hit]
type=hitdef
triggerall= !movecontact && !movereversed && (var(10)<3 || var(20))
trigger1= animelem=2 || animelem=3 || animelem=4
attr=A,NA
damage=60,0
animtype=medium
guardflag=H
hitflag=MAFD
priority=4,Hit
pausetime= ifelse(var(20),6,10), ifelse(var(20),6,10)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-2
hitsound=s310,1
guardsound=s400,0
ground.type=High
ground.hittime=16
ground.slidetime=16
ground.velocity= ifelse(var(20), -2.11, -3.46), 0
ground.cornerpush.veloff= ifelse(var(20), -2.33, -5.17)
guard.velocity= ifelse(var(20), -1.30, -4.51)
guard.cornerpush.veloff= ifelse(var(20), -3.78, -5.47)
air.type=Low
air.hittime=14
air.velocity=-4,-5
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
fall=0
fall.recover=0
ID = 640

[state 640, velset after hit]
type=velset
trigger1= anim=640 && movecontact
x=ifelse(enemynear,BackEdgeBodyDist<=0,4-!var(20)*7,4)
y=-6
persistent=0

[state 640, varadd after hit]
type=varadd
trigger1= hitcount
var(10)= 1
persistent=0
ignorehitpause=1

[State 640, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

[State 630, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(2)>0
value=1
persistent=0
ignorehitpause=1


;===========<Reverse Hard Kick>==========
[Statedef 617]
type=A
movetype=A
physics=A
juggle=8
anim=617
velset=0,0
poweradd=35*!var(20)
sprpriority=1
ctrl=0
facep2=0

[State 617, Hitby]
type=hitby
trigger1=1
value=SA,AA,AT,AP
ignorehitpause=1

[state 617, velset]
type=velset
trigger1= !time
x=3.4
y=0.94*const(velocity.jump.y)

[State 617, snd]
type=playsnd
trigger1= time=1
value=40,0
channel=2
persistent=0

[State 617, snd]
type=playsnd
trigger1= animelem=9
value=210,0
channel=3
persistent=0

[State 617, hit]
type=hitdef
trigger1= (animelem=10 || animelem=11 || animelem=12) && !movecontact && !movereversed
attr=A,NA
damage=100,0
animtype=Hard
guardflag=H
hitflag=MAFD
priority=5,Hit
pausetime= ifelse(var(20),6,12), ifelse(var(20),6,12)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-62
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=22
ground.hittime=22
ground.velocity=-1.66,-5.85
air.type=low
air.velocity=-1.66,-5.2
down.velocity=-4,-6
down.cornerpush.veloff=-16
air.cornerpush.veloff=0
ground.cornerpush.veloff= 0
guard.velocity= ifelse(var(20), -5, -6)
guard.cornerpush.veloff= ifelse(var(20), -5.7, -8)
getpower= 140*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=0
yaccel=.6
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-4), -2
airguard.cornerpush.veloff= 0
ID = 617

;==========<THROW Try>==========
[Statedef 800]
type=S
movetype=A
physics=S
ctrl=0
anim=800
velset=0,0
sprpriority=1
facep2=1
poweradd=2*!var(20)

[State 800, strengthvar]
type=varset
trigger1= !time
var(10)=ifelse(prevstateno=100,2,1)

[state 800, velset]
type=veladd
trigger1= !time && var(10)=2
x=const(velocity.run.fwd.x)

[State 800, Dont Guard]
type=attackdist
trigger1=1
value=0

[State 800, hit]
type=hitdef
triggerall = P2MoveType != H && !(P2StateNo = [150,159])
triggerall= !AIlevel
trigger1= (animelem=1 || animelem=2) && !movecontact
trigger1= (P2movetype!=H || var(20)) && P2StateNo != 5120
attr=S,NT
hitflag=MA
priority=5,Miss
sparkno=-1
p1facing=1
p2facing=1
p1stateno=801
guard.dist=0
ID=805
fall=1
fall.recover=0

[State 800, hitai]
type=hitdef
triggerall= AIlevel
triggerall = P2MoveType != H && !(P2StateNo = [150,159])
trigger1= (animelem=1 || animelem=2) && !movecontact && p2movetype!=H
attr=S,NT
hitflag=MA
priority=5,Miss
sparkno=-1
p1facing=1
p2facing=1
p1stateno=801
guard.dist=0
ID=805
fall=1
fall.recover=0


[State 800, misssnd]
type=playsnd
trigger1= animelem=3
value=5020,0
channel=0

[State 800, Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 800, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---PLAYER 801---
[Statedef 801]
type=S
movetype=A
physics=S
anim=801
ctrl=0
sprpriority=1

[State 801, targetchange]
type=targetstate
trigger1= !time
value=805
persistent=0

[state 801, velset]
type=veladd
trigger1= !time && var(10)=2
x=const(velocity.run.fwd.x)-4

[State 801, grab snd]
type=playsnd
trigger1= !time
value=330,0
persistent=0

[State Width]
type=width
trigger1= 1
edge=50,0

[State 801, bind 1]
type=targetbind
trigger1= animelem=1
pos=13,-101
time=16
persistent=0

[State 801, bind 2]
type=targetbind
trigger1= animelem=3
pos=34,-87
time=8
persistent=0

[State 801, bind 3]
type=targetbind
trigger1= animelem=5
pos=68,-60
time=1
persistent=0

[state 801, tragetveladd]
type=targetveladd
trigger1= animelemtime(5)=2
x=-6
y=6

[state 801, lifeset]
type = TargetLifeAdd
trigger1 = animelemtime(6)>0 && (target,pos y>=-15)
value= ifelse(var(10)=2,-160,-140)
persistent=0

[State 801, posfix]
type=posadd
trigger1= animelem=9
x=53
persistent=0

[state 801, snd]
type= playsnd
trigger1= animelemtime(6)>0 && (target,pos y>=-15)
value=40,2
channel=2
persistent=0

[State 801, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---TARGET 805---
[Statedef 805]
type=A
movetype=H
physics=N
velset=0,0
sprpriority=0
ctrl=0

[state 805, screen]
type=ScreenBound
trigger1=1
movecamera=1,0

[state 805,changep2state]
type=ChangeAnim2
trigger1= !time
value=805

[state 805,statetype]
type=statetypeset
trigger1= animelemtime(5)=0
statetype=A
physics=a

[state 805, end]
type = Selfstate
trigger1 = Pos Y >=-15
value = 5100


;==========<THROW Try 810>==========
[Statedef 810]
type=S
movetype=A
physics=S
ctrl=0
anim=800
velset=0,0
sprpriority=1
facep2=1
poweradd=2*!var(20)

[State 810, Dont Guard]
type=attackdist
trigger1=1
value=0

[State 810, hit]
type=hitdef
triggerall= !AIlevel
trigger1= (animelem=1 || animelem=2) && !movecontact && p2movetype!=H
attr=S,NT
hitflag=MA
priority=3,Miss
sparkno=-1
p1facing=1
p2facing=1
p1stateno=ifelse(command="holdfwd",811,812)
guard.dist=0
fall=1
fall.recover=0

[State 810, hitai]
type=hitdef
triggerall= AIlevel
trigger1= (animelem=1 || animelem=2) && !movecontact && p2movetype!=H
attr=S,NT
hitflag=MA
priority=3,Miss
sparkno=-1
p1facing=1
p2facing=1
p1stateno=ifelse(BackEdgeBodyDist < 80,812,811)
guard.dist=0
fall=1
fall.recover=0

[State 810, misssnd]
type=playsnd
trigger1= animelem=3
value=5020,0
channel=0

[State 810, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---PLAYER 811---
[Statedef 811]
type=S
movetype=A
physics=S
anim=811
ctrl=0
sprpriority=1

[State 811, targetchange]
type=targetstate
trigger1= !time
value=815
persistent=0

[State 811, grab snd]
type=playsnd
trigger1= !time
value=330,0
persistent=0

[State 811, Width]
type=width
trigger1= 1
edge=50,0

[State 811, bind 1]
type=targetbind
trigger1= animelem=1
pos=61,0
time=8
persistent=0

[State 811, bind 2]
type=targetbind
trigger1= animelem=2
pos=51,0
time=1
persistent=0

[State 811, bind 2]
type=TargetVelAdd
trigger1= animelemtime(2)=3
x=3
persistent=0

[State 811, hit1]
type=hitdef
trigger1= animelem=6
attr=S,NA
damage=80,0
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 6,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= -1,-7
air.type=Low
air.hittime=14
air.velocity= ifelse(var(20), -2.5, -6), -6
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
envshake.time=12
envshake.freq=80
envshake.ampl=8
fall=1
fall.recover=0

[State 811, hit2]
type=hitdef
trigger1= animelem=14
attr=S,NA
damage=60,0
animtype=up
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= 12,12
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-110
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=32
ground.hittime=32
ground.velocity= ifelse(var(20), -1, -2), -9
ground.cornerpush.veloff= ifelse(var(20), 0, -4)
air.type=Low
air.hittime=32
air.velocity= ifelse(var(20), -1, -2), -9
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
envshake.time=8
envshake.freq=100
envshake.ampl=6
fall=0
fall.recover=1
ID=811

[State 811, posfix]
type=posadd
trigger1= animelem=14
x=38
persistent=0

[State 811, ifTerminned]
type=changestate
triggerall= animelemtime(1)>0 && animelemtime(6)<0
trigger1= target,stateno!=815
value=813

[State 811, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---PLAYER 812 Reverse---
[Statedef 812]
type=S
movetype=A
physics=S
anim=812
ctrl=0
sprpriority=1

[State 812, targetchange]
type=targetstate
trigger1= !time
value=816
persistent=0

[State 812, grab snd]
type=playsnd
trigger1= !time
value=330,0
channel=4
persistent=0

[State 812, Width]
type=width
trigger1= 1
edge=-20,-20

[State 812, bind 1]
type=targetbind
trigger1= animelem=1
pos=61,0
time=8
persistent=0

[State 812, bind 2]
type=targetbind
trigger1= animelem=2
pos=51,0
time=1
persistent=0

[State 812, bind 2]
type=TargetVelAdd
trigger1= animelemtime(2)=3
x=3
persistent=0

[State 812, Playerpush]
type=playerpush
trigger1= 1
value=0

[State 812, grab snd2]
type=playsnd
trigger1= animelem=6
value=900,4
channel=4
persistent=0

[state 812, hit]
type=targetlifeadd
trigger1= animelemtime(6)=8
value= -10
kill= 0
persistent=0

[State 812, posfix1]
type=posadd
trigger1= animelem=9
x=7
persistent=0

[State 812, posfix2]
type=posadd
trigger1= animelem=10
x=42
persistent=0

[State 812, velset]
type=velset
trigger1= animelemtime(10)>=0 && animelemtime(13)<0
x= (target,const(size.ground.back))/15

[State 812, hit1]
type=hitdef
trigger1= animelem=14
attr=S,NA
damage=60,0
animtype=up
guardflag=M
hitflag=MAF
priority=6,Hit
pausetime= 4,16
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-77
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= 0.5,-7
air.type=Low
air.hittime=14
air.velocity= -7,-7
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
envshake.time=12
envshake.freq=80
envshake.ampl=8
fall=1
fall.recover=0
ID=812

[State 812, hit2]
type=hitdef
trigger1= animelem=21
attr=S,NA
damage=80,0
animtype=hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 10,10
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-82
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=32
ground.hittime=32
ground.velocity= -7,-3
ground.cornerpush.veloff= 0
air.type=Low
air.hittime=32
air.velocity= -7,-3
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-3,-6), -1.5
airguard.cornerpush.veloff= 0
envshake.time=8
envshake.freq=100
envshake.ampl=6
fall=1
fall.recover=0


[State 812, posfix3]
type=posadd
trigger1= animelem=17
x=-12
persistent=0

[State 812, posfix4]
type=posadd
trigger1= animelem=21
x=42
persistent=0

[State 812, turn]
type=turn
trigger1= animelemtime(21)=0
persistent=0

[State 812, ifTerminned]
type=changestate
triggerall= animelemtime(1)>0 && animelemtime(14)<0
trigger1= target,stateno!=816
value=813

[State 812, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;-------Terminal---------
[Statedef 813]
type=S
movetype=I
physics=S
anim=813
ctrl=0
velset=-4,0
sprpriority=1

[State 813, snd]
type=playsnd
trigger1= !time
value=5020,0
channel=0
persistent=0

[State 813, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;---TARGET 815---
[Statedef 815]
type=S
movetype=H
physics=S
velset=0,0
sprpriority=0
ctrl=0

[state 815, posset]
type=posset
trigger1= !time
y=0

[state 815,changep2state]
type=ChangeAnim2
trigger1= !time
value=815

[state 815]
type = Selfstate
trigger1= !animtime
value= 0
ctrl=1

;---TARGET 816 reverse---
[Statedef 816]
type=S
movetype=H
physics=S
velset=0,0
sprpriority=0
ctrl=0

[state 816, posset]
type=posset
trigger1= !time
y=0

[state 816,changep2state]
type=ChangeAnim2
trigger1= !time
value=816

[state 816]
type = Selfstate
trigger1= !animtime
value= 0
ctrl=1


;==========<air THROW Try 820>==========
[Statedef 820]
type=A
movetype=A
physics=A
ctrl=0
anim=820
sprpriority=1
facep2=1
poweradd=2*!var(20)

[State 820, Dont Guard]
type=attackdist
trigger1=1
value=0

[State 820, hit]
type=hitdef
triggerall= p2statetype=A
trigger1= (animelem=1 || animelem=2) && !movecontact && (P2movetype!=H || var(20))
attr=S,NT
hitflag=MA
priority=3,Miss
sparkno=-1
p1facing=1
p2facing=1
p1stateno=821
guard.dist=0
fall=1
fall.recover=0


[State 820, misssnd]
type=playsnd
trigger1= animelem=3
value=5020,0
channel=0


;================<Player 821>================
;---PLAYER 821---
[Statedef 821]
type=A
movetype=A
physics=A
anim=821
ctrl=0
sprpriority=1

[State 821, targetchange]
type=targetstate
trigger1= !time
value=805
persistent=0

[State 821, grab snd]
type=playsnd
trigger1= !time
value=330,0
persistent=0

[State Width]
type=width
trigger1= 1
edge=50,0

[State 821, bind 1]
type=targetbind
trigger1= animelem=1
pos=13,-101
time=16
persistent=0

[State 821, bind 2]
type=targetbind
trigger1= animelemtime(3)>=0
pos=34,-87

[state 821, lifeset]
type = TargetLifeAdd
trigger1= vel y>0 && pos y>=-15
value= ifelse(var(9)=3,-180,-150)
persistent=0

[state 821, veladd]
type=veladd
trigger1= !time && pos y>=-80 && vel y>1
y=-8.6
persistent=0

[statedef 822]
type=S
movetype=I
physics=S
velset=0,0
anim=822
ctrl=0

[State 822, bind 3]
type=targetbind
trigger1= !time
pos=68,-60
time=1
persistent=0

[State 822, targetvelset]
type=targetveladd
trigger1= time=2
x=-6
y=6
persistent=0

[state 822, posset]
type=posset
trigger1= !time
y=0
persistent=0

[state 822, snd]
type= playsnd
trigger1= animelemtime(3)>0 && (target,pos y>=-15)
value=40,2
channel=2
persistent=0

[state 822, posset]
type=posadd
trigger1= animelem=5
x=38
persistent=0

[state 822, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==========<THROW Try>==========
[Statedef 830]
type=S
movetype=A
physics=S
ctrl=0
anim=800
velset=0,0
sprpriority=1
facep2=1
poweradd=2

[State 830, Dont Guard]
type=attackdist
trigger1=1
value=0

[State 830, hit]
type=hitdef
trigger1 = P2MoveType != H
trigger1 = (animelem=1 || animelem=2)
trigger1 = P2StateType != A && P2StateType != L
attr=S,NT
hitflag=MA
priority=4,Miss
sparkno=-1
p1facing=1
p1stateno=831
guard.dist=0
fall=0
fall.recover=0
ID = 835


[State 830, misssnd]
type=playsnd
trigger1= animelem=3
value=5020,0
channel=0

[State 830, Idle]
type=statetypeset
trigger1= animelemtime(4)>=0
movetype=I

[State 830, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;---PLAYER 831---
[Statedef 831]
type=S
movetype=A
physics=S
anim=831
ctrl=0
sprpriority=1

[State 831, targetchange]
type = targetstate
trigger1= !time && NumTarget(835)
ID = 835
value = 835
persistent = 0

[state 831, playerpush]
type=playerpush
trigger1= 1
value=0

[State 831, grab snd]
type=playsnd
trigger1= !time
value=330,0
persistent=0

[State 831, Width]
type=width
trigger1= time=24
value=-32,35
persistent=0

[state 831, turn]
type=turn
trigger1= animelemtime(5)=0
persistent=0

[State 831, posset 1]
type=posset
trigger1= animelemtime(5)=0
x=target,pos x
y=target,const(size.head.pos.y)-4
persistent=0

[State 831, posset 2]
type=posadd
trigger1= animelemtime(13)=0
x=-(const(size.ground.back))
persistent=0

[State 831, end]
type=changestate
trigger1= !animtime
value=52
ctrl=1

;---TARGET 835---
[Statedef 835]
type=S
movetype=H
physics=N
velset=0,0
sprpriority=0
ctrl=0

[state 835, posset]
type=posset
trigger1= !time
y=0

[state 835,changep2state]
type=ChangeAnim2
trigger1= !time
value=835

[State 835, Width]
type=width
trigger1= time=24
value=-32,35
persistent=0

[state 835]
type = Selfstate
trigger1= !animtime
value= 0
ctrl=1


;=================== <Focus Attack> ==================
[Statedef 500]
type = S
movetype = A
physics = S
poweradd = IfElse((PrevStateNo=[200,2999]),-1000,0)
juggle = 1
velset = 0,0
ctrl = 0

[State 500, clear cancel into Focus switch]
type = varset
trigger1 = !time
trigger1 = (var(18) & 4)
var(18) = var(18) - 4
ignorehitpause = 1
persistent=0

[State 500, cancel into Focus switch]
type = varset
trigger1 = !(var(18) & 4)
trigger1 = !time && (PrevStateNo = [200,2999])
var(18) = var(18) + 4
ignorehitpause = 1
persistent=0

[State 500, ReGain buffer 51]
type = varadd
trigger1 = !time && (PrevStateNo = [5000,5099])
var(51) = GetHitVar(damage)
ignorehitpause = 1

[State 500, Loss Life]
type = lifeadd
trigger1 = !time && (PrevStateNo= [5000,5099])
value = -GetHitVar(damage)
ignorehitpause = 1

[state 500, Dead jump to cheap ok]
type= changestate
trigger1 = !time && (PrevStateNo= [5000,5099])
trigger1 = GetHitVar(damage) > life
value = 5130
ignorehitpause = 1


[State 500, BeHited Effect]
type = Explod
triggerall = !NumExplod(6500)
trigger1 = time=0 && (PrevStateNo= [5000,5099])
vel = 0,0
anim = 6500
ID = 6500
sprpriority = 1
postype = P1
pos= 24,-68
bindtime= 1
removetime= -2
removeongethit= 0
ownpal=1
scale= 0.6 ,0.6
trans= addalpha
alpha= 256,250

[State 500, BeHited snd]
type = playsnd
trigger1 = time=0 && (PrevStateNo= [5000,5099])
value = 500,2
channel = 2

[State 500, HitOverRide]
type = HitOverRide
triggerall = !(PrevStateNo= [5000,5099]) && Anim= 500
trigger1 = Animelemtime(7)<0
attr = SCA, AA,AP
StateNo = 500
time = 1

[State 500, Playanim]
type = ChangeAnim
triggerall = !(PrevStateNo= [5000,5099])
trigger1 = Anim != 500
value = 500

[State 500, Playanim Light Hit]
type = ChangeState
triggerall = anim = 500
trigger1 = var(10) = 1
trigger1 = Animelemtime(9)>1
trigger2 = var(10)>1
trigger2 = Animelemtime(9)>11 && !MoveHit
value = 501

[State 500, StrengthVar Clear]
type = varset
triggerall = !(PrevStateNo= [5000,5099])
trigger1 = !time && var(10) != 1
var(10) = 1

[State 500, StrengthVar set]
type= varset
triggerall = Anim = 500
triggerall = Command="holdb" || Command="holdx" || AILevel
trigger1 = animelemtime(1)>=15 && var(10)<2
trigger2 = animelemtime(6)=4 && var(10)<3
var(10) = ifelse(animelemtime(6)=4,3,2)

[State 500, posfix 1]
type = posadd
trigger1= animelem=9
x=ifelse(P2Dist y < -70,50,ifelse((p2bodydist x=[-11,50]),p2bodydist x+10,50))
persistent=0

[State 500, posfix 2]
type = posadd
trigger1= !animtime
x=ifelse(P2Dist y < -70,6,ifelse((p2bodydist x=[-11,6]),p2bodydist x+10,6))
persistent=0

[State 500, width]
type= width
trigger1= anim=500
trigger1= animelemtime(7)>=0 && animelemtime(9)<0
value= 40,0

[State 500, Init Flash]
type= varset
triggerall= Anim= 500
trigger1= animelemtime(1)=15
trigger2= animelemtime(6)=4
var(53)= Ifelse(Animelemtime(1)=15,12,26)

[State 500, Flashing - var(53)]
type= varadd
triggerall= Anim= 500 && var(53)
trigger1= 1
var(53)= -1

[State 500, Flash 1]
type = PalFX
triggerall= Anim= 500 && var(53)
trigger1 = Var(10)=2
time = 1
add = 240 - 20*(13-var(53)),240 - 20*(13-var(53)),240 - 20*(13-var(53))

[State 500, Flash 2]
type = PalFX
triggerall= Anim= 500 && var(53)
trigger1 = Var(10)=3
time = 1
add = 234 - 9*(27-var(53)),234 - 9*(27-var(53)),234 - 9*(27-var(53))
ignorehitpause= 1

[State 500, EX-Cancel Flash]
type = PalFX
triggerall= (var(18) & 4)
triggerall = time %2=0
trigger1 = animelemtime(1) < 15
time = 1
add = 160,120,20
ignorehitpause = 1

[State 500, EXSnd]
type=playsnd
triggerall= (var(18) & 4)
trigger1= !time
value=3000,4
channel=1
persistent=0

[State 500, Qi Effect 1]
type=explod
triggerall= Anim = 500
trigger1= animelemtime(1) = 15
vel=0,0
anim = 7104
ID = 7104
sprpriority=0
postype= P1
pos= -10,0
ownpal=1
scale= 1,1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 500, Qi Effect 2]
type=explod
triggerall= Anim = 500
trigger1= animelemtime(9)>=0 && animelemtime(9)<3 && var(10)=3
vel=0,0
anim = 7104
ID = 7105
sprpriority=0
postype= P1
pos= 0,0
ownpal=1
scale= 1.2 ,1.2
pausemovetime=-1
supermovetime=-1

[State 500, Ink Effect 1]
type=explod
triggerall= Anim = 500 && !NumExplod(506)
trigger1= animelemtime(7)=5 && var(10)=3
vel=0,0
anim= 506
ID= 506
sprpriority = 2
postype= P1
pos= 86,-64
bindtime= 1
removetime= -2
removeongethit= 1
ownpal=1
scale= 0.5 ,0.5

[State 500, Ink Effect Target]
type= explod
triggerall= !NumExplod(507)
trigger1 = NumTarget(502)
trigger1 = Target(502),time=0
vel=0,0
anim= 507
ID= 507
sprpriority= 3
postype= P2
pos= -30,-68
facing= -1
bindtime= 1
removetime= -2
removeongethit= 0
ownpal=1
scale= 0.5 ,0.5
ignorehitpause= 1

[State 500, Voice Taking Air]
type= playsnd
triggerall= !(PrevStateNo= [5000,5099])
trigger1 = Animelemtime(1)= 1
value = 5020,4
channel = 0

[State 500, Attack weak]
type= playsnd
trigger1 = Animelemtime(7) = 1 && var(10) != 3
value = 5030,8
channel = 0

[State 500, Attack Max Voice]
type= playsnd
trigger1 = Animelemtime(7) = 1 && var(10) = 3
value = 5020,3
channel = 0

[State 500, Attack Max Effect]
type= playsnd
trigger1 = Animelemtime(7) = 2 && var(10) = 3
value = 500,1
channel = 2

[State 500, Charge sound lv2]
type= playsnd
triggerall = anim = 500
trigger1 = animelemtime(1)=15
value = 500,3
channel = 3

[State 500, ChangeToAttackAnimation]
type= ChangeAnim
triggerall= anim=500 && var(10)!=3
triggerall= animelemtime(1)>1 && animelemtime(6)<4
trigger1= !AILevel
trigger1= !(Command = "holdb" || Command = "holdx")
trigger2= AILevel
trigger2= time && PrevStateNo>=5000
trigger2= Random < 40 + AILevel/8.0 * (320*(var(10)>1))
value= 500
elem= 7

[State 500, Hit]
type = hitdef
triggerall= anim=500 && Var(10)!=3
trigger1= animelemtime(9)>=0 && animelemtime(10)<0
trigger1= !MoveContact
attr= S,SA
damage= 60 + 20*(Var(10)=2) + 60*(Var(10)=3)
animtype= Hard
guardflag= M
hitflag= MAF
priority= 4,Hit
pausetime= 12,12
guard.pausetime= 12,12
sparkno= s7020+(random%8)
guard.sparkno=s7001
sparkxy= -16,-65
hitsound=s300,0 
guardsound=s400,0
ground.type= High
air.type= Low
ground.slidetime= 26
ground.hittime= 26
ground.velocity= -4,0
guard.velocity= -6 -3*(var(10)=2)
air.velocity= -5 -3*(var(10)=2), -4 -2*(var(10)=2)
ground.cornerpush.veloff= -24
guard.velocity= -7
guard.cornerpush.veloff= -24
getpower= 140*!var(20), 70*!var(20)
givepower= 20, 10
envshake.time= 14
envshake.freq= 60
envshake.ampl= 10
fall=Ifelse(P2StateNo=502,1,0)
fall.recover=0
p1sprpriority=-1
ID= 502

[State 500, Hit Max]
type = hitdef
triggerall= anim=500 && Var(10)=3
trigger1= animelemtime(9)>=0 && animelemtime(10)<0
trigger1= !MoveContact
attr= S,SA
damage= 60 + 20*(Var(10)=2) + 60*(Var(10)=3)
animtype= DiagUp
guardflag= 
hitflag= MAF
priority= 6,Hit
pausetime= 20,20
guard.pausetime= 20,20
sparkno= s7020+(random%8)
guard.sparkno=s7001
sparkxy= -16,-65
hitsound=s310,3
guardsound=s400,0
ground.type= High
air.type= Low
ground.slidetime= 26
ground.hittime= 26
ground.velocity= -8,0
guard.velocity= -8
air.velocity= -9, -7
ground.cornerpush.veloff= -24
guard.velocity= -8
guard.cornerpush.veloff= -24
getpower= 140*!var(20), 70*!var(20)
givepower= 20, 10
envshake.time= 20
envshake.freq= 60
envshake.ampl= 14
fall= Ifelse(P2StateType=A,1,Ifelse(P2StateNo=502,1,0))
fall.recover=0
p1sprpriority=-1
ID= 502

[state 500, nothitby]
type=nothitby
trigger1= anim=500 && var(10)=3
trigger1= animelemtime(7)>0 && animelemtime(9)<=2
value=SCA,AA,AP,AT
time=1
ignorehitpause= 1

[State 500, Ink Effect Target Breaking]
type= explod
trigger1= !NumExplod(6501) && var(10)=3
trigger1= NumTarget(502)
trigger1= Target(502), PrevStateNo=[120,159]
vel=0,0
anim= 6501
ID= 6501
sprpriority= 4
postype= P2
pos= 20,-68
facing= -1
bindtime= 1
removetime= -2
removeongethit= 0
ownpal=1
scale= 0.6 ,0.6
trans= addalpha
alpha= 256,256
ignorehitpause= 1

[State 500, Attack Max Effect]
type= playsnd
trigger1= NumExplod(6501) && var(10)=3 && NumTarget(502)
trigger1= Target(502),time=1
value = 500,0
channel = 3
ignorehitpause= 1
persistent= 1

[State 500, P2State]
type = targetstate
triggerall= var(10)>1 && NumTarget(502)
trigger1= movehit && Target(502),Pos y >= 0 && Target(502),Time<2
trigger1= target(502),StateNo=5000 || target(502),StateNo=5010
value=502
ID=502
ignorehitpause=1

[State 500, Clear var9]; Dash or not
type = varset
trigger1 = var(9) >= 0 & !time
var(9) = 0
ignorehitpause = 1

[State 500, Dash forward AI]
type = varset
triggerall= AILevel && var(9) = 0
trigger1 = PrevStateNo >= 5000 && P2bodydist x > 72
trigger1 = time<2 && Enemynear,animtime < -15
trigger1 = !(P2StateNo = [3000,4999])
trigger1 = Random < (500) * (AIlevel ** 2 / 64.0)
trigger1 = var(57):= 150001; Got hit but not able to reach for direct attack.
trigger2 = (var(18) & 4) && time
trigger2 = var(57):= 150002; EX-Dash
trigger3 = MoveHit && NumTarget(502)
trigger3 = Target(502),StateNo=502 && Target(502),Alive
trigger4 = Animelemtime(7) = [-3,-1]
trigger4 = P2Bodydist x < -10 || P2Dist x < 0
trigger4 = var(57):= 150007; nothing to hit
var(9) = 1
ignorehitpause = 1

[State 500, Dash back AI]
type = varset
triggerall= AILevel && var(9) = 0
trigger1 = PrevStateNo >= 5000 && (P2StateNo = [3000,4999])
trigger1 = time<2
trigger1 = Random < (500) * (AIlevel ** 2 / 64.0)
trigger1 = var(57):= 150003; Enemy Super leave
trigger2 = Enemynear,Ctrl || StateNo < 100
trigger2 = !InGuardDist
trigger2 = Random < (32 - 20 * (P2Bodydist x < 72)) * (AIlevel ** 2 / 64.0)
trigger2 = var(57):= 150004; pose only
trigger3 = MoveGuarded
trigger4 = MoveContact && !NumTarget(502)
trigger5 = PrevStateNo >= 5000 && P2MoveType != A
trigger5 = time < 2 && P2Bodydist x > 110
trigger5 = var(57):= 150005; Hit by projectile too far
trigger6 = Animelemtime(7) = [-3,-1]
trigger6 = P2Bodydist x > 72
trigger6 = var(57):= 150006; nothing to hit
var(9) = 2
ignorehitpause = 1

[State 500, set var9]; Dash or not
type = varset
trigger1 = var(9) < 0 & !time
var(9) = Abs(var(9))
ignorehitpause = 1


[State 500, Dash / BackDash Human]
type= changeState
triggerall= Anim=500 && !AILevel
trigger1= Command="FF" || Command="BB"
trigger1= Animelemtime(1)>=1 && Animelemtime(7) < 0
trigger2= Command="FF" || Command="BB"
trigger2= MoveContact && Animelemtime(9) > 0
value= Ifelse(Command="FF",101,105)

[State 500, Dash / BackDash AI forward dash]
type= changeState
triggerall= AILevel
triggerall = (Animelemtime(1)>=1 && Animelemtime(7)<0) || (MoveContact && Animelemtime(9)=12)
trigger1 = var(9) = 1 && !MoveGuarded
trigger2 = MoveHit
value= 101

[State 500, Dash / BackDash AI back dash]
type= changeState
triggerall= AILevel
triggerall = (Animelemtime(1)>=1 && Animelemtime(7)<0) || (MoveContact && Animelemtime(9)=12)
trigger1 = var(9) = 2 && !MoveHit
trigger2 = MoveGuarded
value= 105

[state 500, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=================== <Focus Attack Quick Closing> ==================
[Statedef 501]
type=S
movetype=I
physics=S
velset=0,0
ctrl=0
anim= 501

[State 501, Dash / BackDash Human]
type= changeState
triggerall= Anim=501 && NumTarget(502)
trigger1= !AILevel
trigger1= Command="holdfwd" || Command="holdback"
trigger1= Animelemtime(2)=1
value= Ifelse(Command="holdfwd",101,105)

[State 501, Dash / BackDash AI forward dash]
type= changeState
triggerall= AILevel
trigger1= (var(10)>1 && Animelemtime(1)=1) || (var(10)=1 && Animelemtime(2)=1)
trigger1= NumTarget(502)
trigger1= Target(502),StateNo=502
value= 101

[State 501, Dash / BackDash AI back dash]
type= changeState
triggerall= AILevel
trigger1= (var(10)>1 && Animelemtime(1)=1) || (var(10)=1 && Animelemtime(2)=1)
trigger1= NumTarget(502)
trigger1= Target(502), StateNo != 502 && Target(502), StateNo < 5000
value= 105

[State 500, EX-Cancel Flash]
type = PalFX
triggerall= (var(18) & 4)
triggerall = time %2=0
trigger1 = time < 15
time = 1
add = 160,120,20
ignorehitpause = 1

[state 501, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;=================== <Focus Attack Target> ==================
[Statedef 502]
type=S
movetype=H
physics=S
velset= 0,0
ctrl=0

[state 502, veladd]
type= velset
trigger1= GetHitVar(fall)
trigger1= !time
x= -3
y= -4

[state 502, end]
type=Selfstate
trigger1= GetHitVar(fall)
trigger1= !time
value= 5035

[State 502, anim]
type= changeanim2
trigger1= !time
value= 502

[State 502, 1]
type = VelSet
trigger1 = time = 21
x = -20

[State 502, 3] ;Stop sliding back
type = VelMul
trigger1 = time > 21
x = 0.8

[State 502, 4]
type = null; VelSet
trigger1 = HitOver
x = 0

[State 502, 5]
type = DefenceMulSet
trigger1 = HitOver
value = 1

[state 502, end]
type=Selfstate
trigger1= !animtime
value= 5120
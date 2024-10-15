;===========<Chun-Li JJs Special moves>==========
;===========<by Beterhans>========================

;==================<Kikoken (気功拳)>===============
[Statedef 1000]
type=S
physics=S
movetype=A
anim=1000
ctrl=0
velset=0,0
poweradd=72*!var(20)
sprpriority=1
facep2=1


[State 1000, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10) = ifelse(command="z",3,ifelse(command="y",2,1))

[State 1000, strengthvarAI]
type=varset
trigger1= !time && AIlevel
var(10) = IFElse(P2MoveType = H && P2Bodydist x < 90, 2 + (Random < 780) ,1)

[State 1000, combo 5300]
type=varset
trigger1 = var(59) = 5300
trigger1= !time && AIlevel
var(10) = 2

[State 1000, Light QiGong Anim]
type=ChangeAnim
triggerall= Anim = 1000
trigger1 = Animelemtime(2)=3 && (var(10) = [1,2])
value = 1001

[State 1000, width]
type=width
trigger1= Anim = 1000 && animelemtime(6)=0
trigger2= Anim = 1001 && animelemtime(4)=0
value=30,0

[State 1000, QiGong]
type=helper
trigger1= Anim = 1000 && animelem=6
trigger2= Anim = 1001 && animelem=4
helpertype=normal
stateno=1005
ID=1005
name="QiGong"
postype=p1
pos = 68 + 8 *(Anim = 1001), -57  - 2 *(Anim = 1001)
ownpal=1
size.xscale=1
size.yscale=1

[State 1000, snd]
type=playsnd
trigger1= Anim = 1000 && animelem=5
trigger2= Anim = 1001 && animelem=3
value=5040,1
channel=0

[State 1000, snd]
type=playsnd
trigger1= Anim = 1000 && animelem=6
trigger2= Anim = 1001 && animelem=4
value=1005,2
channel=3

[State 1000, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 1000, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= Anim = 1000 && animelemtime(6)>0
trigger2= Anim = 1001 && animelemtime(4)>0
value=1
persistent=0
ignorehitpause=1

[State 1000, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1

;===================< Kikoken (気功拳) EX >=========
[Statedef 1010]
type=S
physics=S
movetype=A
anim=1010
ctrl=0
velset=0,0
poweradd=-500
sprpriority=1
facep2=1


[State 1010, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse(command="z",2,1)

[State 1010, strengthvar]
type=varset
trigger1= !time && AIlevel
var(10)=ifelse((P2MoveType = H && (StateNO != [5100,5199]))|| var(4) >= 2 ,2,1)

[State 1010, Light QiGong Anim]
type=ChangeAnim
triggerall= Anim = 1010
trigger1 = Animelemtime(2)=2 && var(10) = 1
value = 1001

[State 1010, width]
type=width
trigger1= Anim = 1010 && animelemtime(6)=0
trigger1= Anim = 1001 && animelemtime(4)=0
value=30,0

[State 1010, Palfix]
type = PalFX
trigger1 = time %3=1
trigger1 = animelemtime(12) < 0
time = 1
add = 160,120,20
ignorehitpause = 1

[State 1010, AfterImage]
type = AfterImage
trigger1 = !time
time = 22
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 180 , 130 , 0
PalContrast = 180 , 100 , 12
IgnoreHitPause = 1
Persistent = 1

[State 1010, EXFX]
type=explod
trigger1= animelemtime(1)=1
anim=6301
ID=6301
sprpriority=2
postype=p1
pos=28,-52
scale=0.7,0.85
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 1010, QiGong EX]
type=helper
trigger1= anim = 1010 && animelem=6
trigger2= anim = 1001 && animelem=4
helpertype=normal
stateno=1015
ID=1015
name="QiGong EX"
postype=p1
pos=64,-57
ownpal=1
size.xscale=1
size.yscale=1
persistent=0

[State 1010, snd]
type=playsnd
trigger1= anim = 1010 && animelem=5
trigger2= anim = 1001 && animelem=3
value=5030,2
channel=0

[State 1010, snd]
type=playsnd
trigger1= anim = 1010 && animelem=6
trigger2= anim = 1001 && animelem=4
value=3000,4
channel=1

[State 1010, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===================< Tensho kyaku 天昇脚 >==============
[Statedef 1100]
type=S
physics=S
movetype=A
ctrl=0
juggle=8 - P2StateType=A
velset=0,0
poweradd=120*!var(20)
sprpriority=1
facep2=1

[state 1100, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)= ifelse(command="holdc",3,ifelse(command="holdb",2,1))
persistent=0


[state 1100, strengthvar]
type=varset
trigger1= !time && AIlevel && var(10)!=3
var(10)= ifelse(p2statetype=A,1,ifelse(p2bodydist x>20,2,3))
persistent=0

[state 1100, strengthvar]
type=varset
trigger1= !time && AIlevel && var(10)=3
var(10)= 3
persistent=0

[state 1100, strengthvar]
type=varset
trigger1= !time && PrevStateNo = 227
var(10)= 3
persistent=0

[state 1100, playanim]
type=changeanim
trigger1= !time && var(10)
value= ifelse(var(10)=3,1102,ifelse(var(10)=2,1101,1100))
persistent=0

[State 1100, nothitby]
type=nothitby
trigger1= animelemtime(1)=1
value=SCA
time=3
ignorehitpause=1

[State 1100, dust]
type=helper
trigger1= animelemtime(1)=1
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1
ignorehitpause=1

[state 1100, velsetall]
type=velset
trigger1= animelemtime(2)=0
x=2
y= const(velocity.jump.y) * const(size.yscale) / 1.5
persistent=0

[state 1100, velfix for x]
type=veladd
trigger1= vel x>0 && animelemtime(5)>0
x=-0.1

[state 1100, velfix for y]
type=veladd
trigger1= animelem=4
trigger2= (var(10)=2 && anim=1101) && animelem=8
trigger3= (var(10)=3 && anim=1102) && (animelem=8 || animelem=11)
y= const(velocity.jump.y) * const(size.yscale) / 2.4

[state 1100, changetype]
type=statetypeset
trigger1= animelemtime(2)=0
statetype=A
physics=A

[state 1100, voice]
type=playsnd
trigger1= animelem=3
value= 5040,0
channel=0
persistent=0

[state 1100, windsound]
type=playsnd
trigger1= animelem=3 || animelem=7
trigger2= (var(10)=2 && anim=1101) && animelem=10
trigger3= (var(10)=3 && anim=1102) && (animelem=10 || animelem=14)
value= 210,1
channel=3

[State 1100, hit 1]
type=hitdef
trigger1= animelemtime(1)>1 && animelemtime(1)<=3
attr=S,SA
damage= 60,10
animtype=Hard
hitflag=MAF
guardflag=M
priority=5,Hit
guard.dist= 100
pausetime= ifelse(var(20),6,12), ifelse(var(20),4,8)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-53
hitsound=s310,0
guardsound=s400,0
yaccel=.4
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity= 1,-8
air.type=Low
air.velocity= 0,-7.5
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
envshake.time=16
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=1
fall.recovertime = 22
fall.animtype=Hard
forcestand=1
persistent=0
ID=1101

[State 1100, remaining hits]
type=hitdef
trigger1= animelem=4 || animelem=8
trigger2= (var(10)=2 && anim=1101) && animelem=11
trigger3= (var(10)=3 && anim=1102) && (animelem=11 || animelem=15)
attr=S,SA
damage= ifelse(hitcount=0,60,30),8
animtype=Up
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= ifelse(var(20),4,8), ifelse(var(20),4,6)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-125
hitsound=s310,1
guardsound=s400,0
yaccel=0.46
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity= 0,-6.2
air.velocity= -1,-4.8 - 7*(AnimElemtime(15)>=0)
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
envshake.time=6
envshake.freq=60
envshake.ampl=2
fall=1
fall.recover = 0
fall.recovertime = 22
fall.animtype=Hard
forcestand=1
ID=1100

[State 1000, OC Release]
type=ctrlset
triggerall= var(20)
trigger1= animelemtime(8)>1
value=1
persistent=0
ignorehitpause=1

;====================<land frame for 1100>====================
[statedef 1103]
type=S
movetype=I
physics=S
velset=0,0
anim=1103
ctrl= 0

[state 1103, posfix]
type=posset
trigger1= !time
y=0

[state 1103, nowalk]
type=assertspecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[State 1103, dust]
type=explod
trigger1= !time
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 1103, snd]
type=playsnd
trigger1= !time
value=10,4
channel=2
persistent=0

[state 1103, ctrl]
type=ctrlset
trigger1= var(10)=1 && animelem=3
value=1
persistent=0

[state 1103, enddown]
type=changestate
trigger1= animelemtime(3)>2 && command="holddown"
value=11
ctrl=1

[state 1103, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===================<SenEnShu (旋円蹴)>==============
[Statedef 1200]
type=A
physics=S
movetype=A
ctrl=0
juggle=ifelse((p2movetype=H && p2statetype=A),6,8)
anim=1200
velset=5.8,0
poweradd=70*!var(20)
sprpriority=1
facep2=1



[state 1200, hitby]
type=hitby
trigger1= animelemtime(1)>1 && animelemtime(8)<0
trigger2= animelemtime(11)>0 && animelemtime(16)<0
value=SA,AA,AP,AT

[state 1200, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)= ifelse(command="holdc",3,ifelse(command="holdb",2,1))
persistent=0

[state 1200, strengthvar ai]
type=varset
trigger1= !time && AIlevel
var(10)= ifelse(p2bodydist x<50,1,ifelse(p2bodydist x<70,2,3))
persistent=0

[state 1200, veladd]
type=veladd
trigger1= animelem=12
x= ifelse(var(10)=3,8,ifelse(var(10)=2,6,3))
persistent=0

[state 1200, velfix]
type=velset
trigger1= animelem=16
x=0
y=0
persistent=0

[state 1200, liftoff sound]
type=playsnd
trigger1= !time
value=40,0
channel=2
persistent=0

[state 1200, voice]
type=playsnd
trigger1= animelem=10
value= 5030,ifelse(random<400,2,3)
channel=0
persistent=0

[state 1200, windsound]
type=playsnd
trigger1= animelem=13
value= 210,0
channel=3
persistent=0

[State 1200, dust]
type=explod
trigger1= animelemtime(13)=6
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=56,0
vel=2,0
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 1200, hit1]
type=hitdef
triggerall= anim=1200 && hitcount=0
trigger1= animelem=11 || animelem=12
attr=A,SA
damage= Ifelse(hitcount,30,70),8
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= ifelse(var(20),5,10), ifelse(var(20),5,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=11),-106,-88)
hitsound=s310,0
guardsound=s400,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,-6
ground.cornerpush.veloff= 0
guard.velocity= -9.89
guard.cornerpush.veloff= -12.74
air.type=Low
air.velocity=-2.5,-6.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=1
fall.recovertime = 22
forcestand=1
envshake.time=12
envshake.freq=60
envshake.ampl=2

[State 1200, hit2]
type=hitdef
triggerall= anim=1200 && hitcount<=1
trigger1= animelem=13 || animelem=14 || animelem=15
attr=A,SA
damage= Ifelse(hitcount,30,70),8
animtype=Hard
guardflag=H
hitflag=MAF
priority=5,Hit
pausetime= ifelse(var(20),5,10), ifelse(var(20),5,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=13),-126,ifelse((animelem=14),-128,-86))
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,12
ground.cornerpush.veloff= 0
guard.velocity= -8.89
guard.cornerpush.veloff= -9.74
air.type=Low
air.velocity=-2.5,ifelse(p2dist x<0,15.8,11.8)
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), 9
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=1
fall.recovertime = 22
forcestand=1
envshake.time=10
envshake.freq=60
envshake.ampl=2

[State 1200, hit3]
type=hitdef
triggerall= hitcount<=1
trigger1= animelem=16
attr=C,SA
damage= Ifelse(hitcount,30,70),8
animtype=Hard
guardflag=L
hitflag=MAFD
priority=5,Hit
pausetime= ifelse(var(20),5,12), ifelse(var(20),5,12)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-10
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,0
ground.cornerpush.veloff= 0
guard.velocity= -8.89
guard.cornerpush.veloff= -9.74
air.type=Low
air.velocity=-2.5,0
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), 9
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall=1
fall.recover=1
fall.recovertime = 22
forcestand=0
envshake.time=16
envshake.freq=60
envshake.ampl=4

[state 1200, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===================<SenEnShu (旋円蹴) EX>==============
[Statedef 1205]
type=A
physics=S
movetype=A
ctrl=0
juggle=6
anim=1205
velset=5.8,0
poweradd=-500
sprpriority=1
facep2=1


[state 1205, hitby]
type=hitby
trigger1= animelemtime(1)>1 && animelemtime(8)<0
trigger2= animelemtime(11)>0 && animelemtime(16)<0
value=SA,AA,AP,AT

[state 1205, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)= ifelse(command="holdc",2,1)
persistent=0

[state 1205, strengthvar ai]
type=varset
trigger1= !time && AIlevel
var(10)= ifelse(p2bodydist x<30,1,2)
persistent=0

[state 1205, veladd]
type=veladd
trigger1= animelem=12
x= ifelse(var(10)=2,7.2,5.8)
persistent=0

[state 1205, velfix]
type=velset
trigger1= animelem=16
x=0
y=0
persistent=0

[state 1205, liftoff sound]
type=playsnd
trigger1= !time
value=40,0
channel=2
persistent=0

[state 1205, voice]
type=playsnd
trigger1= animelem=10
value= 5030,ifelse(random<400,2,3)
channel=0
persistent=0

[State 1205, exsnd]
type=playsnd
trigger1= animelemtime(9)=0
value=3000,4
channel=1
persistent=0

[State 1205, dust]
type=explod
trigger1= animelemtime(13)=6
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=56,0
vel=2,0
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 1205, Palfix]
type = PalFX
trigger1 = time %2=0
trigger1 = animelemtime(9) > 0
time = 1
add = 160,120,20
ignorehitpause = 1

[State 1205, AfterImage]
type = AfterImage
trigger1 = animelemtime(9)=0
time = 27
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 180 , 130 , 0
PalContrast = 180 , 100 , 12
IgnoreHitPause = 1
Persistent = 1

[State 1205, EXFX]
type=explod
trigger1= animelemtime(10)=1
anim=6301
ID=6301
sprpriority=2
postype=p1
pos=0,-64
scale=0.7,0.85
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0


[State 1205, hit1]
type=hitdef
triggerall= anim=1205
trigger1= animelem=11 || animelem=12
attr=A,SA
damage= 20,8
animtype=Hard
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= 5,5
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=11),-106,-88)
hitsound=s310,0
guardsound=s400,0
ground.type=High
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,-6
ground.cornerpush.veloff= 0
guard.velocity= -9.89
guard.cornerpush.veloff= -12.74
air.type=Low
air.velocity=-2.5,-6.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=1
fall.recover=0
fall.recovertime = 22
forcestand=1
envshake.time=12
envshake.freq=60
envshake.ampl=2

[State 1205, hit2]
type=hitdef
triggerall= anim=1205
trigger1= animelem=13 || animelem=14 || animelem=15
attr=A,SA
damage= 35,10
animtype=Hard
guardflag=H
hitflag=MAF
priority=5,Hit
pausetime= 5,5
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,ifelse((animelem=13),-126,ifelse((animelem=14),-128,-86))
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,12
ground.cornerpush.veloff= 0
guard.velocity= -8.89
guard.cornerpush.veloff= -9.74
air.type=Low
air.velocity=-2.5,11.8
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), 9
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=1
fall.recover=0
fall.recovertime = 22
forcestand=1
envshake.time=10
envshake.freq=60
envshake.ampl=2

[State 1205, hit3]
type=hitdef
trigger1= animelem=16
attr=C,SA
damage= 80,10
animtype=Hard
guardflag=L
hitflag=MAFD
priority=5,Hit
pausetime= 5,5
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-10
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=16
ground.hittime=16
ground.velocity=-1,0
ground.cornerpush.veloff= 0
guard.velocity= -8.89
guard.cornerpush.veloff= -9.74
air.type=Low
air.velocity=-2.5,0
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), 9
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=1
fall.recover=0
fall.recovertime = 22
forcestand=0
envshake.time=16
envshake.freq=60
envshake.ampl=4

[state 1205, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===================<Hazanshu(覇山蹴)>==============
[Statedef 1250]
type=S
physics=N
movetype=A
ctrl=0
juggle=1
velset=0,0
poweradd=90*!var(20)
sprpriority=1
facep2=1

[state 1250, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)= ifelse(command="holdc",3,ifelse(command="holdb",2,1))
persistent=0

[state 1250, strengthvar ai]
type=varset
trigger1= !time && AIlevel
var(10)= IFElse(P2Bodydist x > 130,3,IFElse(P2Bodydist x < 75,1,2))
persistent=0

[State 1250, PlayAnim]
type = ChangeAnim
trigger1 = time = 0
value = 1250 + (var(10) - 1)

[State 1250, NHB]
type = HitBy
triggerall = Anim = [1250,1252]
trigger1 = AnimElemTime(2)>= 0
value = SCA,AA,HP

[state 1250, jump point]
type=velset
triggerall = Anim = [1250,1252]
trigger1= AnimElemTime(2)=0
x = 1 + var(10)
y = -3 - (var(10)/2.0)
persistent=0

[state 1250, Gravity]
type=veladd
triggerall = Anim = [1250,1252]
trigger1 = AnimElemTime(2)>= 0
y = 0.3

[state 1250, changetype]
type = StateTypeSet
triggerall = Anim = [1250,1252]
trigger1 = AnimElemTime(2)= 0
statetype=A
movetype=A

[state 1250, liftoff sound]
type=playsnd
triggerall = Anim = [1250,1252]
trigger1= AnimElemTime(2)=0
value=40,0
channel=2
persistent=0


[state 1250, voice];Hazanshu
type=playsnd
triggerall = Anim = [1250,1252]
trigger1= AnimElemTime(2)=0
value= 5040,4
channel=0
persistent=0

[state 1250, windsound]
type=playsnd
triggerall = Anim = [1250,1252]
trigger1= AnimElemTime(5)=0
value= 210,0
channel=3
persistent=0

[State 1250, dust up]
type = explod
triggerall = Anim = [1250,1252]
trigger1= AnimElemTime(2)=0
anim= 7103
ID= 7103
sprpriority=3
postype = p1
pos = 56,0
vel = 0,0
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0


[state 1250, Hit]
type = ChangeAnim
triggerall = Anim = [1250,1252]
triggerall= AnimElemTime(2)>=0
trigger1 = !AnimTime
trigger2 = Pos y >=0 && vel y >= 0
value=1253
ignorehitpause = 1

[State 1250, Fix]
type = Velset
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
x = 0
y = 0
ignorehitpause = 1

[State 1250, Fix]
type = PosSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
y = 0
ignorehitpause = 1

[state 1250, changetype]
type = StateTypeSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
statetype=C
movetype=A

[State 1250, dust Down]
type = explod
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
anim= 7102
ID= 7102
sprpriority = 0
postype = p1
pos = 0,0
vel = 0,0
Scale = 1.5 * Const(Size.xScale) , 1.5 * Const(Size.yScale)
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0
ignorehitpause = 1

[State 1250, dust Down 2]
type = explod
trigger1 = Anim = [1250,1252]
trigger1 = AnimElemTime(18)=0
anim= 7106
ID= 7106
sprpriority = 2
postype = p1
pos = 70,14
facing = -1
vel = 0,0
Scale = 0.5 * Const(Size.xScale) , 0.5 * Const(Size.yScale)
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0
ignorehitpause = 1

[state 1250, land sound]
type=playsnd
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
value=40,3
channel=2
persistent=0

[State 1250, land hit]
type=hitdef
trigger1 = Anim = 1253
trigger1 = !(MoveContact || MoveReversed)
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
attr = C,SA
damage= 80,10
animtype=Hard
guardflag=H
hitflag=MAFD
priority=4,Hit
pausetime = ifelse(var(20),6,10), ifelse(var(20),10,12)
sparkno = s7020+(random%8)
guard.sparkno=s7001
sparkxy =-10,-10
hitsound = s310,0
guardsound=s400,0
ground.type=low
ground.slidetime = 22
ground.hittime = 22
ground.velocity = -3,0
ground.cornerpush.veloff= 0
guard.velocity= -8
guard.cornerpush.veloff= -8
air.type = Low
air.velocity = -1, 12
airguard.ctrltime= 16
yaccel= 0.5
getpower = ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower = 36,36
fall=0
air.fall = 1
fall.recover=0
fall.recovertime = 22
forcestand=0
envshake.time=12
envshake.freq=80
envshake.ampl=6
envshake.phase=-90
ID = 1250

[State 1250, Target in air]
Type = TargetState
triggerall = NumTarget(1250)
triggerall = Target(1250),StateType = A
trigger1 = Target(1250),StateNo = [5000,5100]
trigger1 = Target(1250),Pos y >= -10
value = 1115080
ignorehitpause = 1
persistent = 0


[state 1250, land Shake]
type = EnvShake
trigger1 = Anim = 1253
trigger1 = !(MoveContact || MoveReversed)
trigger1 = AnimElemTime(1)=0
time = 12
freq = 80
ampl = 4
phase = -90
ignorehitpause = 1

[state 1250, Idle]
type = StateTypeSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(5)=0
statetype=C
movetype=I

[State 1250, End Croch]
type = ChangeState
triggerall = Anim = 1253
triggerall = AnimElemTime(8)>=0
trigger1 = AILevel = 0
trigger1 = Command = "holddown"
trigger2 = AILevel >= 1
trigger2 = Random < (400 * (AIlevel ** 2 / 64.0))
value = 11
ctrl = 1

[State 1250, End stand]
type = ChangeState
trigger1 = Anim = 1253
trigger1 = !AnimTime
value = 0
ctrl = 1


;===================<Hazanshu(覇山蹴) EX>==============
[Statedef 1255]
type=S
physics=N
movetype=A
anim = 1255
ctrl=0
juggle=1
velset=0,0
poweradd=90*!var(20)
sprpriority=1
facep2=1

[state 1255, strengthvar]
type=varset
trigger1= !time
var(10)= 4
persistent=0

[State 1255, EX Snd]
type = playsnd
trigger1 = anim = 1255
trigger1 = animelemtime(1) = 0
value = 3000,4
channel = 1
persistent = 0

[State 1255, EX Palfix]
type = PalFX
trigger1 = time %3 != 2
time = 1
add = 160,120,20
ignorehitpause = 1

[State 1255, EX AfterImage]
type = AfterImage
trigger1 = anim = 1255
trigger1 = animelemtime(2) = 0
time = 32
trans = add
length   = 6
timegap  = 3
framegap = 2
PalBright = 180 , 130 , 0
PalContrast = 180 , 100 , 12
IgnoreHitPause = 1
Persistent = 1

[State 1255, EXFX]
type = explod
trigger1 = anim = 1255
trigger1 =  animelemtime(1) = 1
anim = 6301
ID = 6301
sprpriority = 2
postype = p1
pos = 0,-64
scale = 0.7,0.85
ownpal = 1
pausemovetime = -1
supermovetime = -1
persistent = 0



[State 1255, NHB]
type = NotHitBy
triggerall = Anim = 1255
trigger1 = AnimElemTime(1)>= 0
value = SCA,AA,AP,AT

[state 1255, jump point]
type=velset
triggerall = Anim = 1255
trigger1= AnimElemTime(2)=0
x = IFElse((P2Bodydist x / 34) <= 6.4,(P2Bodydist x / 34),6.4 )
y = -9
persistent=0

[state 1255, Gravity]
type=veladd
triggerall = Anim = 1255
trigger1 = AnimElemTime(2)>= 0
y = 0.5 + 2.5 * (AnimElemTime(16)>= 0)

[state 1255, changetype]
type = StateTypeSet
triggerall = Anim = 1255
trigger1 = AnimElemTime(2)= 0
statetype=A
movetype=A

[state 1255, liftoff sound]
type=playsnd
triggerall = Anim = 1255
trigger1= AnimElemTime(2)=0
value=40,0
channel=2
persistent=0


[state 1255, voice];Ha
type=playsnd
triggerall = Anim = 1255
trigger1= AnimElemTime(1)=0
value= 5030,9
channel=0
persistent=0

[state 1255, windsound]
type=playsnd
triggerall = Anim = 1255
trigger1= AnimElemTime(5)=0
value= 210,0
channel=3
persistent=0

[State 1255, dust up]
type = explod
triggerall = Anim = 1255
trigger1= AnimElemTime(2)=0
anim= 7103
ID= 7103
sprpriority=3
postype = p1
pos = 56,0
vel = 0,0
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0

[state 1255, voice];HulaEr
type=playsnd
triggerall = Anim = 1255
trigger1= AnimElemTime(17)=0
value= 5040,5
channel=0
persistent=0

[state 1255, Hit]
type = ChangeAnim
triggerall = Anim = 1255
triggerall= AnimElemTime(2)>=0
trigger1 = !AnimTime
trigger2 = Pos y >=0 && vel y >= 0
value=1253
ignorehitpause = 1

[State 1255, Fix]
type = Velset
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
x = 0
y = 0
ignorehitpause = 1

[State 1255, Fix]
type = PosSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
y = 0
ignorehitpause = 1

[state 1255, changetype]
type = StateTypeSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
statetype=C
movetype=A

[State 1255, dust Down]
type = explod
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
anim= 7102
ID= 7102
sprpriority = 0
postype = p1
pos = 0,0
vel = 0,0
Scale = 1.5 * Const(Size.xScale) , 1.5 * Const(Size.yScale)
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0
ignorehitpause = 1

[State 1255, dust Down 2]
type = explod
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
anim= 7106
ID= 7106
sprpriority = 2
postype = p1
pos = 70,14
facing = -1
vel = 0,0
Scale = 0.7 * Const(Size.xScale) , 0.7 * Const(Size.yScale)
ownpal=1
pausemovetime= 256
supermovetime= 256
persistent=0
ignorehitpause = 1

[state 1255, land sound]
type=playsnd
trigger1 = Anim = 1253
trigger1 = AnimElemTime(1)=0
value=40,3
channel=2
persistent=0

[State 1255, land hit]
type=hitdef
trigger1 = Anim = 1253
trigger1 = !(MoveContact || MoveReversed)
trigger1 = AnimElemTime(1) >= 0 && AnimElemTime(3) < 0
attr = C,SA
damage= 120,25
animtype=Hard
guardflag=H
hitflag=MAFD
priority=4,Hit
pausetime = 8 , 8
sparkno = s7020+(random%8)
guard.sparkno=s7001
sparkxy =-10,-10
hitsound = s310,0
guardsound=s400,0
ground.type=low
ground.slidetime = 20
ground.hittime = 20
ground.velocity = -5,12
ground.cornerpush.veloff= 0
guard.velocity= -8
guard.cornerpush.veloff= -8
air.type = Low
air.velocity = -1, 12
airguard.ctrltime= 16
yaccel= 0.5
getpower = 0,0
givepower = 36,36
fall=1
fall.recover=0
fall.recovertime = 22
forcestand=0
envshake.time=12
envshake.freq=80
envshake.ampl=4
envshake.phase=-90
P2StateNo = 1115080
ID = 1255


[state 1255, land Shake]
type = EnvShake
trigger1 = Anim = 1253
trigger1 = !(MoveContact || MoveReversed)
trigger1 = AnimElemTime(1)=0
time = 12
freq = 80
ampl = 4
phase = -90
ignorehitpause = 1

[state 1255, Idle]
type = StateTypeSet
trigger1 = Anim = 1253
trigger1 = AnimElemTime(5)=0
statetype=C
movetype=I

[State 1255, End Croch]
type = ChangeState
triggerall = Anim = 1253
triggerall = AnimElemTime(8)>=0
trigger1 = AILevel = 0
trigger1 = Command = "holddown"
trigger2 = AILevel >= 1
trigger2 = Random < (400 * (AIlevel ** 2 / 64.0))
value = 11
ctrl = 1

[State 1255, End stand]
type = ChangeState
trigger1 = Anim = 1253
trigger1 = !AnimTime
value = 0
ctrl = 1





;==============<Spinning Bird kick>==================
[statedef 1300]
type=A
physics=N
movetype=A
ctrl=0
juggle=ifelse((p2movetype=H && p2statetype=A),6,8)
velset=0,0
poweradd=180*!var(20)
sprpriority=1
facep2=1

[state 1300, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)= ifelse(command="holdc",3,ifelse(command="holdb",2,1))

[state 1300, strengthvarai]
type=varset
trigger1= !time && AIlevel
var(10)= 3 - P2MoveType=H - (PrevStateNo=208)

[state 1300, playanim]
type=changeanim
trigger1= !time && var(10)
value= ifelse(var(10)=3,1302,ifelse(var(10)=2,1301,1300))

[State 1300, posfix 1]
type=posadd
trigger1= animelemtime(7)=0
x= ifelse(P2Dist y < -70,74,ifelse((p2bodydist x=[0,74]),p2bodydist x+13,74))
persistent= 0

[state 1300, veladd]
type=veladd
trigger1= animelemtime(8)=0
x=2.6
persistent= 0

[state 1300, velsubtract]
type=veladd
triggerall= vel x>0
trigger1= anim=1300 && animelemtime(20)>0 && animelemtime(23)<3
trigger2= anim=1301 && animelemtime(28)>0 && animelemtime(31)<3
trigger3= anim=1302 && animelemtime(36)>0 && animelemtime(39)<3
x=-0.2

[state 1300, velfix]
type=velset
trigger1= anim=1300 && animelemtime(24)=0
trigger2= anim=1301 && animelemtime(32)=0
trigger3= anim=1302 && animelemtime(40)=0
x=0
y=0
persistent= 0

[state 1300, NotHitBy crouch attack]
type=hitby
trigger1= animelemtime(9)=1
value= SA,AA,AP
time= ifelse(var(10=1),24,ifelse(var(10)=2,40,56))
persistent=0

[state 1300, voice]
type=playsnd
trigger1= animelem=6
value= 5040,2
channel=0
persistent=0

[state 1300, windsound]
type=playsnd
trigger1= animelem=9 || animelem=13 || animelem=17
trigger2= anim=1301 && (animelem=21 || animelem=25)
trigger3= anim=1302 && (animelem=21 || animelem=25 || animelem=29 || animelem=33)
value= 210,1
channel=3

[state 1300, NoPushCheck]
type=playerpush
triggerall= p2statetype=c
trigger1= anim=1300 && animelemtime(9)>=1 && animelemtime(16)<=2
trigger2= anim=1301 && animelemtime(9)>=1 && animelemtime(24)<=2
trigger3= anim=1302 && animelemtime(9)>=1 && animelemtime(32)<=2
value=0

[State 1300, hits]
type=hitdef
trigger1= anim=1300 && (animelem=8 || animelem=9 || animelem=13 || animelem=17 || animelem=18)
trigger2= anim=1301 && (animelem=8 || animelem=9 || animelem=13 || animelem=17 || animelem=21 || animelem=25 || animelem=26)
trigger3= anim=1302 && (animelem=8 || animelem=9 || animelem=13 || animelem=17 || animelem=21 || animelem=25 || animelem=29 || animelem=30 || animelem=34)
attr=A,SA
damage= IFElse(HitCount = 0,65,15),10
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),4,6), ifelse(var(20),4,8)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-85
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity=-5.8,0
ground.cornerpush.veloff= -8.6
guard.velocity= -8.2
guard.cornerpush.veloff= -9.2
air.type=Low
air.velocity=-3.6,-4
airguard.ctrltime= 24
airguard.velocity= ifelse(var(20),-4,-6.9), -4.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall= ifelse(hitcount>3,1,0)
fall.recover=1
fall.recovertime = 22
forcestand=0
envshake.time=12
envshake.freq=60
envshake.ampl=2

[state 1300, changetype]
type=statetypeset
trigger1= anim=1300 && animelem=23
trigger2= anim=1301 && animelem=31
trigger3= anim=1302 && animelem=41
statetype=S
movetype=I
persistent=0

[state 1300, changetype]
type=CtrlSet
trigger1= anim=1300 && animelem=24
trigger2= anim=1301 && animelem=32
trigger3= anim=1302 && animelem=42
value=1
persistent=0

[state 1300, nowalk]
type=assertspecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[state 1300, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==============<Spinning Bird kick EX>==================
[statedef 1305]
type=A
physics=N
movetype=A
ctrl=0
juggle=ifelse((p2movetype=H && p2statetype=A),2,8)
velset=0,0
anim=1305
poweradd=-500
sprpriority=1
facep2=1



[State 1305, posfix 1]
type=posadd
trigger1= animelemtime(7)=0
x= ifelse(P2Dist y < -70,74,ifelse((p2bodydist x=[0,74]),p2bodydist x+13,74))
persistent= 0

[state 1305, NotHitBy crouch attack]
type=hitby
trigger1= animelemtime(8)>0 && animelemtime(29)<0
value= SA,AA,AP
time=1

[state 1305, voice]
type=playsnd
trigger1= animelem=6
value= 5030,2
channel=0
persistent=0

[state 1305, windsound]
type=playsnd
trigger1= animelem=9 || animelem=13 || animelem=17  || animelem=21 || animelem=25
value= 210,1
channel=3

[State 1205, exsnd]
type=playsnd
trigger1= animelemtime(7) = 0
value=3000,4
channel=1
persistent=0

[state 1305, NoPushCheck]
type=playerpush
trigger1= anim=1305 && animelemtime(9)>=1 && animelemtime(24)<=2
value=0

[State 1305, Palfix]
type = PalFX
trigger1 = time %2=0
trigger1 = animelemtime(7) > 0
time = 1
add = 160,120,20
ignorehitpause = 1

[State 1305, AfterImage]
type = AfterImage
trigger1 = animelemtime(7)=0
time = 55
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 180 , 130 , 0
PalContrast = 180 , 100 , 12
IgnoreHitPause = 1
Persistent = 1

[State 1305, EXFX]
type=explod
trigger1= animelemtime(8)=1
anim=6301
ID=6301
sprpriority=2
postype=p1
pos=0,-75
scale=0.7,0.85
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 1305, hits]
type=hitdef
trigger1= anim=1305 && (animelem=8 || animelem=9 || animelem=13 || animelem=17)
attr=A,SA
damage= ifelse(!hitcount,70,25),10
animtype=diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 1,1
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-85
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=14
ground.hittime=14
ground.velocity= ifelse(p2dist x<0,-9,9),-4.2
ground.cornerpush.veloff= -3.6
guard.velocity= ifelse(p2dist x<0,-6.7,6.7)
guard.cornerpush.veloff= -5.2
air.type=Low
air.velocity=ifelse(p2dist x<0,-9,9),-2.6
airguard.ctrltime= 24
airguard.velocity= ifelse(var(20),-4,-6.9), -4.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall= hitcount>2
fall.recover=0
fall.recovertime = 22
forcestand=1
envshake.time=12
envshake.freq=60
envshake.ampl=4
ID = 1305

[State 1305, lasthit]
type=hitdef
trigger1= anim=1305 && (animelem=21 || animelem=26)
attr=A,SA
damage= ifelse(!hitcount,70,25),10
animtype=diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 1,1
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-85
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=14
ground.hittime=14
ground.velocity= ifelse(p2dist x<0,-9,9),-8
ground.cornerpush.veloff= -3.6
guard.velocity= ifelse(p2dist x<0,-6.7,6.7)
guard.cornerpush.veloff= -5.2
air.type=Low
air.velocity=ifelse(p2dist x<0,-9,9),-7.8
airguard.ctrltime= 24
airguard.velocity= ifelse(var(20),-4,-6.9), -4.2
airguard.cornerpush.veloff= 0
yaccel=.4
getpower= 0,0
givepower=36,36
fall= hitcount>2
fall.recover=0
fall.recovertime = 22
forcestand=1
envshake.time=12
envshake.freq=60
envshake.ampl=4
ID= 1305

[state 1305, changetype]
type=statetypeset
trigger1= anim=1305 && animelem=31
statetype=C
movetype=I
persistent=0

[state 1305, changetype]
type=CtrlSet
trigger1= anim=1305 && animelem=31
value=1
persistent=0

[state 1305, nowalk]
type=assertspecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[state 1305, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;=============<Hyakuretsu Kyaku 百裂脚>==========
[statedef 1400]
type=S
physics=S
movetype=A
ctrl=0
juggle=ifelse((p2movetype=H && p2statetype=A),4,7)
velset=0,0
poweradd=180*!var(20)
sprpriority=1
anim=1400
facep2=1




[state 1400, end hunman]
type = changestate
triggerall = !AIlevel
triggerall = (anim=1401 || anim=1402 || anim=1403) && !animtime
trigger1 = command!="holda" && command!="holdb" && command!="holdc"
trigger1 = command!="a" && command!="b" && command!="c"
trigger2 = command="holdback" || command="holddown"
value=1404


[state 1400, end AI]
type = changestate
triggerall = AIlevel
triggerall = (anim=1401 || anim=1402 || anim=1403) && !animtime
trigger1 = p2dist x < 0 || (p2bodydist x > 42) || p2stateno = 5100 || (p2stateno = [5120,5121]) || (enemynear,ctrl) || !(enemynear,alive)
trigger2 = inguarddist || p2movetype = A || roundstate != 2 || !numenemy
trigger3 = (p2stateno=[120,149]) && enemynear,time>120
trigger4 = roundstate > 2
value=1404

[state 1400, strengthvar]
type=varset
trigger1= !time && !AIlevel
trigger2= anim=1401 && (command="holdb" || command="holdc")
trigger3= anim=1402 && (command="holda" || command="holdc")
trigger4= anim=1403 && (command="holda" || command="holdb")
var(10)= ifelse(command="holda",1,ifelse(command="holdb",2,3))

[state 1400, strengthvarai]
type=varset
triggerall= AIlevel && !time
trigger1= anim=1400 || anim=1401 || anim=1402 || anim=1403
var(10)= IFElse(Random < 500,3,2)

[state 1400, playanim]
type = ChangeAnim
trigger1= anim=1400 && !animtime && var(10)
trigger2= anim=1401 && animelemtime(12)>=3 && var(10)!=1
trigger3= anim=1402 && animelemtime(12)>=2 && var(10)!=2
trigger4= anim=1403 && animelemtime(12)>=1 && var(10)!=3
value= ifelse(var(10)=3,1403,ifelse(var(10)=2,1402,1401))



[state 1400, voice]
type=playsnd
triggerall= time < 20
trigger1= anim=1401 && animelemtime(1)=1
trigger2= anim=1402 && animelemtime(1)=1
trigger3= anim=1403 && animelemtime(1)=1
value= 5040,3
channel=0

[state 1400, voice]
type=playsnd
triggerall= time > 20
triggerall= random<800
trigger1= anim=1401 && animelemtime(1)=1
trigger2= anim=1402 && animelemtime(1)=1
trigger3= anim=1403 && animelemtime(1)=1
value= 5030,4
channel=0

[state 1400, windsound]
type=playsnd
triggerall= anim>1400
trigger1= animelem=3 || animelem=6 || animelem=9 || animelem=12
value= 210,1
channel=3

[state 1400, bugfix]
type=veladd
triggerall= movecontact && numtarget(1400)
trigger1= (target(1400),time=1) && (target(1400),stateno=5020) && (target(1400),statetype=A)
trigger1= (target(1400),frontedgebodydist<2) || (target(1400),backedgebodydist<2)
x=-2
ignorehitpause=1

[State 1400, hit1]
type=hitdef
triggerall= anim>1400
trigger1= animelem=1 || animelem=7
attr=S,SA
damage= 24,10
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,6), ifelse(var(20),6,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-90
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
ground.cornerpush.veloff= -3
guard.velocity= -3
guard.cornerpush.veloff= -7
air.type=Low
air.velocity= -2.8,-3.8
airguard.ctrltime= 24
airguard.velocity= ifelse(var(20),-2,-4.9), -3.8
airguard.cornerpush.veloff= -7
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall= 0
fall.recover=1
fall.recovertime = 22
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
ID=1400

[State 1400, hit2]
type=hitdef
triggerall= anim>1400
trigger1= animelem=4 || animelem=10
attr=S,SA
damage= 24,10
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),2,6), ifelse(var(20),6,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-52
hitsound=s310,1
guardsound=s400,0
ground.type=low
ground.slidetime=22
ground.hittime=22
ground.velocity=-2,0
ground.cornerpush.veloff= -3
guard.velocity= -3
guard.cornerpush.veloff= -7
air.type=Low
air.velocity= -2.8,-3.8
airguard.ctrltime= 24
airguard.velocity= ifelse(var(20),-2,-4.9), -3.8
airguard.cornerpush.veloff= -7
yaccel=.46
getpower= ifelse(p2movetype=H,140,350)*!var(20), 70*!var(20)
givepower=36,36
fall= 0
fall.recover=1
fall.recovertime = 22
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
ID=1400

;==========<Leave frame for 1400>============
[statedef 1404]
type=S
physics=S
movetype=I
ctrl=0
velset=0,0
anim=1404

[state 1404, return]
type=changestate
triggerall= !AIlevel && command = "kkk"
trigger1= command!="holdback" || command!="holddown"
value=1400

[state 1404, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1



;=============<Hyakuretsu Kyaku 百裂脚 EX>==========
[statedef 1405]
type=S
physics=S
movetype=A
ctrl=0
juggle=0
velset=0,0
poweradd=-500
sprpriority=1
anim=1405
facep2=1



[state 1405, NotHitby]
type=NotHitBy
trigger1= !time
value= SCA,AA,AP,AT
time= 5

[State 1405, Posadd]
type= posadd
trigger1= PrevStateNo = 208 || PrevStateNo = 218
trigger1= !time
x= 25
persistent=0

[state 1405, exvar]
type=varset
trigger1= !time
var(21)= 32
persistent=0

[state 1405, exvaradd]
type=varadd
trigger1= (anim=1401 || anim=1402 || anim=1403) && var(21)>0
var(21)= -1

[state 1405, strengthvar]
type=varset
trigger1= !time && !AIlevel
trigger2= anim=1401 && (command="holdb" || command="holdc")
trigger3= anim=1402 && (command="holda" || command="holdc")
trigger4= anim=1403 && (command="holda" || command="holdb")
var(10)= ifelse(command="holdc",3,ifelse(command="holdb",2,1))

[state 1405, strengthvar ai]
type=varset
triggerall= AIlevel && !time
trigger1= anim=1405 || anim=1401 || anim=1402 || anim=1403
var(10)= 3

[state 1405, varoverride]
type=varset
trigger1= var(21)
var(10)=3

[state 1405, playanim]
type=changeanim
trigger1= anim=1405 && !animtime && var(10)
trigger2= anim=1401 && animelemtime(12)>=1 && var(10)!=1
trigger3= anim=1402 && animelemtime(12)>=1 && var(10)!=2
trigger4= anim=1403 && animelemtime(12)>=1 && var(10)!=3
value= 1403

[state 1405, end hunman]
type=null;changestate
triggerall= !AIlevel && !animtime && (anim=1401 || anim=1402 || anim=1403)
trigger1= command!="holda" && command!="holdb" && command!="holdc"
trigger1= command!="pp"
trigger2= command="holdback" || command="holddown"
value=1404

[state 1405, end ai]
type=changestate
triggerall= (anim=1401 || anim=1402 || anim=1403)
trigger1= !animtime
value=1404

[state 1405, voice]
type=playsnd
triggerall= random<800
trigger1= anim=1401 && animelemtime(1)=1
trigger2= anim=1402 && animelemtime(1)=1
trigger3= anim=1403 && animelemtime(1)=1
value= 5030,4
channel=0

[state 1405, windsound]
type=playsnd
triggerall= anim>1400
trigger1= animelem=3 || animelem=6 || animelem=9 || animelem=12
value= 210,1
channel=3

[State 1405, exsnd]
type=playsnd
trigger1= anim=1401 && animelemtime(1)=1
trigger2= anim=1402 && animelemtime(1)=1
trigger3= anim=1403 && animelemtime(1)=1
value=3000,4
channel=1
persistent=0

[state 1405, bugfix]
type=veladd
triggerall= movecontact && numtarget(1400)
trigger1= (target(1400),time=1) && (target(1400),stateno=5020) && (target(1400),statetype=A)
trigger1= (target(1400),frontedgebodydist<2) || (target(1400),backedgebodydist<2)
x=-2
ignorehitpause=1

[State 1405, Palfix]
type = PalFX
trigger1 = time %2=0 && var(21)
time = 1
add = 160,120,20
ignorehitpause = 1

[State 1405, AfterImage]
type = AfterImage
trigger1 = var(21)
time = 25
trans = add
length   = 4
timegap  = 2
framegap = 1
PalBright = 180 , 130 , 0
PalContrast = 180 , 100 , 12
IgnoreHitPause = 1
Persistent = 0

[State 1405, EXFX]
type=explod
trigger1= var(21)
anim=6301
ID=6301
sprpriority=2
postype=p1
pos=23,-72
scale=0.7,0.85
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0


[State 1405, hit1]
type=hitdef
triggerall= anim>1400
trigger1= animelem=1 || animelem=7
attr=S,SA
damage= 40,10
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(21),0,6), ifelse(var(21),4,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-90
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(21),-2,-4),ifelse(var(21),-5.6,0)
ground.cornerpush.veloff= ifelse(var(21),0,-5.2)
guard.velocity= -6.2
guard.cornerpush.veloff= ifelse(var(21),0,-7)
air.type=Low
air.velocity= ifelse(var(21),-2,-4.8),ifelse(var(21),-5.6,-3.8)
airguard.ctrltime= 24
airguard.velocity= ifelse(var(21),-5,-4.9), -3.8
airguard.cornerpush.veloff= -7
yaccel=.36
getpower= 0,0
givepower=36,36
fall= ifelse(var(21),1,0)
fall.recover=0
fall.recovertime = 22
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
ID= ifelse(var(21),1405,1400)

[State 1405, hit2]
type=hitdef
triggerall= anim>1400
trigger1= animelem=4 || animelem=10
attr=S,SA
damage= 40,10
animtype=Hard
guardflag=MA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(21),0,6), ifelse(var(21),4,10)
sparkno=s7020+(random%8)
guard.sparkno=s7001
sparkxy=-10,-52
hitsound=s310,1
guardsound=s400,0
ground.type=low
ground.slidetime=22
ground.hittime=22
ground.velocity= ifelse(var(21),-2,-4),ifelse(var(21),-5.6,0)
ground.cornerpush.veloff= ifelse(var(21),0,-5.2)
guard.velocity= -6.2
guard.cornerpush.veloff= ifelse(var(21),0,-7)
air.type=Low
air.velocity= ifelse(var(21),-2,-4.8),ifelse(var(21),-5.6,-3.8)
airguard.ctrltime= 24
airguard.velocity= ifelse(var(21),-5,-4.9), -3.8
airguard.cornerpush.veloff= ifelse(var(21),0,-7)
yaccel=.36
getpower= 0,0
givepower=36,36
fall= ifelse(var(21),1,0)
fall.recover=0
fall.recovertime = 22
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
ID= ifelse(var(21),1405,1400)


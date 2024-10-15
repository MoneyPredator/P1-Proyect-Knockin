;========[Chin-Li JJ by Beterhans]=========
;========[Super Moves]================

;========<Kikosho (気功掌)>==========
[statedef 3000]
type=S
physics=S
movetype=A
anim=3000
ctrl=0
velset=0,0
facep2=1
poweradd=-1000
sprpriority= -1

[state 3000, posyfix]
type=posset
trigger1= !time
y=0
persistent=0

[State 3000, strengthvar]
type=varset
trigger1= var(10)!=5
var(10)=5
persistent=0

[State 3000, width]
type=width
trigger1= anim=3000 && animelemtime(9)>0
edge=74,0

[state 3000, nothitby]
type=nothitby
trigger1= anim=3000
trigger1= animelemtime(1)>0 && animelemtime(13)<0
value=SCA,AA,AP,AT
time=1


[State 3000, snd]
type=playsnd
trigger1= anim=3000 && animelem=2
value= 5020,2
channel=0
persistent=0

[State 3000, snd]
type=playsnd
trigger1= anim=3000 && animelem=8
value= 5050,1
channel=0
persistent=0

[State 3000, Unguardable Ticks]
type = VarSet
trigger1 = anim=3000 && animelemtime(1)=2 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 76

[State 3000, Zoom Helper]
type = helper
trigger1 = !NumHelper(7660)
trigger1 = !var(34) && !var(33); && Abs(P2Dist y) < 140
trigger1 = anim = 3000 && animelemtime(1) = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3000, superchargepause]
type=superpause
trigger1= anim=3000 && animelemtime(1)=2
time=68
anim=-1
sound=s3000,2
p2defmul=1
darken=0
movetime=68
persistent=0

[State 3000, superchargehelper]
type=helper
trigger1= anim=3000 && animelemtime(4)=0
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos=-24,-110
ownpal=1
supermovetime=65535
persistent=0

[state 3000, helper qigong]
type=helper
trigger1= anim=3000 && animelem=11
helpertype=normal
stateno=3005
ID=3005
name="Super QiGong"
postype=p1
pos=60,-66
ownpal=1
persistent=0

[State 3000, dust]
type=explod
trigger1= animelemtime(11)=2
vel=0,0
anim=7106
sprpriority=3
postype=p1
pos=60,0
ownpal=1
scale=.8,.8
pausemovetime=-1
supermovetime=-1
persistent=0

[state 3000, changetype]
type=statetypeset
trigger1= anim=3000 && animelem=42
movetype=I
persistent=0

[state 3000, end]
type= changestate
trigger1= !animtime
value=0
ctrl=1


;=========< Hazan Tenshokyaku (覇山天翔脚) >=========
[statedef 3100]
type=S
physics=S
movetype=A
anim=3100
ctrl=0
velset=0,0
juggle=6
facep2=1

[state 3100, posyfix]
type=posset
trigger1= !time
y=0
persistent=0


[State 3100, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse((command="c") && (power >= 2000 && !var(20)),7,5)
persistent=0

[State 3100, strengthvarai]
type=varset
trigger1= !time && AIlevel
var(10)=ifelse((p2life=[370,502])||(random<128)&&(power > 2000 && !var(20)),7,5)
persistent=0

[state 3100, poweradd]
type=poweradd
trigger1= !time && var(10)
value= ifelse(var(10)=7,-2000,-1000)
persistent=0

[State 3100, snd]
type=playsnd
trigger1= anim=3100 && animelem=3
value= 5050,2
channel=0
persistent=0

[State 3100, snd]
type=playsnd
trigger1= anim=3100 && animelem=9
value= 5040,0
channel=0
persistent=0

[state 3100, windsound]
type=playsnd
triggerall= anim=3100 && (animelemtime(10)>0 && animelemtime(46)<0)
trigger1= animelem=10 || animelem=14 || animelem=17 || animelem=21
trigger2= animelem=24 || animelem=28 || animelem=31 || animelem=35
trigger3= animelem=38 || animelem=42
value= 210,1
channel=3

[state 3100, nothitby]
type=nothitby
trigger1= animelemtime(1)>0 && animelemtime(8)<2
value=SCA,AA,AP,AT
time=1

[State 3100, Unguardable Ticks]
type = VarSet
trigger1 = anim=3100 && animelemtime(1)=1 && NumEnemy
trigger1 = (EnemyNear, StateNo != [120,155])
var(17) = 56

[State 3100, Zoom Helper]
type = helper
trigger1 = !NumHelper(7660)
trigger1 = !var(34) && !var(33); && Abs(P2Dist y) < 140
trigger1 = anim = 3100 && animelemtime(1) = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3100, superchargepause]
type=superpause
trigger1= anim=3100 && animelemtime(1)=1
time=52
anim=-1
sound=s3000,2
p2defmul=1           ;
darken=0
movetime=52
persistent=0

[State 3100, superchargehelper]
type=helper
trigger1= anim=3100 && animelemtime(1)=2
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos= -27,-7
ownpal=1
supermovetime=65535
persistent=0

[state 3100, setvel]
type=velset
trigger1= anim=3100 && animelemtime(9)=0
x= 3 * const(size.xscale)
y= const(velocity.jump.y) * const(size.yscale) / 1.6

[state 3100, changetoairmode]
type=statetypeset
trigger1= anim=3100 && animelemtime(9)=2
statetype=A
physics=A

[state 3100, veladd]
type=veladd
triggerall= anim=3100 && (animelemtime(10)>0 && animelemtime(46)<0)
trigger1= animelem=10 || animelem=14 || animelem=17 || animelem=21
trigger2= animelem=24 || animelem=28 || animelem=31 || animelem=35
trigger3= animelem=38 || animelem=42
y= const(velocity.jump.y) * const(size.yscale) / (3.1 - 0.3*(var(10)=7))

[state 3100, velx]
type=veladd
trigger1= vel x>=0.2 && animelemtime(24)>1
x= -0.1

[State 3100, hit 1]
type=hitdef
trigger1= anim=3100 && animelem=8
attr=S,HA
damage= 80,10
animtype=hard
hitflag=MAF
guardflag=M
priority=6,Hit
guard.dist= 70
pausetime= 8,8
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-76
hitsound=s310,0
guardsound=s400,0
yaccel=.4
ground.type=Low
ground.slidetime=26
ground.hittime=26
ground.velocity= 0,-11
air.type=Low
air.velocity= 0,-10
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= ifelse(p2movetype=H,90,154)*!var(20)
givepower=36,36
envshake.time=20
envshake.freq=50
envshake.ampl=8
fall=1
fall.recover=0
fall.animtype=hard
forcestand=1
persistent=0
ID = 3100

[State 3100, remaining hits]
type=hitdef
triggerall= anim=3100
trigger1= animelem=11 || animelem=15 || animelem=18 || animelem=22
trigger2= animelem=25 || animelem=29 || animelem=32 || animelem=36
trigger3= animelem=39
attr=A,HA
damage= ifelse(!hitcount,70,20),8
animtype=up
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 4,4
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-125
hitsound=s310,0
guardsound=s400,0
yaccel=.46
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity= 0,-6.2
air.velocity= ifelse(animelemtime(26)>0,-1.2,-1), ifelse(P2Dist y < -70,-2.2,ifelse(p2dist y>-30,-7.6,-3.2))
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= 0,0
givepower=36,36
envshake.time=8
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
fall.animtype=up
forcestand=1
ID=ifelse(time>103 && var(10)!=7,3101,3100)

[State 3100, last hit]
type=hitdef
triggerall= anim=3100 && var(10)=7
trigger1= animelem=43
attr=A,HA
damage= 80,8
animtype=diagup
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 32,32
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-125
hitsound=s900,1
guardsound=s400,0
yaccel=.46
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity= 0,-6.2
air.velocity= -6.2, ifelse(P2Dist y < -70,-4.2,ifelse(p2dist y>-30,-7.6,-5.2))
ground.cornerpush.veloff= 0
guard.velocity= -10.52
guard.cornerpush.veloff= -12.74
getpower= 0,0
givepower=36,36
envshake.time=28
envshake.freq=56
envshake.ampl=12
fall=1
fall.recover=0
fall.damage=20
forcestand=1
ID=3102

[State 3100, hitRing]
type=explod
triggerall= !NumExplod(6305)
triggerall= anim=3100 && var(10)=7 && numtarget(3102)
triggerall= animelemtime(43)>0 && animelemtime(44)<0 && movehit
trigger1= target(3102),movetype=H && target(3102),stateno>=5000
anim=6305
ID=6305
sprpriority=5
postype=p1
pos=45,-126
trans=addalpha
alpha=256,256
scale=0.8,0.98
pausemovetime=-1
supermovetime=-1
persistent=0
ignorehitpause=1

[state 3100, changetoairmode2]
type=statetypeset
trigger1= anim=3100 && animelemtime(47)=1
movetype=I
persistent=0


;=========< Hoyokusen 鳳翼扇 >=========
[statedef 3200]
type=S
physics=S
movetype=A
anim=3200
ctrl=0
velset=0,0
facep2=1

[state 3200, posyfix]
type=posset
trigger1= !time
y=0
persistent=0

[State 3200, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse((command="c") && (power>=2000 && !var(20)),6,5)
persistent=0

[State 3200, strengthvarai]
type=varset
trigger1= !time && AIlevel
var(10)=ifelse((random<700 || p2life<450) && (power>=2000 && !var(20)),6,5)
persistent=0

[state 3200, poweradd]
type=poweradd
trigger1= !time && var(10)
value= ifelse(var(10)=6,-2000,-1000)
persistent=0

[state 3200, hitby]
type=hitby
trigger1= animelemtime(1)>0 && animelemtime(13)<0
value=SA,AP
time=1
ignorehitpause=1

[state 3200, width]
type= Width
triggerall= anim=3200
trigger1= animelemtime(6)>=0 && animelemtime(9)<0
trigger2= animelemtime(37)>=0 && animelemtime(39)<0
player= 20,0
edge= 80,0
ignorehitpause=1

[State 3200, Zoom Helper]
type = helper
trigger1 = !NumHelper(7660)
trigger1 = !var(34) && !var(33); && Abs(P2Dist y) < 140
trigger1 = anim = 3200 && animelemtime(1) = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3200, superchargepause]
type=superpause
trigger1= anim=3200 && animelemtime(1)=1
time=69
anim=-1
sound=s3000,3
p2defmul=1
darken=0
movetime=69
persistent=0

[State 3200, superchargehelper]
type=helper
trigger1= anim=3200 && animelemtime(1)=1
helpertype=normal
stateno=6302
ID=7500
name="Super Charge SF3"
postype=p1
pos= -19,-48
ownpal=1
supermovetime=65535
persistent=0

[State 3200, posfix 1]
type=posadd
trigger1 = animelem = 8
x = ifelse(P2Dist y < -70,45,ifelse((p2bodydist x=[0,45]),p2bodydist x+10,45))
persistent=0
ignorehitpause=1

[State 3200, posfix 2]
type=posadd
trigger1 = animelem = 9
x = ifelse(P2Dist y < -70,54,ifelse((p2bodydist x=[0,54]),p2bodydist x+10,54))
persistent=0
ignorehitpause=1

[state 3200, velset 1]
type=velset
trigger1= animelemtime(9)=1
x=3
persistent=0
ignorehitpause=1

[state 3200, velset 2]
type=velset
trigger1= animelemtime(37)=1
x=5.2
persistent=0
ignorehitpause=1

[state 3200, velset 2]
type=velset
trigger1= animelemtime(39)=2
x=0
persistent=0
ignorehitpause=1


[State 3200, posfix 2]
type=posadd
trigger1=animelem=68
x=ifelse(P2Dist y < -70,18,ifelse((p2bodydist x=[0,18]),p2bodydist x,18))
persistent=0
ignorehitpause=1

[State 3200, posfix 3]
type=posadd
trigger1=animelem=39
x=ifelse(P2Dist y < -70,38,ifelse((p2bodydist x=[0,38]),p2bodydist x,38))
persistent=0
ignorehitpause=1

[state 3200, voice]
type=playsnd
triggerall= anim=3200
trigger1= animelem=13 || animelem=40 || animelem=67
value= 5030,ifelse((animelem=67),4,2)
channel=0
ignorehitpause=1

[state 3200, windsound]
type=playsnd
triggerall= anim=3200
trigger1= animelem=13 || animelem=16 || animelem=19 || animelem=22
trigger2= animelem=25 || animelem=28 || animelem=31 || animelem=34
trigger3= animelem=40 || animelem=43 || animelem=46 || animelem=49
trigger4= animelem=53 || animelem=56 || animelem=59 || animelem=62
trigger5= animelem=68
value= 210,ifelse((animelem=68),0,1)
channel=3
ignorehitpause=1

[State 3200, hit1]
type=hitdef
triggerall= anim=3200
trigger1= animelem=13 || animelem=19 || animelem=25 || animelem=31
trigger2= animelem=40 || animelem=46 || animelem=53 || animelem=59
attr=S,HA
damage= 10,6
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 1,2
sparkno= s7000
guard.sparkno=s7001
sparkxy=-20,-90
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= -1,0
ground.cornerpush.veloff= -1.6
guard.velocity= -2.2
guard.cornerpush.veloff= -1.8
air.type=Low
air.velocity= -1,-3.8
airguard.ctrltime= 24
airguard.velocity= -2.2, -3
airguard.cornerpush.veloff= -1.8
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 0
fall.recover=0
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2

[State 3200, hit2]
type=hitdef
triggerall= anim=3200
trigger1= animelem=16 || animelem=22 || animelem=28 || animelem=34
trigger2= animelem=43 || animelem=49 || animelem=56 || animelem=62
attr=S,HA
damage= 10,6
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 1,2
sparkno= s7000
guard.sparkno=s7001
sparkxy=-20,-52
hitsound=s310,1
guardsound=s400,0
ground.type=low
ground.slidetime=24
ground.hittime=24
ground.velocity= -1,0
ground.cornerpush.veloff= -1.6
guard.velocity= -2.2
guard.cornerpush.veloff= -1.8
air.type=Low
air.velocity= -1,-2.8
airguard.ctrltime= 24
airguard.velocity= -2.2, -3
airguard.cornerpush.veloff= -1.8
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 0
fall.recover=0
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2

[State 3200, last hit Lv1]
type=hitdef
triggerall= anim=3200 && var(10)!=6
trigger1= animelem=68
attr=S,HA
damage= ifelse(p2movetype=H,120,200),20
animtype=up
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 12,12
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-15,-114
hitsound=s310,0
guardsound=s400,0
yaccel=.66
ground.type=high
ground.slidetime=30
ground.hittime=30
ground.velocity= -2.3, -12.2
air.velocity= -2.3, -12.2
ground.cornerpush.veloff= -5.6
guard.velocity= -8.52
guard.cornerpush.veloff= -9.44
getpower= 0,0
givepower=36,36
envshake.time=20
envshake.freq=60
envshake.ampl=4
fall=1
fall.recover=0
forcestand=1
mindist=44,-110
maxdist=60,-22
ID=3200

[State 3200, last hit Lv2]
type=hitdef
triggerall= anim=3200 && var(10)=6
trigger1= animelem=68
attr=S,HA
damage= ifelse(p2movetype=H,200,280),20
animtype=up
guardflag=M
hitflag=MAF
priority=5,Hit
pausetime= 22,22
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-15,-114
hitsound=s900,1
guardsound=s400,0
yaccel=.76
ground.type=high
ground.slidetime=30
ground.hittime=30
ground.velocity= -2.6, -16.2
air.velocity= -2.6, -16.2
ground.cornerpush.veloff= -5.6
guard.velocity= -8.52
guard.cornerpush.veloff= -9.44
getpower= 0,0
givepower=36,36
envshake.time=30
envshake.freq=60
envshake.ampl=6
fall=1
fall.recover=0
fall.damage=10
forcestand=1
mindist=44,-110
maxdist=60,-22
ID=3201

[State 3200, hitRing]
type=explod
triggerall= !NumExplod(6305)
triggerall= anim=3200 && animelemtime(68)>0 && animelemtime(69)<0
triggerall= var(10)=6 && numtarget(3201) && movehit
trigger1= target(3201),movetype=H && target(3201),stateno>=5000
anim=6305
ID=6305
sprpriority=5
postype=p1
pos=41,-120
trans=addalpha
alpha=256,256
scale=0.8,0.98
pausemovetime=-1
supermovetime=-1
persistent=0
ignorehitpause=1

[state 3200, superjump]
type=changestate
triggerall= !AIlevel && animelemtime(68)>0 && animelemtime(68)<8 && movehit
trigger1= command="superjump"
value=40

[state 3200, superjumpai]
type=changestate
triggerall= AIlevel && animelemtime(68)>0 && animelemtime(68)<3 && movehit
triggerall= roundstate=2 && NumEnemy && (NumTarget(3200)||NumTarget(3201))
trigger1= random< AIlevel ** 2 / 64.0 * ifelse(var(10)=6,800,620)
value=39


[state 3200, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==============< Tensei Ranka (天星乱華) >==============
[Statedef 3300]
sprpriority=1
type=A
physics=A
movetype=A
anim=3300
ctrl=0

[state 3300, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse((command="holdc") && (power>=2000 && !var(20)),7,5)
persistent=0

[state 3300, strengthvar]
type=varset
trigger1= !time && AIlevel
var(10)=ifelse((power>=2000 && !var(20) && (p2life<100||random<500)),7,5)
persistent=0

[state 3300, poweradd]
type=poweradd
trigger1= !time && var(10)
value= ifelse(var(10)=7,-2000,-1000)
persistent=0

[state 3300, nothitby]
type=nothitby
trigger1= !time
value=SCA,AA,AP,AT
time=1
ignorehitpause=1
persistent=0

[State 3300, Zoom Helper]
type = helper
trigger1 = !NumHelper(7660)
trigger1 = !var(34) && !var(33); && Abs(P2Dist y) < 140
trigger1 = anim = 3300 && animelemtime(1) = 0
stateno = 7660
ID = 7660
name = "ZoomHelper"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 3300, superchargehelper]
type=helper
trigger1= anim=3300 && animelemtime(1)=0
helpertype=normal
stateno=7500
ID=7500
name="Super Charge"
postype=p1
pos= 25,-61
ownpal=1
supermovetime=65535
persistent=0

[State 3300, superchargepause]
type=superpause
trigger1= anim=3300 && animelemtime(1)=0
time=ifelse(var(10)=7,58,52)
anim=-1
sound=s3000,2
p2defmul=1
darken=0
movetime=0
persistent=0

[state 3300, veladd 1]
type=veladd
trigger1= time=1 && vel y>0
x= ifelse((sysvar(1)=-1||prevstateno=640), -(vel x),0)
y= -3.6-(vel y)
persistent=0

[state 3300, veladd 2]
type=veladd
trigger1= animelemtime(5)=5
x= ifelse((sysvar(1)=-1||prevstateno=640), -(vel x),ifelse(sysvar(1)=1,2,0))
y= 9.8
persistent=0

[State 3300, voice]
type=playsnd
trigger1= anim=3300 && animelem=5
value= 5030,2
channel=0
persistent=0

[state 3300, windsound]
type=playsnd
trigger1= anim=3300 && (animelemtime(3)=3 || animelemtime(5)=1)
value= 210,0
channel=3

[state 3300, edgelight]
type=explod
trigger1= anim=3300 && animelemtime(4)=0
anim=6030
ID=6030
sprpriority=2
postype=p1
pos= 16, -54
trans= addalpha
alpha= 140,256
scale= 1,1
pausemovetime=-1
supermovetime=-1
bindtime=-1
persistent=0
ignorehitpause=1

[state 3300, hit 1]
type=hitdef
trigger1= animelem=2
attr=A,HA
damage= 45,10
animtype=Hard
guardflag=H
hitflag=MAF
priority=5,Hit
pausetime= 4,4
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-90
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity= -0.5,0
ground.cornerpush.veloff= 0
guard.velocity= -2.89
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= 0,-((p2dist y)/8)
airguard.ctrltime= 16
airguard.velocity= -6, -2.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=0
fall.recover=0
forcestand=0
envshake.time = 4
envshake.freq = 70
envshake.ampl = 4
ID = 3300

[state 3300, hit 2and3]
type=hitdef
trigger1= animelem=4 || animelem=5
attr=A,HA
damage= 30,10
animtype=Hard
guardflag=H
hitflag=MAF
priority=5,Hit
pausetime= 8,8
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-90
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=16
ground.hittime=16
ground.velocity= 0.5,0
ground.cornerpush.veloff= 0
guard.velocity= -2.89
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= ifelse(vel x>2,-10,0),11.8
airguard.ctrltime= 16
airguard.velocity= -6, -2.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=1
fall.recover=0
forcestand=0
envshake.time = 8
envshake.freq = 60
envshake.ampl = 4
ID = 3300


;=========<land for 3300>========
[Statedef 3301]
velset=0,0
type=S
physics=S
movetype=A
anim=3301
ctrl=0

[state 3301, posfix]
type=posset
trigger1= !time
y=0
persistent=0
ignorehitpause=1

[state 3301, snd]
type=playsnd
trigger1=!time
value= 40,3
channel=2

[state 3301, hit]
type=hitdef
trigger1= animelem=1
attr=C,HA
damage= 120,20
animtype=Hard
guardflag=L
hitflag=MAFD
priority=5,Hit
pausetime= ifelse(var(10)=7,16,12),ifelse(var(10)=7,16,12)
sparkno=s7030+(random%8)
guard.sparkno=s7001
sparkxy=-10,-6
hitsound=s310,0
guardsound=s400,0
ground.type=low
ground.slidetime=18
ground.hittime=18
ground.velocity=-1,0
ground.cornerpush.veloff= 0
guard.velocity= -8.89
guard.cornerpush.veloff= 0
air.type=Low
air.velocity=-2.5,9
airguard.ctrltime= 16
airguard.velocity= -8, 20
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall=1
fall.recover=0
envshake.time= ifelse(var(10)=7,16,12)
envshake.freq=ifelse(var(10)=7,50,60)
envshake.ampl=ifelse(var(10)=7,12,6)


[state 3301, envshake]
type=envshake
trigger1= !time && !movecontact
time=ifelse(var(10)=7,16,12)
freq=ifelse(var(10)=7,50,60)
ampl=ifelse(var(10)=7,12,6)
persistent=0
ignorehitpause=1

[state 3301, helper wave]
type=helper
trigger1= time=1 && var(10)=7
helpertype=normal
stateno=3305
ID=3305
name="Shock Wave"
postype=p1
pos=83,0
ownpal=1
persistent=0
size.xscale= 1
size.yscale= 1
ignorehitpause=1

[state 3301, enddown]
type=changestate
trigger1= animelemtime(6)>3 && command="holddown"
value=10
ctrl=1

[state 3301, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==============<Lv3 SF4 UltraSuper 1 HoSenKa 鳳扇華 >===========
[Statedef 4000]
type=S
physics=S
movetype=A
anim=4000
ctrl=0
velset=0,0
facep2=1

[state 4000, poweradd]
type=poweradd
trigger1= time=1 && var(52)<400
value= -3000
persistent=0
ignorehitpause=1

[state 4000, clear revange gauge]
type=varset
trigger1= time=1 && var(52)>=400
var(52)= 0

[state 4000, posyfix]
type=posset
trigger1= !time
y=0
persistent=0

[State 4000, strengthvar]
type=varset
trigger1= !time
var(10)=7
persistent=0

[state 4000, nothitby]
type=nothitby
trigger1= animelemtime(1)>=0 && animelemtime(11)<0
value=SCA,AA,AT,AP
time=1
ignorehitpause=1

[State 4000, Ultra Zoom Helper Phase 1]
type = helper
trigger1 = !NumHelper(7666) && !NumHelper(7667)
trigger1 = anim = 4000 && animelemtime(5) = 6
stateno = 7666
ID = 7666
name = "Ultra Zoom Helper Phase 1"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
persistent = 0

[State 4000, Ultra Zoom Helper Phase 2]
type = helper
trigger1 = !NumHelper(7666) && !NumHelper(7667)
trigger1 = NumTarget(4001)
trigger1 = (Target(4001),StateNo = [5000,5099])
trigger1 = anim = 4000 && animelemtime(48) = 0
stateno = 7667
ID = 7667
name = "Ultra Zoom Helper Phase 2"
facing = 1
postype = P1
supermovetime = 65535
pausemovetime = 65535
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = Target(4001),ID; Give Parent ID to Child
persistent = 0

[State 4000, Ultra Sound]
type = PlaySnd
trigger1 = anim=4000 && animelemtime(1)=1
value = 3000,7
volumescale = 100
channel = 7
freqmul = 1
abspan = 0

[State 4000, SuperChargePause]
type=superpause
trigger1 = anim=4000 && animelemtime(1)=1
time=69
anim=-1
;sound=s3000,7
p2defmul=1
darken=0
movetime=69
persistent=0

[State 4000, SuperChargeHelper]
type=helper
trigger1= anim=4000 && animelemtime(1)=0
helpertype=normal
stateno=6303
ID=7500
name="Super Charge Ulrta"
postype=p1
pos= -27,-44
ownpal=1
supermovetime=65535
persistent=0

[State 4000, posfix 1]
type = posadd
trigger1 = animelem=9
x = ifelse(P2Dist y < -70,40,ifelse((p2bodydist x = [-11,40]),p2bodydist x+10,40))
persistent=0

[State 4000, posfix 2]
type = posadd
trigger1 = animelem=13
x = ifelse(P2Dist y < -70,50,ifelse((p2bodydist x = [-11,50]),p2bodydist x+10,50))
persistent=0

[State 4000, posfix 3]
type = posadd
trigger1 = animelem=40
x=ifelse(P2Dist y < -70,36,ifelse((p2bodydist x = [-11,36]),p2bodydist x+10,36))
persistent=0

[State 4000, posfix 4]
type = posadd
trigger1 = animelem=54
x = ifelse(P2Dist y < -70,75,ifelse((p2bodydist x = [-11,75]),p2bodydist x+10,75))
persistent = 0

[State 4000, Width]
type = width
trigger1 = Anim=4000
trigger1 = animelemtime(8)>=0 && animelemtime(18)<=0
player = 5,0
edge = 60,0
ignorehitpause = 1

[State 4000, veladd Speed1]
type=veladd
trigger1= animelem=7
x=8 * Const(Size.xScale)
ignorehitpause=1
persistent=0

[State 4000, dust]
type=explod
triggerall= 4000
trigger1= animelem= 7
vel=0,0
anim=7106
sprpriority=3
postype= P1
pos=40,0
ownpal=1
scale=.8,.8
pausemovetime=-1
supermovetime=-1
persistent=0

[State 4000, Voice Trying dodge this]
type=playsnd
trigger1= anim=4000 && animelem=1
value= 5050,4
channel=0
ignorehitpause=1

[State 4000, Voice HoSenKa]
type=playsnd
trigger1= anim=4000 && animelem=56
value= 5050,3
channel=0
ignorehitpause=1

[State 4000, Voice HoSenKa effect]
type=playsnd
trigger1= anim=4000 && animelem=56
value= 3000,6
channel=7
ignorehitpause=1

[state 4000, windsound 1st Hit]
type=playsnd
trigger1= anim=4000 && animelem=9
value= 210,1
channel=3
ignorehitpause=1

[state 4000, windsound 2nd Hits]
type=playsnd
trigger1= Anim=4000 && (animelem=16 || animelem=19 || animelem=22 || animelem=25 || animelem=28 || animelem=31 || animelem=34)
value= 210,1
channel=3
ignorehitpause=1


[state 4000, voice yayaya]
type=playsnd
triggerall= anim=4000
trigger1= animelem= 11
value= 5030,5
channel=0
ignorehitpause=1

[state 4000, voice Sendup]
type=playsnd
triggerall= anim=4000
trigger1= animelem= 37
value= 5030,6
channel=0
ignorehitpause=1


[State 4000, 1st Kick]
type=hitdef
triggerall= anim=4000
trigger1= animelem=10
attr=S,HA
damage= 30,15
animtype=Hard
guardflag=M
hitflag=MAFD
priority=7,Hit
pausetime= 10,20
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-10,-51
hitsound=s900,6
guardsound=s400,0
ground.type=low
ground.slidetime=24
ground.hittime=24
ground.velocity=  -3
ground.cornerpush.veloff= 0
guard.velocity= -3
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= 1.5,-3
airguard.ctrltime= 24
airguard.velocity= -6.2, -4.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 0
fall.recover=0
forcestand=1
envshake.time=24
envshake.freq=80
envshake.ampl=12
ID=4000


[State 4000, uphit1]
type=hitdef
triggerall= anim=4000
trigger1= animelem=17 || animelem=23 || animelem=29 || animelem=35
attr=S,HA
damage= 30,10
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 4,18
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-20,-90
hitsound=s310,1
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= -1.2,0
ground.cornerpush.veloff= -1.6
guard.velocity= -2.2
guard.cornerpush.veloff= -1.8
air.type=Low
air.velocity= 0,-2.8
airguard.ctrltime= 24
airguard.velocity= -2.2, -3.2
airguard.cornerpush.veloff= -1.8
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 0
fall.recover=0
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
kill=0

[State 4000, downhit1]
type=hitdef
triggerall= anim=4000
trigger1= animelem=20 || animelem=26 || animelem=32
attr=S,HA
damage= 30,10
animtype=Hard
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 4,18
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-20,-52
hitsound=s310,1
guardsound=s400,0
ground.type=low
ground.slidetime=24
ground.hittime=24
ground.velocity= -1.2,0
ground.cornerpush.veloff= -1.6
guard.velocity= -2.2
guard.cornerpush.veloff= -1.8
air.type=Low
air.velocity= 0,-2.8
airguard.ctrltime= 24
airguard.velocity= -2.2, -3.2
airguard.cornerpush.veloff= -1.8
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 0
fall.recover=0
forcestand=0
envshake.time=10
envshake.freq=60
envshake.ampl=2
kill=0

[State 4000, statetypechange]
type=statetypeset
trigger1= animelem=54
statetype=A
physics=A

[State 4000, SendUp Kick]
type=hitdef
triggerall= anim=4000
trigger1= animelem=40
attr=S,HA
damage= 30,12
animtype=up
guardflag=M
hitflag=MAFD
priority=7,Hit
pausetime= 12,12
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-10,-110
hitsound=s900,1
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= -1, -8
ground.cornerpush.veloff= 0
guard.velocity= -5.2
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= -1,-8
airguard.ctrltime= 24
airguard.velocity= -6.2, -5.2
airguard.cornerpush.veloff= 0
yaccel=0.4
getpower= 0,0
givepower=36,36
fall= 1
fall.recover=0
envshake.time=18
envshake.freq=80
envshake.ampl=10
mindist = 16,-29
maxdist = 20,-20
ID=4001

[state 4000, change out if no hit]
type=changestate
triggerall= anim=4000 && animelem=55
trigger1= MoveGuarded
trigger2= !MoveContact
trigger3= MoveContact && NumTarget(4001)
trigger3= !(Target(4001),StateNo=[5000,5099])
value=4001
ignorehitpause=1

[State 4000, veladd]
type=veladd
triggerall = anim = 4000
trigger1= animelem=54
y= const(velocity.jump.y) * const(size.yscale) / 1.2
ignorehitpause=1
persistent=0

[state 4000, screwup]
type=veladd
triggerall = Anim = 4000 
triggerall = AnimElemTime(56)>=0 && AnimElemTime(100)<0
trigger1 = AnimElemTime(56)%4=2
y= AnimElemTime(56) / (const(velocity.jump.y) * const(size.yscale) / 1.06)


[State 4000, windhelper]
type=helper
trigger1 = !NumHelper(6310)
trigger1 = anim = 4000 && animelem=56
helpertype=normal
stateno=6310
ID=6310
name="Lv3SuperWind"
postype=p1
pos= 0,-(ceil(pos y))
ownpal=1
supermovetime=65535
persistent=0
ignorehitpause=1

[state 4000, windsound3]
type=playsnd
triggerall = anim = 4000
triggerall = AnimElemTime(56)>=0 && animelemtime(101)<0
trigger1= AnimElemTime(56)%16=2
value= 210,1
channel=3
ignorehitpause=1

[state 4000, windsound4]
type=playsnd
trigger1= animelem=104
value= 210,1
channel=3
ignorehitpause=1

[State 4000, Pushcheck]
type=playerpush
trigger1= animelemtime(56)>=0 && animelemtime(108)<0
value=0
ignorehitpause=1
persistent=1


[State 4000, screwhits]
type=hitdef
triggerall = Anim=4000
triggerall = AnimElemTime(56)>=0 && AnimElemTime(93) < 0
trigger1 = AnimElemTime(56)%4=0
attr=A,HA
damage= 8,3
animtype=up
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 0,0
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-10,-86
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= Ifelse(p2dist x<0,(P2Dist x - 60)/4,(P2Dist x + 50)/4),(vel y - ((P2Dist y+30)/4))
ground.cornerpush.veloff= 0
guard.velocity= -5.2
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= Ifelse(p2dist x<0,(P2Dist x - 60)/4,(P2Dist x + 50)/4),(vel y - ((P2Dist y+30)/4))
airguard.ctrltime= 24
airguard.velocity= -6.2, -5.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 1
fall.recover=0
forcestand=1
envshake.time=10
envshake.freq=80
envshake.ampl=4
kill=0

[State 4000, screwhitlast]
type=hitdef
triggerall = anim=4000
trigger1 =  animelem = 96
attr=A,HA
damage= 8,3
animtype=up
guardflag=M
hitflag=MAF
priority=4,Hit
pausetime= 0,0
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-10,-86
hitsound=s310,0
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity = (p2dist x)/8.0, -10
ground.cornerpush.veloff= 0
guard.velocity= -5.2
guard.cornerpush.veloff= 0
air.type = Low
air.velocity = (p2dist x)/8.0, -10
airguard.ctrltime= 24
airguard.velocity= -6.2, -5.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 1
fall.recover=0
forcestand=1
envshake.time=10
envshake.freq=80
envshake.ampl=4
ID=4002
kill=1

[state 4000, slowdown]
type=pause
triggerall= anim=4000 && numtarget(4002)
trigger1= animelemtime(97)>=0 && animelemtime(105)<0
time=2


[State 4000, bost-up]
type=veladd
trigger1 = anim=4000 & animelemtime(106) = -1
y = -5.2

[State 4000, Anti-Gravty]
type=veladd
trigger1 = anim=4000 & animelemtime(106)>=1
trigger1 = animelemtime(106) % 3 = 0 
y = -1.26


[State 4000, lasthit]
type=hitdef
triggerall= anim=4000
trigger1=  animelem=105
attr=A,HA
damage= 102,20
animtype=up
;guardflag=M
hitflag=MAF
priority=7,Hit
pausetime= 46,46
sparkno= s7030+random%7
guard.sparkno=s7001
sparkxy=-10,-122
hitsound=s900,1
guardsound=s400,0
ground.type=high
ground.slidetime=24
ground.hittime=24
ground.velocity= -3,-3
ground.cornerpush.veloff= 0
guard.velocity= -5.2
guard.cornerpush.veloff= 0
air.type=Low
air.velocity= -3,-3
airguard.ctrltime= 24
airguard.velocity= -6.2, -5.2
airguard.cornerpush.veloff= 0
yaccel=.46
getpower= 0,0
givepower=36,36
fall= 1
fall.recover=0
fall.damage=20
forcestand=1
envshake.time=38
envshake.freq=60
envshake.ampl=12
envshake.phase = 90
mindist = 12,-70
maxdist = 12,-70
ID=4002

[State 4000, VelBack]
type=veladd
trigger1= anim=4000 & animelem=106
x = -1

[State 4000, hitRing]
type=explod
triggerall= !NumExplod(6305)
triggerall= anim=4000 && animelemtime(105)>0 && animelemtime(106)<0 && NumTarget(4002)
trigger1= Movehit && Target(4002),movetype=H && Target(4002),Stateno>=5000
anim=6305
ID=6305
sprpriority=5
postype=p1
pos=0,-122
trans=addalpha
alpha=256,256
scale=0.8,0.98
pausemovetime= 65535
supermovetime= 65535
persistent=0
ignorehitpause=1

[State 4000, BG2]
type=bgpalfx
triggerall= numtarget
trigger1= target,movetype=H
trigger1= time=313
time=4
add=250,250,250
color=0
ignorehitpause=1


;==============<4000 no hit>========
[Statedef 4001]
type=A
physics=A
movetype=I
ctrl=0

[State 4001, playanim]
type=changeanim
trigger1= !time
value=4001

[state 4001, vel]
type=veladd
trigger1=!time
x= -2

;==============<4000 Land>================
[StateDef 4002]
Type=C
Physics=C
MoveType=I
Ctrl=0
Anim=4002

[State 4002, stop]
type=velset
trigger1= !time
x=0
y=0
persistent=0

[State 4002, pos]
type=posset
trigger1= !time
y=0
persistent=0

[State 4002, dust]
type=explod
trigger1= Animelem=2
anim=7102
ID=7102
sprpriority=-2
postype=p1
scale=.5,.5
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 4002, snd]
type=playsnd
trigger1= Animelem=1
value=10,4
channel=2
persistent=0

[State 4002, end NoInput]
type=changestate
trigger1= !animtime
value=0
ctrl=1

[State 4002, end NoInput]
type=changestate
trigger1= !AILevel
trigger1= animelemtime(5)>7 && Command="holddown"
trigger2= AILevel
trigger2= animelemtime(5)=7 && Random < 500
value=11
ctrl=1

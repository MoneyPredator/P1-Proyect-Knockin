; _____________________________________
;| Chun-Li JJ by BeterHans |

;================ Project Pusher ===========
[statedef 222]
type=A
physics=N
movetype=A
anim=222
ctrl=0
velset=0,0

[State 222, NoPush]
type = PlayerPush
trigger1 = 1
value = 0
ignorehitpause=1

[State 222, hitby]
type=hitby
trigger1= 1
time=-1
value=SCA,AP
ignorehitpause=1

[State 222, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AP
stateno=222
ignorehitpause=1

[State 222, hitvar]
type = varadd
trigger1 = !time
var(2) = 1
ignorehitpause=1

[State 222, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(3) = 1 + moveguarded
ignorehitpause=1

[State 222, end 2]
type = DestroySelf
trigger1 = Parent,Anim != 221
trigger2 = Parent,Anim = 221
trigger2 = !(Parent,Animelemtime(3)>=0 && Parent,Animelemtime(6)<0)
trigger3 = var(2) > 3
ignorehitpause=1

;========================<Alpha Counter FX>=============================
[StateDef 751]
type = A
velSet = 0,0
anim = 9741

[State 751, Player]
type = VarSet
trigger1 = !Time
var(0) = Parent, var(43)

[State 751, PosSet]
type = PosSet
trigger1 = PlayerIDexist(var(0))
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) + (PlayerID(var(0)), const(size.mid.pos.y))

[State 751, PosSet (Laying Down)]
type = PosSet
trigger1 = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), StateType = L
x = ceil(PlayerID(var(0)), pos x)
y = ceil(PlayerID(var(0)), pos y) - 20

[State 751, Facing]
type = Turn
trigger1 = PlayerIDexist(var(0))
trigger1 = Facing != (PlayerID(var(0)), Facing)

[State 751, Flame Explod 1]
type = Explod
trigger1 = PlayerIDexist(var(0)) && !NumExplod(751)
anim = 751
ID = 751
bindtime = -1
sprPriority = 3
posType = P1
facing = 1
scale = 1,1
ownpal = 1

[State 751, End]
type = DestroySelf
trigger1 = Time >= 120
trigger2 = !PlayerIDexist(var(0))

[State 751, End]
type = DestroySelf
triggerAll = PlayerIDexist(var(0))
trigger1 = PlayerID(var(0)), ctrl
trigger2 = PlayerID(var(0)), Movetype != H || PlayerID(var(0)), StateNo >= 5100
trigger3 = PlayerIDExist(var(0))
trigger3 = PlayerID(var(0)),Pos y >= 0 && PlayerID(var(0)),vel y > 0

;========================< Kikoken (気功拳) Projectile >================================
[statedef 1005]
type=S
physics=N
movetype=A
anim=ifelse(root,var(10)=3,1007,ifelse(root,var(10)=2,1006,1005))
ctrl=0
velset=0,0
sprpriority=4

[State 200, No Reverse Guard]
type = AssertSpecial
trigger1 = Enemynear,facing = facing
flag = unguardable

[State 1005, hitby]
type=hitby
trigger1= 1
time=-1
value=SCA,AP
ignorehitpause=1

[State 1005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=1009
ignorehitpause=1

[State 1005, strengthvar]
type=varset
trigger1= !time
var(10)=Parent,var(10)
persistent=0

[State 1005, vel]
type=velset
trigger1= 1
x=ifelse(var(10)=3,8.2,ifelse(var(10)=2,5,3))
y=0
persistent=0

[State 1005, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = (256 - 64*(Time%3)), 256
ignorehitpause = 1

[State 1005, movehitvar]
type = varset
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(3) = 1 + moveguarded
ignorehitpause=1

[State 1005, Add Combo Number to Parent]
type=parentvaradd
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(11)=1
ignorehitpause=1
persistent = 0

[State 1005, hit]
type=hitdef
trigger1= 1
priority=4,Hit
attr=S,SP
damage= Ceil((50 + 10*(Var(10)=2) + 20*(Var(10)=3)) * Parent,fvar(29)) , 10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=0,4
sparkno=-1
guard.sparkno=s7001
;hitsound=s300,0
guardsound=s400,0
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity= ifelse(var(10)=3,-4,-7.88), ifelse(var(10)=3,-2.5,0)
ground.cornerpush.veloff=0
air.velocity=-.75*vel x,-2
fall=var(10)=3
air.fall=1
fall.recover=!(root,var(20))
fall.recovertime=ifelse(root,stateno=1000, -(root,animtime), 12)
getpower= ifelse(p2movetype=H,140,300)*!(root,var(20)), 70*!(root,var(20))
givepower=36,36
envshake.time=12
envshake.freq=100
envshake.ampl=4
p1sprpriority=4
airguard.ctrltime= 16
airguard.velocity= ifelse((root,var(20)),-4,-8), -1.5
forcestand=0
ID = 1005

[State 1005, sparks]
type=explod
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
anim=7020+(random%8)
ID=7000
sprpriority=5
space = stage
bindID = ID
bindtime = 1
facing = facing
pos = facing * 10 * Const(Size.xscale), 0 * Const(Size.yscale)
scale = 1.0 * Const(Size.xscale), 1.0 * Const(Size.yscale)
removetime=-2
ownpal=1
ignorehitpause=1
pausemovetime=100
supermovetime=100
persistent=0

[State 1005, end]
type=changestate
trigger1= movecontact
value=1009
ignorehitpause=1
persistent=0

[State 1005, end2]
type=destroyself
trigger1= screenpos x != [-20*Const(size.xscale), (ScreenWidth / CameraZoom) + 20.0 * Const(size.xscale)]
trigger2= !animtime && var(10)!=1
persistent=0


;=========================<QiGong Hit End>===============
[Statedef 1009]
type=A
physics=N
movetype=I
anim=1009
velset=0,0
ctrl=0
sprpriority=4
;movehitpersist=1

[State 1009, trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 1009, snd]
type=playsnd
trigger1= anim=1009 && var(3)!=2
value=300,0
channel=4
ignorehitpause=1
persistent=0

[State 1009, end]
type=destroyself
trigger1= !animtime


;========================<Kikoken (気功拳) EX Projectile >================================
[statedef 1015]
type=S
physics=N
movetype=A
anim=1005
ctrl=0
velset=0,0
sprpriority=4

[State 200, No Reverse Guard]
type = AssertSpecial
trigger1 = Enemynear,facing = facing
flag = unguardable

[State 1015, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(3) = 1 + moveguarded
ignorehitpause=1

[State 1015, Add Combo Number to Parent]
type=parentvaradd
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(11)=1
ignorehitpause=1
persistent = 0

[State 1015, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AP
stateno=1009
ignorehitpause=1

[State 1015, hitby]
type=hitby
trigger1= 1
time=-1
value=SCA,AP
ignorehitpause=1

[State 1015, end]
type=changestate
trigger1= movecontact
value=1009
ignorehitpause=1

[State 1015, Palfix]
type = PalFX
trigger1 = !time
time = -1
sinadd = 100,70,-60,18
ignorehitpause=1
persistent=0

[State 1015, strengthvar]
type=varset
trigger1= !time
var(10)=Parent,var(10)
ignorehitpause=1
persistent=0

[State 1015, vel]
type=velset
trigger1= 1
x=ifelse(var(10) = 2, 7.8, 1.8)
y=0
ignorehitpause=1
persistent=0

[State 1015, trans]
type = trans
trigger1 = 1
trans = addalpha
alpha = (256 - 32*(Time%3)), 256
ignorehitpause = 1

[State 1015, hit]
type=hitdef
trigger1= 1
priority=4,Hit
attr=S,SP
damage= Ceil((70 + 10*(Var(10)=2)) * Parent,fvar(29)),10
animtype=Hard
hitflag=MAF
guardflag=MA
pausetime=0,10
sparkno=-1
guard.sparkno=s7001
;hitsound=s300,0
guardsound=s400,0
ground.type=High
ground.slidetime=20
ground.hittime=20
ground.velocity= ifelse(var(10)=3,-4,-7.88), ifelse(var(10)=3,-2.5,0)
ground.cornerpush.veloff=0
air.velocity=-.75*vel x,-2
fall=var(10)=2
air.fall=1
fall.recover=!(root,var(20))
fall.recovertime=ifelse(Parent,stateno=1000, -(Parent,animtime), 12)
getpower=0,0
givepower=36,36
envshake.time=12
envshake.freq=100
envshake.ampl=4
p1sprpriority=4
airguard.ctrltime= 16
airguard.velocity= ifelse((parent,var(20)),-4,-8), -1.5

[State 1015, sparks]
type=explod
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
anim=7020+(random%8)
ID=7000
sprpriority=5
space = stage
bindID = ID
bindtime = 1
facing = facing
pos = facing * 10 * Const(Size.xscale), 0 * Const(Size.yscale)
scale = 1.0 * Const(Size.xscale), 1.0 * Const(Size.yscale)
removetime=-2
ownpal=1
pausemovetime=100
supermovetime=100
ignorehitpause=1
persistent=0

[State 1015, end2]
type=destroyself
trigger1= screenpos x != [-20*Const(size.xscale), (ScreenWidth / CameraZoom) + 20.0 * Const(size.xscale)]
ignorehitpause=1
persistent=0


;==============<Super QiGong>===========
[statedef 3005]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[State 3005,hitby]
type=hitby
trigger1= 1
time=-1
value=SCA,AP
ignorehitpause=1


[State 3005, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=3005
ignorehitpause=1

[State 3005, UnGuardable var]
type = varset
trigger1 = !time && !PrevStateNo
var(17) = Parent,var(17)

[State 3005, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1

[State 3005, movehitvar]
type=varset
trigger1= movecontact && numtarget
trigger1= !(Target,Ishelper)
var(3)=1
ignorehitpause=1

[State 3005, Add Combo Number to Parent]
type=parentvaradd
trigger1= movecontact && numtarget && hitcount =1
trigger1= !(Target,Ishelper) && Target,time=0
var(11)=1
ignorehitpause=1
persistent = 0

[state 3005, assert]
type=assertspecial
trigger1=1
flag=noshadow

[State 3005, assert]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256
ignorehitpause=1

[State 3005, strengthvar]
type=varset
trigger1= var(10)!=5
var(10)=5

[State 3005, anim]
type=changeanim
trigger1= !time && !prevstateno
value = 3005
ignorehitpause=1

[State 3005, Flash FX]
type = Explod
triggerall = !NumExplod(3009)
trigger1 = Anim = 3005
trigger1 = AnimElemTime(1) = 0
anim = 3009
ID = 3009
space = stage
bindID = ID
pos = 0 * facing * Const(Size.xScale), 0 * Const(Size.yScale)
facing = facing
bindtime = -1
removetime = -2
;supermovetime = 4294967295
;pausemovetime = 4294967295
sprpriority = 3
scale = 0.25 * Const(Size.xScale), 0.25 * Const(Size.yScale)
angle = 0
;xangle = 65 + (((ScreenPos y - (ScreenHeight / 2.0)) / (ScreenHeight / 2.0)) * 10.0)
;yangle = 6 - ((Pos x * facing / (GameWidth/2))*18.0)
ownpal = 1
;remappal = 6022, IFElse(NumHelper(20000),100+var(2),var(1)%10000 - 1)
ignorehitpause = 0

[State 3005, bind]
type=bindtoparent
trigger1= 1
pos=60,-66

[state 3005, snds]
type=playsnd
trigger1= animelem=2
value= 3005,1
persistent=1
channel=3

[state 3005, stopsnd]
type=stopsnd
trigger1= parent,stateno!=3000
channel=3


[state 3005, hitdef]
type=hitdef
triggerall= animelemtime(2)>0 && animelemtime(37)<0
trigger1= time%4=3
attr=S,HP
damage= Ceil(ifelse(!hitcount,80,10) * Parent,fvar(29)),7
animtype=Hard
fall.animtype=Hard
hitflag=MAF
guardflag=M
priority=7,Hit
pausetime=2,4
guard.dist=150
sparkno=-1
guard.sparkno=-1
guardsound=s400,0
ground.type=Low
ground.slidetime=18
ground.hittime=18
ground.velocity = -12 * (AnimElemTime(28)>=0), -1 - 4.2*(AnimElemTime(28)>=0)
ground.cornerpush.veloff=0
guard.velocity= -3
air.velocity = -12 * (AnimElemTime(28)>=0), -1 - 4.2*(AnimElemTime(28)>=0)
getpower=0
givepower=26,26
fall=hitcount>3
fall.recover=0
p1sprpriority=4
envshake.time=4
envshake.freq=60
envshake.ampl=4
yaccel= 0.5
forcestand=1

[State 3005, sparks]
type=explod
trigger1= movecontact=1 && numtarget
trigger1= (target,movetype=H) && !(target,time)
anim=ifelse(moveguarded,7001,7030+(random%8))
ID=7000
sprpriority=5
space = stage
bindID = Enemynear,ID
bindtime = 1
facing = facing
pos = facing * -10 * Const(Size.xscale), Enemynear,Const(Size.mid.pos.y) * Enemynear,Const(Size.yscale)
scale = 1.0 * Const(Size.xscale), 1.0 * Const(Size.yscale)
removetime=-2
ownpal=1
ignorehitpause=1
pausemovetime=100
supermovetime=100

[State 3005, hitsnd]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value= 300,0
channel=4
ignorehitpause=1

[state 3005, end]
type=destroyself
trigger1= !animtime
trigger2= parent,stateno!=3000


;=======================<Shock Wave>=====================
[statedef 3305]
type=S
physics=N
movetype=A
ctrl=0
velset=0,0
sprpriority=4

[state 3305, AttackMulset]
type=AttackMulSet
trigger1= roundstate=2 && movetype=A
value= root,fvar(29)
ignorehitpause=1

[State 3305, hitoverride]
type=hitoverride
trigger1= 1
time=-1
attr=SCA,AA,AP,AT
stateno=3305
ignorehitpause=1

[state 3305, assert]
type=assertspecial
trigger1=1
flag=noshadow

[State 3305,hitby]
type=hitby
trigger1= 1
time=-1
value=SCA,AP
ignorehitpause=1

[State 3305, assert]
type=trans
trigger1= time<11
trans=addalpha
alpha= 220,256
ignorehitpause=1

[State 3305, assert]
type=trans
trigger1= time>=11
trans=addalpha
alpha= 220-(8*(time-11)),256
ignorehitpause=1

[State 3305, anim]
type=changeanim
trigger1= !time && !prevstateno
value=3305
ignorehitpause=1

[state 3305, snds]
type=playsnd
trigger1= animelem=2
value= 220,0
persistent=1
channel=3


[state 3305, hitdef]
type=hitdef
triggerall= animelemtime(1)>0 && animelemtime(11)<0
trigger1= time%2=1
attr=C,HP
damage= Ceil(ifelse(!hitcount,55,12) * Parent,fvar(29)),8
animtype=Hard
fall.animtype=Hard
hitflag=MAFD
guardflag=M
priority=7,Hit
pausetime=0,0
guard.dist=150
sparkno=-1
guard.sparkno=-1
guardsound=s400,0
ground.type=Low
ground.slidetime=16
ground.hittime=16
ground.velocity= -2.8, -4.6
ground.cornerpush.veloff=0
guard.velocity= -3
air.velocity= -2.8, -4.6
getpower=0
givepower=26,26
p1sprpriority=4
p2sprpriority=0
fall=hitcount>3
fall.recover=0
yaccel=.46
forcestand=1
ID = 3305

[State 3305, Transfor hitcount]
type = parentvaradd
trigger1 = MoveHit && NumTarget(3305)
trigger1 = Target(3305),StateNo = [5000,5999]
var(11) = 1
ignorehitpause = 1
persistent = 0

[State 3305, sparks]
type=explod
trigger1= movecontact=1 && numtarget
trigger1= (target,movetype=H) && !(target,time)
anim=ifelse(moveguarded,7001,7030+(random%8))
ID=7000
sprpriority=5
space = stage
bindID = ID
bindtime = 1
facing = facing
pos = facing * 10 * Const(Size.xscale), 0 * Const(Size.yscale)
scale = 1.0 * Const(Size.xscale), 1.0 * Const(Size.yscale)
removetime=-2
ownpal=1
ignorehitpause=1
pausemovetime=100
supermovetime=100

[State 3305, hitsnd]
type=playsnd
trigger1= movehit && numtarget
trigger1= !(target,time) && target,movetype=H
value= 300,0
channel=4
ignorehitpause=1

[state 3305, changtype]
type=statetypeset
trigger1= animelemtime(11)=1
movetype=I

[state 3305, end]
type=destroyself
trigger1= !animtime


;========================<Lazzy Ducks>===========================
[Statedef 6300]
type=S
physics=N
anim=6300
sprpriority=1
ctrl=0

[state 6300, bind]
type=bindtoparent
trigger1= 1
pos= 10,-74

[state 6300, playsnd]
type=playsnd
trigger1= !time
value= 700,4
channel=1

[state 6300, playsnd]
type=playsnd
trigger1= time%18=0
value= 700,6
channel=0

[state 6300, remove]
type=destroyself
trigger1= parent,stateno!=[5000,5999]
trigger2= roundstate != 2
trigger3 = Parent,Alive = 0

;========================<JUMP DUST>=============================
[Statedef 7100]
physics=N
velset=0,0
anim=9741
[State 7100, bind]
type=bindtoroot
trigger1= time
[State 7100, dust]
type=explod
trigger1= !time
anim=7100
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
[State 7100, dust]
type=explod
trigger1= !time || time=2 || time=6
anim=7101
ID=7100
sprpriority=3
postype=p1
scale=.5,.5
pausemovetime=-1
supermovetime=-1
[State 7100, assert]
type=assertspecial
trigger1= 1
flag=invisible
[State 7100, end]
type=destroyself
trigger1= time>=7


;========================<FIRE>=============================
;---RED---
[Statedef 7180]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7180, assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 7180, flames]
type=explod
trigger1= 1
anim=7180
ID=7180
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1
[State 7180, pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7180, end]
type=destroyself
trigger1= time>=120
trigger2= enemynear,ctrl || (p2movetype!=H) || (p2statetype=L)


;---PURPLE---
[Statedef 7181]
physics=N
velset=0,0
anim=9741
sprpriority=4
[State 7181, assert]
type=assertspecial
trigger1= 1
flag=noshadow
ignorehitpause=1
[State 7181, flames]
type=explod
trigger1= 1
anim=7181
ID=7181
sprpriority=3
postype=p2
vel=-.2,-.75
pos=(enemynear,const(size.mid.pos.x)),(enemynear,const(size.mid.pos.y))+10
random=40,40
removetime=-2
scale=.5,.5
ownpal=1
[State 7181, pos]
type=posadd
trigger1= 1
x=ceil(p2dist x)
y=ceil(p2dist y)
[State 7181, end]
type=destroyself
trigger1= time>=120
trigger2= enemynear,ctrl || (p2movetype!=H) || (p2statetype=L)


;========================<SUPER CHARGE>=============================
[Statedef 7500]
physics=N
velset=0,0
anim=9741

[State 7500, Lv1]
type=bgpalfx
trigger1= time<=10 && root,var(10)=5
time=1
add=256-ceil(25.6*time),256-ceil(25.6*time),256-ceil(25.6*time)
mul=256-floor(25.6*time),256-floor(25.6*time),256
color=256-floor(25.6*time)
ignorehitpause=1

[State 7500, Lv1]
type=bgpalfx
trigger1= (time=[11,39]) && root,var(10)=5
time=1
mul=0,0,256
color=0

[State 7500, Lv1]
type=bgpalfx
trigger1= time>=40 && root,var(10)=5
time=1
mul=ceil(51.2*(time-40)),ceil(51.2*(time-40)),256
color=floor(51.2*(time-40))

[State 7500, Lv2]
type=bgpalfx
trigger1= time<=15 && root,var(10)=6
time=1
add=256-ceil(17.07*time),256-ceil(17.07*time),256-ceil(17.07*time)
mul=256-floor(17.07*time),256-floor(17.07*time),256
color=256-floor(17.07*time)

[State 7500, Lv2]
type=bgpalfx
trigger1= (time=[16,47]) && root,var(10)=6
time=1
mul=0,0,256
color=0

[State 7500, Lv2]
type=bgpalfx
trigger1= time>=48 && root,var(10)=6
time=1
mul=ceil(51.2*(time-48)),ceil(51.2*(time-48)),256
color=floor(51.2*(time-48))

[State 7500, Lv3]
type=bgpalfx
trigger1= time<=20 && root,var(10)=7
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)

[State 7500, Lv3]
type=bgpalfx
trigger1= (time=[21,54])  && root,var(10)=7
time=1
mul=0,0,0
color=0

[State 7500, Lv3]
type=bgpalfx
trigger1= time>=55 && root,var(10)=7
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

;============ Portrait ==================
[State 7500, Create SF 3 Portrait]; Old Type
type = explod
trigger1 = !NumExplod(7510)
trigger1 = time=1 && parent,var(10)>5
anim = 7510
ID = 7510
sprpriority = -2
postype = back
facing = 1
removetime = -2
pos = Floor(ScreenWidth/3.0) , Floor(ScreenHeight/2.4)
Scale = 0.5, 0.5
Trans = AddAlpha
Alpha = 256,256
pausemovetime= 65535
supermovetime= 65535

[State 7500, Modiify Portrait Fade IN]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [1,16]
ID = 7510
postype = back
facing = 1
pos = Floor(ScreenWidth/3.0 - 10*(16-time)) , Floor(ScreenHeight/2.4)
Trans = AddAlpha
Alpha = 32*time,255

[State 7500, Modiify Portrait Keep]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [17,53]
ID = 7510
postype = back
facing = 1
pos = Floor(ScreenWidth/3.0 + 1.5*(time-17)) , Floor(ScreenHeight/2.4 + 0.2*(time-17))
Trans = AddAlpha
Alpha = 256,256

[State 7500, Modiify Portrait Fade Out]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [54,60]
ID = 7510
Scale = 0.5 + (time-53)*0.15 , 0.5 + (time-53)*0.15
Trans = AddAlpha
Alpha = 255 - ((time-53) * 42),255


[State 7500, spiral]
type=helper
trigger1= !time && root,var(10)=7
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1

[State 7500, Main]
type=explod
trigger1= !time
anim=7500
ID=7500
sprpriority=5
postype=p1
removetime=-1
pausemovetime=-1
supermovetime=-1

[State 7500, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1


[State 7500, Circle]
type=explod
trigger1= !time
anim=7502
ID=75021
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Circle]
type=explod
trigger1= time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Circle]
type=explod
trigger1= time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Circle]
type=explod
trigger1= time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, Circle]
type=explod
trigger1= time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 7500, scale]
type=modifyexplod
trigger1= root,var(10)=5
ID=7500
scale=1.5-(.0333*time),1.5-(.0333*time)

[State 7500, scale]
type=modifyexplod
trigger1= root,var(10)=6
ID=7500
scale=1.5-(.0283*time),1.5-(.0283*time)

[State 7500, scale]
type=modifyexplod
trigger1= root,var(10)=7
ID=7500
scale=1.5-(.025*time),1.5-(.025*time)

[State 7500, scale]
type=modifyexplod
trigger1= numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256


[State 7500, scale]
type=modifyexplod
trigger1= numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)

[State 7500, scale]
type=modifyexplod
trigger1= numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 7500, scale]
type=modifyexplod
trigger1= numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 7500, scale]
type=modifyexplod
trigger1= numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 7500, scale]
type=modifyexplod
trigger1= numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 7500, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible

[State 7500, No bars]
type=assertspecial
trigger1= root,var(10)>6
flag=nobardisplay
flag2=noFG

[State 7500, Safety]
type=removeexplod
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60

[State 7500, End]
type=destroyself
trigger1= root,var(10)=5 && time>=45
trigger2= root,var(10)=6 && time>=53
trigger3= time>=60


;========================<SUPER CHARGE SF3 Style>=============================
[Statedef 6302]
physics=N
velset=0,0
anim=9741

[State 6302, Lv1]
type=bgpalfx
trigger1= time<=15 && root,var(10)=5
time=1
add=256-ceil(17.07*time),256-ceil(17.07*time),256-ceil(17.07*time)
mul=256-floor(17.07*time),256-floor(17.07*time),256
color=256-floor(17.07*time)

[State 6302, Lv1]
type=bgpalfx
trigger1= (time=[16,47]) && root,var(10)=5
time=1
mul=0,0,256
color=0

[State 6302, Lv1]
type=bgpalfx
trigger1= time>=48 && root,var(10)=5
time=1
mul=ceil(51.2*(time-48)),ceil(51.2*(time-48)),256
color=floor(51.2*(time-48))

[State 6302, Lv2]
type=bgpalfx
trigger1= time<=20 && root,var(10)>5
time=1
add=256-ceil(12.8*time),256-ceil(12.8*time),256-ceil(12.8*time)
mul=256-floor(12.8*time),256-floor(12.8*time),256-floor(12.8*time)
color=256-floor(12.8*time)
invertall=1

[State 6302, Lv2]
type=bgpalfx
trigger1= (time=[21,54])  && root,var(10)>5
time=1
mul=0,0,0
color=0

[State 6302, Lv2]
type=bgpalfx
trigger1= time>=55 && root,var(10)>5
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 6302, spiral]
type=helper
trigger1= !time && root,var(10)>5
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1

[State 6302, LargeRingHelper]
type=helper
trigger1= time=48 && root,var(10)>5
helpertype=normal
stateno=6305
ID=6305
name="Super Charge Ring"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1
size.xscale= 0.8
size.yscale= 0.98
persistent=0

[State 6302, Main]
type=explod
trigger1= !time
anim=6302
ID=6302
sprpriority=5
postype=p1
trans=addalpha
alpha=256,256
;removetime=-1
pausemovetime=-1
supermovetime=-1

[State 6302, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

;============ Portrait ==================
[State 6302, Create SF 3 Portrait]; Old Type
type = explod
trigger1 = !NumExplod(7510)
trigger1 = time=1 && parent,var(10)=6
anim = 7510
ID = 7510
sprpriority = -2
postype = back
facing = 1
removetime = -2
pos = Floor(ScreenWidth/3.0) , Floor(ScreenHeight/2.4)
Scale = 0.5, 0.5
Trans = AddAlpha
Alpha = 256,256
pausemovetime= 65535
supermovetime= 65535

[State 6302, Modiify Portrait Fade IN]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [1,16]
ID = 7510
postype = back
facing = 1
pos = Floor(ScreenWidth/3.0 - 10*(16-time)) , Floor(ScreenHeight/2.4)
Trans = AddAlpha
Alpha = 32*time,255

[State 6302, Modiify Portrait Keep]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [17,53]
ID = 7510
postype = back
facing = 1
pos = Floor(ScreenWidth/3.0 + 1.5*(time-17)) , Floor(ScreenHeight/2.4 + 0.2*(time-17))
Trans = AddAlpha
Alpha = 256,256

[State 6302, Modiify Portrait Fade Out]
type = ModifyExplod
trigger1 = NumExplod(7510)
trigger1 = time = [54,60]
ID = 7510
Scale = 0.5 + (time-53)*0.15 , 0.5 + (time-53)*0.15
Trans = AddAlpha
Alpha = 255 - ((time-53) * 42),255

;---- ULTRA ---
[State 6302, Create Portrait ULTRA]
type=explod
trigger1 = !NumExplod(7512)
trigger1 = time=1 && parent,var(10)=7
anim=7512
ID=7512
sprpriority = -2
postype = back
facing = 1
removetime = -2
pos = Floor(ScreenWidth/2.0) , Floor(ScreenHeight/2.4)
Scale = 0.5, 0.5
Trans = AddAlpha
Alpha = 256,256
pausemovetime = 65535
supermovetime = 65535

[State 6302, Portrait ULTRA phase 1]
type=modifyexplod
trigger1= numexplod(7512) && time<12
ID=7512
postype = back
facing = 1
pos = Floor(ScreenWidth/2.0 - 16*(11-time)) , Floor(ScreenHeight/2.4)
scale= 1.7-time/10,1.7-time/10
trans=addalpha
alpha=(20*time),256

[State 6302, Portrait ULTRA phase 2]
type=modifyexplod
trigger1= numexplod(7512) && (time=[12,50])
ID=7512
postype = back
facing = 1
pos = Floor(ScreenWidth/2.0 + 0.8*(time-12)) , Floor(ScreenHeight/2.4)
scale=.6,.6
trans=addalpha
alpha=256,256

[State 6302, Portrait phoenix phase 3]
type=modifyexplod
trigger1= numexplod(7512) && time>=50
ID=7512
scale=.6+(.25*(time-50)),.6+(.25*(time-50))
trans=addalpha
alpha=220-ceil(22*(time-50)),256

[State 6302, Circle]
type=explod
trigger1= !time
anim=7502
ID=75021
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6302, Circle]
type=explod
trigger1= time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6302, Circle]
type=explod
trigger1= time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6302, Circle]
type=explod
trigger1= time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6302, Circle]
type=explod
trigger1= time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6302, wave1]
type=explod
trigger1= time=33 && root,var(10)=5
trigger2= time=41 && root,var(10)>5
anim=6303
ID=6303
sprpriority=5
postype=p1
pos= ifelse(facing=-1,ceil(parent,pos x),(0-(ceil(parent,pos x)))),0
trans=addalpha
alpha=256,256
scale=1,1.22
pausemovetime=-1
supermovetime=-1
persistent=0

[State 6302, wave2]
type=explod
trigger1= time=42 && root,var(10)=5
trigger2= time=49 && root,var(10)>5
anim=6304
ID=6304
sprpriority=5
postype=p1
trans=addalpha
alpha=256,256
scale=1,1.22
pausemovetime=-1
supermovetime=-1
persistent=0

[State 6302, Modify Main FX]
type=modifyexplod
trigger1= numexplod(6302)
ID=6302
trans=addalpha
alpha= (10*time),256

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 6302, scale]
type=modifyexplod
trigger1= numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 6302, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible

[State 6302, No bars]
type=assertspecial
trigger1= root,var(10)>5
flag=nobardisplay
flag2=noFG

[State 6302, Safety]
type=removeexplod
trigger1= root,var(10)=5 && time>=53
trigger2= time>=60

[State 6302, End]
type=destroyself
trigger1= root,var(10)=5 && time>=53
trigger2= time>=60


;========================<SUPER CHARGE SF4 Ultra 1>=============================
[Statedef 6303]
physics=N
velset=0,0
anim=9741

[State 6303, Lv2]
type=bgpalfx
trigger1= (time=[21,54])  && root,var(10)>5
time=1
mul=0,0,0
color=0

[State 6303, Lv2]
type=bgpalfx
trigger1= time>=55 && root,var(10)>5
time=1
mul=ceil(51.2*(time-55)),ceil(51.2*(time-55)),ceil(51.2*(time-55))
color=floor(51.2*(time-55))

[State 6303, spiral]
type=helper
trigger1= !time && root,var(10)>5
helpertype=normal
stateno=7509
ID=7509
name="Super Charge Spiral"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1

[State 6303, LargeRingHelper]
type=helper
trigger1= time=48 && root,var(10)>5
helpertype=normal
stateno=6305
ID=6305
name="Super Charge Ring"
postype=p1
pausemovetime=255
supermovetime=255
ownpal=1
size.xscale= 0.8
size.yscale= 0.98
persistent=0

[State 6303, Main]
type=explod
trigger1= !time
anim=6302
ID=6302
sprpriority=5
postype=p1
trans=addalpha
alpha=256,256
;removetime=-1
pausemovetime=-1
supermovetime=-1

[State 6303, Large Circle]
type=explod
trigger1= !time
anim=7501
ID=7501
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

;============ Portrait ==================

;---- ULTRA ---
[State 6303, Create Portrait ULTRA]
type=explod
trigger1 = !NumExplod(7512)
trigger1 = time=1 && parent,var(10)=7
anim=7512
ID=7512
sprpriority = -2
postype = back
facing = 1
removetime = -2
pos = Floor(ScreenWidth/2.0) , Floor(ScreenHeight/2.4)
Scale = 0.5, 0.5
Trans = AddAlpha
Alpha = 256,256
pausemovetime = 65535
supermovetime = 65535

[State 6303, Portrait ULTRA phase 1]
type=modifyexplod
trigger1= numexplod(7512) && time<12
ID=7512
postype = back
facing = 1
pos = Floor(ScreenWidth/2.0 - 16*(11-time)) , Floor(ScreenHeight/2.4)
scale= 1.7-time/10,1.7-time/10
trans=addalpha
alpha=(20*time),256

[State 6303, Portrait ULTRA phase 2]
type=modifyexplod
trigger1= numexplod(7512) && (time=[12,36])
ID=7512
postype = back
facing = 1
pos = Floor(ScreenWidth/2.0 + 0.8*(time-12)) , Floor(ScreenHeight/2.4)
scale=.6,.6
trans=addalpha
alpha=256,256

[State 6303, Portrait phoenix phase 3]
type=modifyexplod
trigger1= numexplod(7512) && time>=37
ID=7512
scale=.6+(.25*(time-37)),.6+(.25*(time-37))
trans=addalpha
alpha=220-ceil(22*(time-37)),256

[State 6303, Portrait off]
type = RemoveExplod
trigger1 = numexplod(7512)
trigger1 = time > 47
ID = 7512

[State 6303, Circle]
type=explod
trigger1= !time
anim=7502
ID=75021
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6303, Circle]
type=explod
trigger1= time=7
anim=7502
ID=75022
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6303, Circle]
type=explod
trigger1= time=14
anim=7502
ID=75023
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6303, Circle]
type=explod
trigger1= time=21
anim=7502
ID=75024
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6303, Circle]
type=explod
trigger1= time=28
anim=7502
ID=75025
sprpriority=5
postype=p1
pausemovetime=-1
supermovetime=-1

[State 6303, wave1]
type=explod
trigger1= time=33 && root,var(10)=5
trigger2= time=41 && root,var(10)>5
anim=6303
ID=6303
sprpriority=5
postype=p1
pos= ifelse(facing=-1,ceil(parent,pos x),(0-(ceil(parent,pos x)))),0
trans=addalpha
alpha=256,256
scale=1,1.22
pausemovetime=-1
supermovetime=-1
persistent=0

[State 6303, wave2]
type=explod
trigger1= time=42 && root,var(10)=5
trigger2= time=49 && root,var(10)>5
anim=6304
ID=6304
sprpriority=5
postype=p1
trans=addalpha
alpha=256,256
scale=1,1.22
pausemovetime=-1
supermovetime=-1
persistent=0

[State 6303, Modify Main FX]
type=modifyexplod
trigger1= numexplod(6302)
ID=6302
trans=addalpha
alpha= (10*time),256

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(7501)
ID=7501
scale=.25+(.075*time),.25+(.075*time)
trans=addalpha
alpha=ceil(256-6.4*time),256

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(75021)
ID=75021
scale=.25+(.0375*time),.25+(.0375*time)

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(75022)
ID=75022
scale=.25+(.0375*(time-7)),.25+(.0375*(time-7))

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(75023)
ID=75023
scale=.25+(.0375*(time-14)),.25+(.0375*(time-14))

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(75024)
ID=75024
scale=.25+(.0375*(time-21)),.25+(.0375*(time-21))

[State 6303, scale]
type=modifyexplod
trigger1= numexplod(75025)
ID=75025
scale=.25+(.0375*(time-28)),.25+(.0375*(time-28))

[State 6303, Safety]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible

[State 6303, No bars]
type=assertspecial
trigger1= root,var(10)>5
flag=nobardisplay
flag2=noFG

[State 6303, Safety]
type=removeexplod
trigger1= root,var(10)=5 && time>=53
trigger2= time>=60

[State 6303, End]
type=destroyself
trigger1= root,var(10)=5 && time>=53
trigger2= time>=60



;---Large Ring Helper---
[Statedef 6305]
physics=N
anim=6305
sprpriority=5

[State 6305, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 6305, Trans]
type=trans
trigger1= 1
trans=addalpha
alpha=256,256

[State 6305, end]
type=destroyself
trigger1= !animtime

;---Lv3 Super Winds---
[Statedef 6310]
physics=N
anim=9741

[State 6310, Pos fix]
type = posset
trigger1 = !time
y = 0

[State 6310, Start Amin]
type=explod
triggerall= !numexplod(6310) && numhelper(6310)<2
trigger1=  !time && parent,stateno=4000
anim=6310
ID=6310
sprpriority=4
Space = Stage
BindID = ID
removetime= -1
pausemovetime= 65535
supermovetime= 65535
persistent=0
ignorehitpause=1

[State 6310, Changing anim]
type=modifyexplod
triggerall= numexplod(6310)
trigger1= (time=[0,49]) && parent,alive
ID=6310
scale=(time*0.02),(time*0.02)
alpha=(time*2),256
trans=addalpha

[State 6310, Start to End Remove wind1]
type=removeexplod
triggerall= numexplod(6310)
trigger1= !(parent,alive) || (parent,stateno!=4000) || time > 49

[State 6310, Start to End Display Wind2]
type=explod
trigger1=  time>49 && !numexplod(6310)
anim=6311
ID=6311
sprpriority=3
Space = Stage
BindID = ID
bindtime= -1
removetime= -2
trans=addalpha
alpha=256,256
pausemovetime= 65535
supermovetime= 65535
persistent=0
ignorehitpause=1

[State 6310, Kill Self]
type=destroyself
trigger1= time>51 && (!numexplod(6310) && !numexplod(6311))
trigger2= time>311


;---Spiral---
[Statedef 7509]
physics=N
anim=7509
sprpriority=5

[State 7509, assert]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7509, Spin]
type=angleset
trigger1= 1
value=-6*(random%60)

[State 7509, Spin]
type=angleadd
trigger1= 1
value=-6

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)=6
scale=1-(time/53.0),1-(time/53.0)

[State 7509, Trans]
type=trans
trigger1= root,var(10)=6
trans=addalpha
alpha=floor(4.83*time),256

[State 7509, Angle]
type=angledraw
trigger1= root,var(10)>6
scale=1-(time/60.0),1-(time/60.0)

[State 7509, Trans]
type=trans
trigger1= root,var(10)>6
trans=addalpha
alpha=floor(4.267*time),256

[State 7509, end]
type=destroyself
trigger1= root,var(10)=6 && time>=54
trigger2= time>=61


;========================<POWER CHARGE>=============================
;---MAIN FX---
[Statedef 7240]
type=S
anim=7240
velset=0,0
ctrl=0

[State 7240, bind]
type=bindtoroot
trigger1= (root,stateno=760) && (root,anim=760)
pos=-8,0

[State 7240, snd]
type=playsnd
trigger1= !time
value=700,2
channel=0

[State 7240, aura]
type=explod
trigger1= !numexplod(7242)
ID=7242
anim=7242
sprpriority=3
postype=p1
bindtime=-1
removetime=-1
pausemovetime=-1
supermovetime=-1
scale=.5,.5
ownpal=1

[State 7240, fx]
type=modifyexplod
trigger1= numexplod(7242) && (root,power<3000)
ID=7242
scale=.5,.1+.5*(root,power/3000.0)

[State 7240, fx]
type=modifyexplod
trigger1= numexplod(7242) && (root,power>=3000)
ID=7242
scale=.5,.5

[State 7240, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow

[State 7240, end]
type=stopsnd
trigger1= (root,stateno!=760) || (root,anim!=760) || (root,movetype=H)
channel=0

[State 7240, end]
type=removeexplod
trigger1= (root,stateno!=760) || (root,anim!=760) || (root,movetype=H)

[State 7240, end]
type=destroyself
trigger1= (root,stateno!=760) || (root,anim!=760) || (root,movetype=H)


;---PARTICLES---
[Statedef 7243]
type=S
velset=0,0
anim=9741
ctrl=0

[State 7243, bind]
type=bindtoroot
trigger1= !(time%4)
pos=ceil(-100+(random/6.25)),ceil(2-(random/6.25))

[State 7243, particle]
type=explod
trigger1= (time%4)=1
anim=7243
sprpriority=ifelse(random<750,5,-1)
postype=p1
vel=((rootdist x-30)/16.0),((rootdist y-30)/16.0)
scale=ifelse(random<500,.5,-.5),ifelse(random<500,.5,-.5)
removetime=16
pausemovetime=-1
supermovetime=-1

[State 7243, end]
type=removeexplod
trigger1= (root,stateno!=760) || (root,anim!=760) || (root,movetype=H)

[State 7243, end]
type=destroyself
trigger1= (root,stateno!=760) || (root,anim!=760) || (root,movetype=H)


;========================<ALPHA COUNTER CHARGE>=============================
[Statedef 7250]
physics=N
velset=0,0
anim=9741

[State 7250, bgpalfx]
type=bgpalfx
trigger1= !time
time=20
add=-255,-128,-64
sinadd=255,128,64,80
persistent=0
[State 7250, palfx]
type=palfx
trigger1= !time
time=20
sinadd=-255,-255,-255,80

[State 7250, thunder]
type=explod
trigger1= !time
anim=7250
ID=7250
sprpriority=-2
postype=p1
pos=0,-ceil(pos y)
removetime=-2
supermovetime=30
ownpal=1
[State 7250, circle]
type=explod
trigger1= !time
anim=7251
ID=7251
sprpriority=5
postype=p1
removetime=20
supermovetime=30

[State 7250, shrink]
type=modifyexplod
trigger1= numexplod(7251)
ID=7251
scale=.2+(.09*time),.2+(.09*time)
[State 7250, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1
[State 7250, end]
type=destroyself
trigger1= time>=20


;========================<ORIGINAL COMBO CHARGE>=============================
[Statedef 7260]
physics=N
velset=0,0
anim=9741

[State 7260, bgpalfx]
type=bgpalfx
trigger1= !time
time=30
add=-255,-255,-128
sinadd=255,255,128,120

[State 7260, palfx]
type=palfx
trigger1= time=20
time=11
sinadd=-255,-255,-255,40
persistent=0

[State 7260, main]
type=explod
trigger1= !time
anim=7260
ID=7260
sprpriority=5
postype=p1
removetime=20
supermovetime=300

[State 7260, sphere]
type=explod
trigger1= !time
anim=7500
ID=7261
sprpriority=5
postype=p1
removetime=-1
supermovetime=300
[State 7260, circle]
type=explod
trigger1= time=20
anim=7501
ID=7262
sprpriority=5
postype=p1
removetime=-1
supermovetime=300

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7260
scale=2-(.1*time),2-(.1*time)

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= 1
ID=7261
scale=.017*time,.017*time

[State 7260, shrinkcircle]
type=modifyexplod
trigger1= time>=20
ID=7262
scale=.1+(.1*(time-20)),.1+(.1*(time-20))

[State 7260, noshadow]
type=assertspecial
trigger1= 1
flag=noshadow
flag2=invisible
ignorehitpause=1

[State 7260, bound]
type=screenbound
trigger1= 1
value=0

[State 7260, safety]
type=removeexplod
trigger1= time>=30

[State 6110, end]
type=destroyself
trigger1= time>=30


;========================<COUNTER F.X.>=============================
[Statedef 7400]
type=A
physics=N
anim=9741

[State 7400, superchargebgpalfx]
type=allpalfx
trigger1= !time
time=8
add=255,255,255
sinadd=-255,-255,-255,32

[State 7400, slow]
type=pause
trigger1= time<8
time=1

[State 7400, end]
type=destroyself
trigger1= time>=8


;========================<SUPER FINISH CVS>=============================
[Statedef 7600]
type=U
Physics=N
velset=0,0
anim= 9741

[State 7600, bind]
type=posset
trigger1= 1
x= 0
y = Ceil((pos y -screenpos y)+(GameHeight/2.0))

[State 7600, snd]
type=playsnd
trigger1= !time
value=900,0

[State 7600, BGPalfx]
type = bgpalfx
trigger1 = time < 28
time = 1
mul = 0,0,0

[State 7600, bgpalfx]
type = bgpalfx
trigger1 = time = [28,60]
time = 1
mul = (time-28)*8,(time-28)*8,(time-28)*8

[State 7600, mvc]
type=explod
trigger1= !time
anim=7601
ID=7601
ontop=1
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1

[State 7600, fade]
type=modifyexplod
trigger1= numexplod(7601)
ID=7601
trans=addalpha
alpha=ifelse(time<10,256,ceil(256-(time-10)*25.6)),256

[State 7600, circle]
type=explod
trigger1= !time
anim=7600
ID=7600
sprpriority=-255
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
bindtime=-1
removetime=20
pausemovetime=-1
supermovetime=-1

[State 7600, scale]
type=modifyexplod
trigger1= numexplod(7600)
ID=7600
scale=(.25*time),(.25*time)
trans=addalpha
alpha=ceil(256-12.8*time),256


;------ Kanji Super Move names ---------

[State 7600, Move Name: Custom Combo]
type = VarSet
trigger1= !Time && Const(size.proj.doscale) = 20
var(0) = 1

[State 7600, Move Name: Kikosho]
type = VarSet
trigger1= !Time && Const(size.proj.doscale) = 3005
var(0) = 2

[State 7600, Move Name: Hazan_Tenshou_Kyaku]
type = VarSet
trigger1= !Time && Const(size.proj.doscale) = 3100
var(0) = 3

[State 7600, Move Name: Houyoku_Sen]
type = VarSet
trigger1= !Time && Const(size.proj.doscale) = 3200
var(0) = 4

[State 7600, Move Name: Tensei_Ranka]
type = VarSet
trigger1= !Time && (Const(size.proj.doscale) = [3300,3301])
var(0) = 5

[State 7600, Move Name: Hosenka]
type = VarSet
trigger1= !Time && Const(size.proj.doscale) = 4000
var(0) = 6



[State 7600, debug]
type = displaytoclipboard
trigger1 = 1
text = "root var(23) %d, var(0) = %d"  
params = root,var(23), var(0)
ignorehitpause = 1

[State 7600, Text Layer 1 fixed]
type = Explod
trigger1 = !Time && var(0)
anim = 8620 + var(0)
ID = 10
onTop = 1
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
scale = 0.32, 0.32
bindTime = -1
removeTime = 100
pauseMoveTime = -1
superMoveTime = -1

[State 7600, Text Layer2 grow]
type = Explod
trigger1 = !Time && var(0)
anim = 8620 + var(0)
ID = 11
onTop = 1
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
scale = 0.32, 0.32
bindTime = -1
removeTime = 8
pauseMoveTime = -1
superMoveTime = -1

[State 7600, Text 1 fix Fade]
type = ModifyExplod
trigger1 = NumExplod(10)
ID = 10
scale = 0.32 + (0.002 * Time), 0.32 + (0.002 * Time)
trans = AddAlpha
alpha = ifElse(Time < 28, 256, 256 - 8 * (Time - 28)), 256

[State 7600, Text 2 grow Fade]
type = ModifyExplod
trigger1 = NumExplod(11)
ID = 11
scale = 0.32 + (0.0625 * Time), 0.32 + (0.0625 * Time)
trans = AddAlpha
alpha = 256 - (32 * Time), 256


;---------------------------------------

[State 7600, safety]
type = removeexplod
trigger1 = time > 60 && numexplod
trigger2 = roundstate != 3

[State 7600, nobars]
type = assertspecial
trigger1 = time <= 40
flag = nobardisplay
flag2 = noFG
flag3 = globalnoshadow

[State 7600, end]
type = destroyself
trigger1 = roundstate != 3


;========================<SUPER FINISH SF3>=============================
[Statedef 7601]
type=A
physics=N
velset=0,0
anim= 9741
sprpriority= -1

[State 7601, bind]
type=posset
trigger1= 1
x=0
y= -Ceil(GameHeight/2) 

[State 7601, snd]
type=playsnd
trigger1= !time
value=900,2
persistent=0

[State 7601, Create BG]
type=explod
trigger1= !time && !NumExplod(6400)
anim=6400
ID=6400
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
bindtime = -1
removetime=-1
supermovetime=65535
pausemovetime=65535
sprpriority=-2
ownpal=1
removeongethit=1
persistent=0
ignorehitpause=1

[State 7601, BG Fade out]
type=modifyexplod
triggerall= numexplod(6400)
trigger1= time=[70,100]
ID=6400
trans=addalpha
alpha= 256-((time-70)*3),256

[State 7601, BG Fade out end]
type=modifyexplod
triggerall= numexplod(6400)
trigger1= time>100
ID=6400
trans=addalpha
alpha= 0,256


[State 7601, Create White Flash]
type=explod
trigger1= !time && !NumExplod(6401)
anim=6401
ID=6401
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
bindtime = -1
removetime=-1
supermovetime=65535
pausemovetime=65535
sprpriority=-1
ownpal=1
trans=addalpha
alpha= 0,256
removeongethit=1
persistent=0
ignorehitpause=1

[State 7601, Flash 1]
type=modifyexplod
triggerall= numexplod(6401)
trigger1= time < 18
ID=6401
trans=addalpha
alpha= 256-time*18,256
ignorehitpause=1

[State 7601, Create Phoenix Charactor]
type=explod
trigger1= !time
anim= 8630 + (Parent,StateNo = 3200) + 2*((Parent,StateNo = 4000) && Random < 500)
ID=8630
Space = Screen
facing = 1
pos = ScreenWidth/2, ScreenHeight/2
bindtime = -1
removetime=-1
supermovetime=65535
pausemovetime=65535
scale=0.45,0.45
sprpriority=0
ownpal=1
removeongethit=1
trans=addalpha
alpha=255,16
persistent=0
ignorehitpause=1

[State 7601, Phoenix Charator In]
type=modifyexplod
triggerall= numexplod(8630)
trigger1= time=[0,3]
ID=8630
scale = 3 - (time * (3 - 0.45)/3.0), 3 - (time * (3 - 0.45)/3.0)
trans = addalpha
alpha = 256, 256-(82*time)
ignorehitpause=1

[State 7601, Phoenix Charator Out]
type=modifyexplod
triggerall= numexplod(8630)
trigger1= time=[65,90]
ID=8630
scale= 0.45+(time-65)*0.102, 0.45+(time-65)*0.102
trans=addalpha
alpha= 256 - (time-65)*10, 10+(time-65)*10
ignorehitpause=1

[State 7601, Phoenix Charator Kill]
type=removeexplod
triggerall= numexplod(8630)
trigger1= time > 99
ID= 8630
ignorehitpause=1

[state 7601, superpause]
type=superpause
trigger1= !time
time=40
anim= -1
sound= -1
movetime=40
darken=0
p2defmul=1
poweradd=0
persistent=0

[State 7601, safety]
type=removeexplod
trigger1= roundstate != 3

[State 7601, nobars]
type=assertspecial
trigger1= time < 80
flag= noFG
flag2=noBG
flag3=nomusic

[State 7601, end]
type=destroyself
trigger1= roundstate != 3


;=========<Chinese character yuan and tian>=========
[Statedef 7522]
type=S
physics=N
ctrl=0
velset=0,0
anim=9742
sprpriority=1

[state 7522, BGFX 1]
type=bgpalfx
trigger1= time=[0,120]
time=1
add= ceil(time*0.5),ceil(time*0.5),ceil(time*0.5)
mul= 256-time*2,256-time*2,256-time*2
color= 256-time*2

[state 7522, BGFX 2]
type=bgpalfx
trigger1= time=121
time=178
add= 60,60,60
mul= 16,16,16
color= 16

[state 7522, BGFX 3]
type=bgpalfx
trigger1= time=[299,319]
time=1
add= 256-(time-299)*12,256-(time-299)*12,256-(time-299)*12
mul= 256,256,256

[State 7522, heartbeat]
type=playsnd
triggerall= time=[40,300]
trigger1= time%70=0
value=700,7
channel=2

[state 7522, Yuan]
type=explod
triggerall= !numexplod(7522) && !numexplod(7523)
trigger1= !time
anim=7522
ID=7522
removetime=-1
supermovetime=65535
pausemovetime=65535
sprpriority=1
ownpal=1
facing= ifelse(facing=-1,-1,1)
persistent=0

[state 7522, modify Yuan 1]
type=modifyexplod
triggerall= numexplod(7522)
trigger1= time=[0,120]
ID=7522
trans=addalpha
alpha= ceil(time*0.8),256
scale= 1-0.008*time , 1-0.008*time
postype=p1
pos= ceil(60-time*0.5),0
facing= ifelse(facing=-1,-1,1)

[state 7522, modify Yuan 2]
type=modifyexplod
triggerall= numexplod(7522)
trigger1= time=[121,255]
ID=7522
trans=addalpha
alpha= ceil(256-(time-121)*2),256

[state 7522, remove Yuan]
type=removeexplod
triggerall= numexplod(7522)
trigger1= time>255
trigger2= roundstate!=[0,1]
ID=7522

[state 7522, Tian]
type=explod
triggerall= !numexplod(7523)
trigger1= time=50
anim=7523
ID=7523
removetime=-1
supermovetime=65535
pausemovetime=65535
sprpriority=1
ownpal=1
facing= ifelse(facing=-1,-1,1)
persistent=0

[state 7522, modify Tian 1]
type=modifyexplod
triggerall= numexplod(7523)
trigger1= time=[50,170]
ID=7523
trans=addalpha
alpha= ceil((time-50)*0.8),256
scale= 1-(0.008*(time-50)) , 1-(0.008*(time-50))
postype=p1
pos= ceil(60-(time-50)*0.5),0
facing= ifelse(facing=-1,-1,1)

[state 7522, modify Tian 2]
type=modifyexplod
triggerall= numexplod(7523)
trigger1= time=[171,305]
ID=7523
trans=addalpha
alpha= ceil(256-(time-171)*2),256

[state 7522, remove all]
type=removeexplod
trigger1= time>305
trigger2= roundstate!=[0,1]

[state 7522, turn]
type=turn
triggerall= time=220
trigger1= facing=-1
persistent=0

[state 7522, changeanim]
type=changeanim
trigger1= time=220
value=7524
persistent=0

[state 7522, palfx 1]
type=palfx
trigger1= time=[220,229]
add= (time-220)*25,(time-220)*25,(time-220)*25
mul= 256,256,256
color=256
time=1

[state 7522, palfx 2]
type=palfx
trigger1= time=[230,259]
add= ceil(256-(time-230)*8.8),ceil(256-(time-230)*8.8), ceil(256-(time-230)*8.8)
mul= 256,256,256
color=256
time=1

[state 7522, palfx 3]
type=palfx
trigger1= time=[260,320]
add= 0,0,0
mul= ceil(256-(time-260)*4.2),ceil(256-(time-260)*4.2),ceil(256-(time-260)*4.2)
color=256
time=1

[state 7522, end this helper]
type= destroyself
trigger1= time>320
trigger2= roundstate!=[0,1]

;========================<CAMERA CONTROL>=============================
[Statedef 7650]
physics=N
velset=0,0
anim=9741

[State 7650, bound]
type=screenbound
trigger1= 1
value=0
movecamera=1,1

[State 7650, end]
type=destroyself
trigger1= roundstate!=[0,1]



;<Detect Wall Near>====================================
[Statedef 9743]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9743
ctrl = 0

[State 9743, Width]
type = Width
trigger1 = 1
value = 0,0

[State 9743, Bind]
Type= BindToParent
trigger1= time
time = 65535
facing =1
pos = 50,0

[State 9743, SpeedPoint1]
type= Varset
trigger1= NumHelper(9745)
trigger1= Helper(9745),StateNo=9745
var(2)= Helper(9745),time
ignorehitpause=1

[State 9743, 2]
type = ReversalDef
trigger1 = Time && !MoveReversed
reversal.attr = SCA, AP
pausetime = 0,0
sparkno = -1
sparkxy =  0,-10
p1stateno = 9744
;p2stateno = 3005
;p1sprpriority = 2 ;Set P1's sprite in front of P2's
;p2sprpriority = 1
ignorehitpause=1
persistent=0

[State 9734, SpeedPoint2]
type= Varset
trigger1= time
var(3)= time
ignorehitpause=1

[State 9743, Safe]
type= destroyself
trigger1= !Alive || RoundState!=2
trigger2= !(Enemynear,NumHelper || Enemynear,NumProj)
trigger3= Parent,MoveType=H || Parent,P2Dist X<50 || Parent,StateNo=710
trigger4= time > 300
trigger5= Enemynear,NumProj
ignorehitpause=1

;<Hited>=============================
[StateDef 9744]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9744
ctrl = 0

[State 9744, Width]
type = Width
trigger1 = 1
value = 0,0

[State 9744, Calculate Speed]
type= varset
;trigger1= PrevStateNo=9743
trigger1= !time
trigger1= (var(3)-var(2)) != 0
fvar(4)= 30.0/(var(3)-var(2))
ignorehitpause=1
persistent=0

[State 9744, Safe]
type= destroyself
trigger1= !Alive || RoundState!=2
trigger2= !(Enemynear,NumHelper || Enemynear,NumProj)
trigger3= Time>120
trigger4= Parent,MoveType=H || Parent,MoveType=A || Parent,P2Dist X<50 || Parent,StateNo=710
trigger5= Enemynear,NumProj
ignorehitpause=1

;<Detect Wall Far>====================================
[Statedef 9745]
type    = S
movetype= I
physics = N
velset = 0,0
anim = 9743
ctrl = 0

[State 9745, Width]
type = Width
trigger1 = 1
value = 0,0

[State 9745, Bind]
Type= BindToParent
trigger1= time
time = 65535
facing =1
pos = 80,0

[State 9745, 2]
type = ReversalDef
trigger1 = Time && !MoveReversed
reversal.attr = SCA, AP
pausetime = 0,0
sparkno = -1
sparkxy =  0,-10
p1stateno = 9744
;p2stateno = 3005
;p1sprpriority = 2 ;Set P1's sprite in front of P2's
;p2sprpriority = 1
ignorehitpause=1
persistent=0

[State 9745, Safe]
type= destroyself
trigger1= !Alive || RoundState!=2
trigger2= !(Enemynear,NumHelper || Enemynear,NumProj)
trigger3= Parent,MoveType=H || Parent,P2Dist X<50 || Parent,StateNo=710
trigger4= time > 300
trigger5= Enemynear,NumProj
ignorehitpause=1



; = = = = = = = = = = = = <CAMERA CONTROLER>= = = = = = = = = = = = = = = 
[Statedef 7650]
physics = N
velset = 0,0
anim = 9741

[State 7650, bound]
type = screenbound
trigger1 = 1
value = 0
movecamera = 1,1

[State 7650, end]
type = destroyself
trigger1 = roundstate = 2


[Statedef 7660]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7660, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1
ignoreHitPause = 1

[State 7660, Safety]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noFG
flag3 = nobardisplay

;------- set config values -----------
[State 7660, get-var10]
type = varset
trigger1 = !time
var(10) = parent,var(10)
persistent = 0

;---- Uncommint compensation to allow Abszoom ----
[State 7660, compensation zoom var]
type = varset
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1 - CameraZoom)

[State 7660, compensation zoom var]
type = varset
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----


[State 7660, set fadin time]
type = varset
trigger1 = !time
var(11) = 12 + var(10)
persistent = 0

[State 7660, set fadout time]
type = varset
trigger1 = !time
var(12) = 12 + var(10)
persistent = 0

[State 7660, set target zoom level]
type = varset
trigger1 = !time
fvar(13) = fvar(21) + 0.5

[State 7660, calcuate zoomin step size]
type = varset
trigger1 = !time
fvar(5) = fvar(13) / var(11)

[State 7660, calcuate zoomout step size]
type = varset
trigger1 = !time
fvar(15) = fvar(13) / var(12)

;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7660, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
var(5) = -1

[State 7660, Change zoom State 1]; 
type = varadd
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) <= 0
trigger2 = var(5) = 2 && var(12) <= 0
var(5) = 1

[State 7660, Change zoom State 2 zoom out]; no super charge helper found zoom out
type = varadd
triggerall = var(5) >= 0
trigger1 = var(5) = 1
trigger1 = !NumHelper(7500) && !NumHelper(7260)
var(5) = 1

;--------------- Pos Move and Binds ---------------
[State 7660, Init Pos]; alway zoom from camera pos to view it smoothly.
type = posset
trigger1 = !time
x = 0;camera always in middle of the screen
y = CameraPos y

[State 7660, fly to parent fad in];zoom in 
type = velset
trigger1 = !time
trigger1 = var(40) && var(5) = 0
x = (ParentDist x + (Const(Size.ground.front) * Const(Size.xScale) * 2.0 )) / var(11)
y = (ParentDist y + (Parent,P2Dist y / 3.0)) / var(11)
ignorehitpause = 1

[State 7660, bind to parent stay for 1]; stay and stop moving
type = BindToParent
trigger1 = var(40) && var(5) = 1
time = 1
facing = 1
pos = Floor(2 * Const(Size.ground.front) * Const(Size.xScale)), Floor(Parent,P2Dist y / 3.0 * Const(Size.yScale))
;pos = Parent,P2Dist x / 4.0, Parent,P2Dist y / 3.0
ignorehitpause = 1

[State 7660, move fadout]; zoom out move
type = velset
trigger1 = var(5) >= 2
trigger2 = var(5) = -1; In case error
x = (-Pos x * facing) / var(12)
y = (CameraPos y - Pos y) / var(12)
persistent = 0

;----------------- Compute zoom factor fvar(22) ---------------------
[State 7660, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) <= var(12)
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / var(12)) * (var(12) - var(6))))
ignorehitpause = 1

[State 7660, Zoom in]; and - counter var(11)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11)
trigger1 = var(11):= var(11) - 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7660, Zoom keep]; no couter but triggered by supercharge helper disappear.
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(11) = 0
trigger2 = var(5) = 1
fvar(22) = (1 + (fvar(13) - (fvar(5) * var(11))))
ignorehitpause = 1

[State 7660, Zoom out]; and - counter var(12)
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 2 && var(12)
trigger1 = var(12):= var(12) - 1
fvar(22) = (1 + (fvar(15) * var(12)))
ignorehitpause = 1



;---------------- Apply Zoom -------
[State 7660, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7660, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > var(12); Unexpected finish
trigger2 = var(5) >= 3; normal exit

[State 7660, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7660, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d, var(12)=%d, fvar(15)=%d, fvar(13)=%d"  
params = var(5),var(6),var(12),fvar(15),fvar(13)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7660, Counter var6 add 1]
type = varadd
trigger1 = var(6) != 0
var(6) = 1

[State 7660, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
var(7) = 1




; = = = = = = = = = = = = <Zoom Controler for ULTRA 1 phase 1>= = = = = = = = = = 
[Statedef 7666]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7666, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1
ignoreHitPause = 1

[State 7666, Safety]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noFG
flag3 = nobardisplay

;---- Uncommint compensation to allow Abszoom ----
[State 7666, compensation zoom var]
type = varset
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1 - CameraZoom)

[State 7666, compensation zoom var]
type = varset
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----



;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7666, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
trigger2 = !(Parent,StateNo = [4000,4002])
var(5) = -1

[State 7666, Change zoom State 1]; 
type = varset
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && !time
var(6) = 1

[State 7666, Change to State 2]
type = varset
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(6)
trigger1 = Parent,Anim = 4000
trigger1 = Parent,AnimElemTime(6) = 0
trigger1 = var(6):= 1
var(5) = 1

;----------------- Move Camera -------------
[State 7666, Pos Init]
type = posset
trigger1 = var(5) = 0 && !time
x = 0

[State 7666, Pos Init vel]
type = velset
trigger1 = var(5) = 0 && !time
x = ParentDist x / 6.0

[State 7666, Pos fix]
type = BindToParent
trigger1 = var(5) = 0 && var(6) >= 6
trigger2 = var(5) = 1 && var(6) = 1
time = 1
facing = 1
pos = 0, 0

[State 7666, Pos to center]
type = velset
trigger1 = var(5) = 1 && var(6) = 1
x = Pos x * -facing / 12.0


;----------------- Compute zoom factor fvar(22) ---------------------
[State 7666, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) = [1,30]
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / 30) * (30 - var(6))))
ignorehitpause = 1

[State 7666, Zoom in]; 
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(6) = [1,24]
fvar(22) = (1 + fvar(21) + 0.08333 * var(6)); result 2
ignorehitpause = 1

[State 7666, Zoom out]; 
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 1 && var(6) = [1,12]
fvar(22) = (1 + ((fvar(21) + 2)/12) * (12 - var(6))); result 2
ignorehitpause = 1

;---------------- Apply Zoom -------
[State 7666, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7666, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > 30; Unexpected finish
trigger2 = var(5) >= 1; normal exit
trigger2 = var(6) > 12

[State 7666, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7666, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d"  
params = var(5),var(6)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7666, Counter var6 add 1]
type = varadd
trigger1 = var(6) != 0
var(6) = 1

[State 7666, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
var(7) = 1


; = = = = = = = = = = = = <Zoom Controler for ULTRA 1 phase 2>= = = = = = = = = = 
[Statedef 7667]
type = A
physics = N
movetype = I
velset = 0,0
anim = 9741
sprpriority = -4

;Only use this helper with player or a player helper
;Super zoom in effect.
;var(5)	Camera Action State	-1 mean exit and close (0 is zoom in 1 is stay 2 is zoom out 3 is destroy)
;var(6)	Camera Counter for var(5) State
;var(7) Camera Counter for shake
;var(8) Focus Point x
;var(9) Focus Point y
;var(10) is Parent Var(10)
;var(11) is zoom in / fade in time
;var(12) is zoom out / fade out time
;Var(40) is Parent ID or Target ID
;--------------------------------------
;fvar(13) is (Target zoom level - 1)
;fvar(5) is zoom in step values
;fvar(15) is zoom out step values
;fvar(21) is (1 - Camzer zoom level)
;fvar(22) final value of relative zoom factor which used in zoom controller


;---------- Parent Check ----------------
[State Parent Check 1]
type = varset
trigger1 = var(40) = 0
trigger1 = PlayerIDExist(Const(size.proj.doscale))
var(40) = Const(size.proj.doscale)
ignoreHitPause = 1

[State Parent Check 2]
type = varset
trigger1 = var(40)
trigger1 = PlayerIDExist(Const(size.proj.doscale)) = 0
var(40) = 0
ignoreHitPause = 1

;------- Control system camera -----------
[State 7667, bound]
type = screenbound
trigger1 = 1
value = 1
movecamera = 1,1
ignoreHitPause = 1

[State 7667, Safety]
type = null;AssertSpecial
trigger1 = 1
flag = noshadow
flag2 = noFG
flag3 = nobardisplay

;---- Uncommint compensation to allow Abszoom ----
[State 7667, compensation zoom var]
type = varset
trigger1 = CameraZoom > 0 && CameraZoom < 1
fvar(21) = (1 - CameraZoom)

[State 7667, compensation zoom var]
type = varset
trigger1 = CameraZoom >= 1
fvar(21) = 0

;---- Uncommint compensation to allow Abszoom ----



;------------- INIT Finished -----------------

;------------- Camera Phase control var(5) ---------
[State 7667, Exit for unexpected reasons]
type = varset
triggerall = var(5) != -1
trigger1 = !var(40); Parent or Target not existed
trigger1 = var(6) := 1
trigger2 = !(Parent,StateNo = [4000,4002])
var(5) = -1
ignorehitpause = 1

[State 7667, Change zoom State 1]; 
type = varset
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && !time
var(6) = 1
ignorehitpause = 1

[State 7667, Stage 2]
type = varset
triggerall = var(5) >= 0
trigger1 = var(5)=0 && var(6)
trigger1 = Parent,Anim = 4000
trigger1 = Parent,AnimElemTime(97)=0
trigger1 = var(6):= 1
var(5) = 1
ignorehitpause = 1

[State 7667, Stage 3]
type = varset
triggerall = var(5) >= 0
trigger1 = var(5)=1 && var(6)
trigger1 = Parent,Anim = 4000
trigger1 = Parent,AnimElemTime(105)=0
trigger1 = var(6):= 1
var(5) = 2
ignorehitpause = 1


[State 7667, Stage 4]
type = varset
triggerall = var(5) >= 0
trigger1 = var(5)=2 && var(6)
trigger1 = Parent,Anim = 4000
trigger1 = Parent,AnimElemTime(106)=1
trigger1 = var(6):= 1
var(5) = 3
ignorehitpause = 1

;----------------- Move Camera -------------

[State 7667, PosUp]
type = BindToParent
trigger1 = var(5) = 0 && var(6) = [1,12]
time = 1
facing = 1
pos = var(6) * 8, -(var(6) * 3)
ignorehitpause = 1

[State 7667, PosUp]
type = BindToParent
trigger1 = var(5) = 0 && var(6) > 12
time = 1
facing = 1
pos = 0, -36
ignorehitpause = 1

[State 7667, velup]
type = velset
trigger1 = var(5) = 1 && var(6) = 1
y = -0.8

[State 7667, velstop]
type = velset
trigger1 = var(5) = 2 && var(6) = 1
x = 0
y = 0
ignorehitpause = 1

[State 7667, Hit Bind]
type = BindToParent
trigger1 = var(5) = 2 && var(6) = 1
time = 1
facing = 1
pos = 0, -50
ignorehitpause = 1


[State 7667, veldown]
type = veladd
trigger1 = var(5) = 3 && var(6)
x = 0
y = 0.18
ignorehitpause = 1

;----------------- Compute zoom factor fvar(22) ---------------------
[State 7667, compute scale on error unexpected exit]
type = varset
triggerall = var(5) = -1
trigger1 = var(6) = [1,30]
fvar(22) = IFElse(fvar(22) <= 1, 1, 1 + (((fvar(22) - 1) / 30) * (30 - var(6))))
ignorehitpause = 1

[State 7667, Zoom in]; 
type = VarSet
triggerall = var(5) >= 0
trigger1 = var(5) = 0 && var(6) = [1,12]
fvar(22) = (1 + fvar(21) + 0.03333 * var(6)); result 0.4
ignorehitpause = 1

[State 7667, zoom hit]
type = varset
trigger1 = var(5) = 2 && var(6) = 1
fvar(22) = (1 + fvar(21) + 1.6); result 1.6
ignorehitpause = 1

[State 7667, zoom out]
type = varset
trigger1 = var(5) = 3 && var(6) = [1,48]
fvar(22) = (1 + (fvar(21) + 1.6)/48 * (48-var(6)) )
ignorehitpause = 1

;---------------- Apply Zoom -------
[State 7667, Apply Zoom]
type = zoom
triggerall = fvar(22); needs to be >= 1
trigger1 = time >= 0
scale = fvar(22)
pos = ((pos x) / fvar(22)) * CameraZoom, ((pos y) -  (CameraPos y / fvar(22))) * CameraZoom
ignorehitpause = 1


;---------------- End --------------
[State 7667, end]
type = destroyself
trigger1 = var(5) = -1
trigger1 = var(6) > 30; Unexpected finish
trigger2 = var(5) >= 3; normal exit
trigger2 = var(6) > 48

[State 7667, Debug 1]
type = displaytoclipboard
trigger1 = 1
text = "X=%d, Y=%d,fvar(22)=%d ,CAMZOM=%d, fvar(21)=%d"  
params = pos x, pos y, fvar(22) , CameraZoom, fvar(21)
ignorehitpause = 1

[State 7667, Debug 2]
type = appendtoclipboard
trigger1 = 1
text = "\nActSTAT=%d, COUNT=%d"  
params = var(5),var(6)
ignorehitpause = 1


;------- Run Counter must put at end--------
[State 7667, Counter var6 add 1]
type = varadd
trigger1 = var(6) != 0
var(6) = 1

[State 7667, Counter var7 add 1]
type = varadd
trigger1 = var(7) != 0
var(7) = 1


;======================== < Revange Gauge 400 max > ==================
[StateDef 8000]
type = S
velSet = 0,0
anim = 9741
sprpriority = 1

[State 8000, 2nd Player var]
type = varset
trigger1 = !time
trigger1 = Parent,var(34)
trigger1 = Parent,ID > Parent,var(34)
var(1) = 1


[State 8000, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 8000, AssertSpecial]
type = AssertSpecial
trigger1 = 1
flag  = noautoturn
flag2 = noshadow
ignoreHitPause = 1

[State 8000 pos fix]
type = posset
trigger1 = 1
x = Floor(ScreenWidth/2.0/CameraZoom * -facing)
y = 10

[State 8000, Gauge Frame BG]
type = Explod
triggerall = !NumExplod(8001)
trigger1 = RoundState>=2
vel = 0,0
anim = 8001
ID = 8001
sprpriority = 2
ontop = 1
Space = Screen
;bindID = ID
pos = IFElse(facing = 1,0,ScreenWidth) + (90 * facing), Floor(ScreenHeight - 6 - IFElse(var(1),10,0))
facing = facing
bindtime = -1
removetime = -1
removeongethit = 0
shadow = 0
ownpal = 1
scale = 0.5 ,0.5
trans = sub
;alpha = 256,64
ignorehitpause = 1

[State 8000, Gauge Frame]
type = Explod
triggerall = !NumExplod(8000)
trigger1 = RoundState>=2
vel = 0,0
anim = 8000
ID = 8000
sprpriority = 2
ontop = 1
Space = Screen
;bindID = ID
pos = IFElse(facing = 1,0,ScreenWidth) + (90 * facing), Floor(ScreenHeight - 6 - IFElse(var(1),10,0))
facing = facing
bindtime = -1
removetime = -1
removeongethit = 0
shadow = 0
ownpal = 1
scale = 0.5 ,0.5
trans = add
alpha = 256,64
ignorehitpause = 1

[State 8000, Gauge Bar]
type = Explod
triggerall = !NumExplod(8002)
trigger1 = RoundState>=2
vel = 0,0
anim = 8002
ID = 8002
sprpriority = 2
ontop = 1
Space = Screen
;bindID = ID
pos = IFElse(facing = 1,0,ScreenWidth) + (90 * facing), Floor(ScreenHeight - 6 - IFElse(var(1),10,0))
facing = facing
bindtime = -1
removetime = -1
removeongethit = 0
shadow = 0
ownpal = 1
scale = 0.5 ,0.5
trans = add
alpha = 256,32
ignorehitpause = 1

[State 8000, Gauge Bar Scale < 400]
type = ModifyExplod
triggerall = NumExplod(8002)
trigger1 = Parent,var(52) >= 0 && Parent,var(52) < 400
ID = 8002
trans = add
alpha = 256,32
scale = (Parent,var(52)/400.0 * 0.5) ,0.5
ignorehitpause = 1

[State 8000, Gauge Bar Scale > 400]
type = ModifyExplod
triggerall = NumExplod(8002)
trigger1 = Parent,var(52) >= 400
ID = 8002
trans = add
alpha = 256,32
scale = 0.5, 0.5
ignorehitpause = 1

[State 8000, Flash Gauge]
type = Explod
triggerall = !NumExplod(8003)
trigger1 = Parent,var(52) >= 400
vel = 0,0
anim = 8003
ID = 8003
sprpriority = 3
ontop = 1
Space = Screen
;bindID = ID
pos = IFElse(facing = 1,0,ScreenWidth) + (90 * facing), Floor(ScreenHeight - 6 - IFElse(var(1),10,0))
facing = facing
bindtime = -1
removetime = -1
removeongethit = 0
shadow = 0
ownpal = 1
scale = 0.5 ,0.5
trans = add
alpha = 256,256
ignorehitpause = 1

[State 8000, Flash ULTRA]
type = Explod
triggerall = !NumExplod(8004)
trigger1 = Parent,var(52) >= 400
vel = 0,0
anim = 8004
ID = 8004
sprpriority = 3
ontop = 1
Space = Screen
;bindID = ID
pos = IFElse(facing = 1,0,ScreenWidth) + (114 * facing), Floor(ScreenHeight - 5 - IFElse(var(1),10,0))
facing = 1
bindtime = -1
removetime = -1
removeongethit = 0
shadow = 0
ownpal = 1
scale = 0.5 ,0.5
trans = add
alpha = 256,256
ignorehitpause = 1

[State 8000, Remove Ultra 1]
type = RemoveExplod
trigger1 = NumExplod(8003)
trigger1 = Parent,var(52) < 400
ID = 8003
ignorehitpause = 1

[State 8000, Remove Ultra 2]
type = RemoveExplod
trigger1 = NumExplod(8004)
trigger1 = Parent,var(52) < 400
ID = 8004
ignorehitpause = 1

[State 8000, Safe]
type = RemoveExplod
trigger1 = RoundState > 2
trigger2 = NumHelper(8000) > 1

[State 8000, End]
type = DestroySelf
triggerall = IsHelper
trigger1 = RoundState > 2
trigger2 = NumHelper(8000) > 1

;========================<Intro CAMERA CONTROL>=============================
[StateDef 8999]
type = S
velSet = 0,0
anim = 9741

[State 8999, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 1,1
ignoreHitPause = 1

[State 8999, End]
type = DestroySelf
trigger1 = RoundState = 2

;Moon Drive Passive Portrait
[Statedef 9994]
type = A
physics = N
MoveType = I
sprpriority = 0
anim = 9741
ctrl = 0

;8= Portrait fade in, 14 = Portait full, 40 = fade out

[State 9994, Turn]
type = Turn
trigger1 = time < 2
trigger1 = Enemynear,facing = facing


[State 9994, Portrait-Active]
type = Explod
triggerall = !NumExplod(9994)
trigger1 = var(6) = 8
anim = 9994
ID = 9994
space = screen
facing = facing
pos = ScreenWidth * 0.5 - facing*Const720p(30), ScreenHeight * 0.5 - Const720p(56.42179396)
removetime = 42
scale = Const720p(1.0), Const720p(1.0)
vel = facing * Const720p(1), Const720p(1.8807264)
supermovetime = 4294967295
pausemovetime = 4294967295
sprpriority = -3
angle = 0
ontop = 0
shadow = 0
ownpal = 1
;remappal = 7190,var(10) + 1
ignorehitpause = 1

[State 9994, Portrait-Active]
type = ModifyExplod
triggerall = NumExplod(9994)
trigger1 = var(6) = [8,16]
ID = 9994
trans = add
alpha = 32*(var(6)-8), 256 - 32*(var(6)-8)

[State 9994, Portrait-Active]
type = ModifyExplod
triggerall = NumExplod(9994)
trigger1 = var(6) = [42,50]
ID = 9994
trans = add
alpha = 256 - 32*(var(6)-42), 32*(var(6)-42)

[State Safe Remove]
type = DestroySelf
trigger1 = var(6) > 50
recursive = 1
removeexplods  = 1

[State Counter-Run]
type = varadd
trigger1 = var(6) < 4294967295
var(6) = 1







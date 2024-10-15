
;==========<Hit Rewrite>==========
[Statedef 5000]
type    = S
movetype= H
physics = N
velset = 0,0

[state 5000, jump to cheap ok]
type= changestate
trigger1= anim=5030 && !alive && (enemynear,hitdefattr=SC,NA)
value=5130

[State 5000, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(groundtype) = 1),5000,5010) + GetHitVar(animtype)

[State 5000, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 5000, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 5000, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 5000, 5] ;State type gets set to aerial if getting hit up
type = StateTypeSet
trigger1 = Time = 0
trigger1 = GetHitVar(yvel) != 0 || GetHitVar(fall)
trigger2 = Pos Y != 0
statetype = a

[State 5000, 6]
type = ChangeState
trigger1 = HitShakeOver
trigger1 = GetHitVar(yvel) = 0 && !GetHitVar(fall)
value = 5001 ;HITG_SLIDE

[State 5000, 7]
type = ChangeState
trigger1 = HitShakeOver
value = 5030

[State 5000, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 5000, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 5000, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
persistent = 0
time = 15
waveform = sinesquare
ampl = 140


[Statedef 5200,Recovery Roll default]
type=U
physics=U
ctrl = 0

[State 5200, Dizzy fix]
type = SelfState
trigger1 = var(39) = 1
value = 5050

[State 5200]
type = ChangeState
trigger1 = 1
value = 5220

;==========<Recovery Roll when touch ground>======
[Statedef 5220]
type=S
physics=S
anim=5200
velset=0,0
ctrl = 0

[State 5200, Dizzy fix]
type = SelfState
trigger1 = var(39) = 1
value = 5050

[state 5220, posfix]
type=posset
trigger1= !time
y=0
persistent=0

[state 5220, posadd]
type=posadd
trigger1= !time
x=-50
persistent=0

[state 5220, palfx]
type=palfx
trigger1=!time
time=3
add = 128,128,128
mul = 256,256,256
sinadd = 128,128,128,3
persistent=0

[state 5220, nothitby]
type=nothitby
trigger1= 1
value= SCA,AA,AP
time=1

[state 5220, sound]
type=playsnd
trigger1= time=1
value= 10,2
channel=2
persistent=0

[state 5220, sound]
type=playsnd
trigger1= animelem=3
value= 5030,0
channel=0
persistent=0

[state 5220, velset]
type=velset
trigger1= animelemtime(4)>0 && animelemtime(6)<0
x= -4 * Const(size.xscale)

[State 5220, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5220, 5] ;Cant be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Cant be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 1

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

[state 5220, velset]
type=changestate
trigger1= !animtime
value=0
ctrl=1



;<Air get-hit falling>===================================
[Statedef 5050]
type    = A
movetype= H
physics = N

[State 5050, 1] ;Change anim when done with transition
type = ChangeAnim
trigger1 = !AnimTime
trigger1 = Anim = 5035
trigger2 = !Time     ;If no transition anim
trigger2 = Anim != 5035
trigger2 = (Anim != [5051, 5059]) && (Anim != [5061, 5069])
trigger2 = Anim != 5090 ;Not if hit off ground anim
value = 5050

[State 5050, 2] ;Coming down anim
type = ChangeAnim
trigger1 = anim = [5050,5059]
trigger1 = Vel Y >= ifelse(anim = 5050, Const720p(4), Const720p(-8))
trigger1 = SelfAnimExist(anim+10)
value = anim+10
persistent = 0

[State 5050, 3] ;Gravity
type = VelAdd
trigger1 = 1
y = GetHitVar(yaccel)

[State 5050, 4] ;Recover near ground
type = ChangeState
triggerall = CanRecover && Vel Y > 0 && Alive
triggerall = Pos Y >= -40
triggerall = !var(39)
trigger1 = !AILevel && (Command = "recovery" || Command = "recoverR")
trigger2 = AILevel && Random<(20 + 40*(P2MoveType=A) + 10*AILevel)
value = 5220 ;Air get-hit (fall recovery on ground)

[State 5050, 5]; Recover in mid air
type = ChangeState
triggerall = Vel Y > Const(movement.air.gethit.airrecover.threshold)
triggerall = Alive && CanRecover
triggerall = time > gethitvar(fall.recovertime)
triggerall = !var(39)
trigger1 = !AILevel && (Command = "recovery" || Command = "recoverR")
trigger2 = AILevel && Random<(20 + 40*(P2MoveType!=A) + 10*AILevel)
value = 5210 ;Air get-hit (fall recovery in air)

[State 5050, 6]
type = ChangeState
trigger1 = Vel Y > 0
trigger1 = Pos Y >= ifelse((anim = [5051,5059]) || (anim = [5061,5069]), 0, Const(movement.air.gethit.groundlevel))
value = 5100 ;Downed get-hit (hit ground from fall)

;==========< TARGET SAFE FALL >==========
[Statedef 5205]
type = A
physics = N
movetype = H

[State 5200, Dizzy fix]
type = SelfState
trigger1 = var(39) = 1
value = 5050

[State 5205, Anim]
type = changeanim
trigger1 = !animtime
trigger1 = anim = 5035
value = 5050

[State 5205, Accel]
type = veladd
trigger1 = 1
y = gethitvar(yaccel)

[State 5205, Ground self]
type = selfstate
trigger1 = !var(39)
trigger1 = AuthorName = "BeterHans" && Name = "Chun Li"
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5220

[State 5205, Ground other]
type = selfstate
trigger1 = !var(39)
trigger1 = !(AuthorName = "BeterHans" && Name = "Chun Li")
trigger1 = vel y > 0
trigger1 = pos y >= const(movement.air.gethit.groundrecover.ground.threshold)
value = 5200

[State 5205, Air]
type = selfstate
trigger1 = time >= 60 && var(39) = 0
value = 5210

[State 5205, Safe]
type = selfstate
trigger1 = pos y > 0
value = 5100

;==========<PREINTRO>==========
[Statedef 190]
type=S
ctrl=0
velset=0,0

[State 190, Turns Intro]
type = ChangeState
trigger1 = TeamMode = Turns
trigger1 = !RoundsExisted && RoundNo >= 2
trigger1 = var(0):=6900
value = 6900

[State 190, Intro vs A Morrigan]
type = ChangeState
triggerall = numenemy
triggerall = !(TeamMode = Simul) && !(Enemy, TeamMode = Simul)
trigger1 = Enemy,Name = "Morrigan_Aensland"
trigger1 = Enemy,AuthorName = "BeterHans"
trigger1 = Enemy,var(32)
value = 110630

[State 190, VS Yamazaki]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= (enemy,name="yamazaki" || enemy,name="cvsyamazaki")
trigger1= var(0):=2
value=902

[State 190, VS CVSMai]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= enemy,name="cvsmai"
trigger1= var(0):=3
value=903

[State 190, VS Yun]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= (enemy,name="yun" || enemy,name="cvsyun" || enemy,name="lee yun" || enemy,name="yun lee" || enemy,name="sf3yun")
trigger1= var(0):=4
value=904

[State 190, VS BAD Guys]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= ((enemy,name="akuma" && !(enemy,authorname="Phantom.of.the.Server")) || enemy,name="shin akuma" || enemy,name="gouki" || enemy,name="shin gouki")
trigger2= (enemy,name="Hugo" || enemy,name="Vega" || enemy,name="cvsvega" || enemy,name="M.Bison" || enemy,name="cvsbison" || enemy,name="balrog" || enemy,name="cvsbalrog" || enemy,name="sagat" || enemy,name="Adon" || enemy,name="Iori")
trigger3= (enemy,name="Rugal" || enemy,name="cvsvega" || enemy,name="Rugal Bernstein" || enemy,name="cvsrugal")
trigger4= (enemy,name="Geese Howard" || enemy,name="Geese" || enemy,name="cvsgeese" || enemy,name="Orochi" || enemy,name="Mukai")
trigger5= (enemy,name="Iori Yagami" || enemy,name="Iori" || enemy,name="cvsiori")
trigger5= var(0):=5
value=905

[State 190, VS FUN Guys]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= (enemy,name="dan" || enemy,name="Dan Hibiki" || enemy,name="cvsdan" || enemy,name="sakura" || enemy,name="cvssakura")
trigger2= (enemy,name="Pocket Shin Akuma" || enemy,name="Pocket Shin gouki")
trigger3= (enemy,name="Pocket Chun-Li" || enemy,name="Pocket Ken" || enemy,name="Pocket Ryu")
trigger4= (enemy,name="Athena Asamiya" || enemy,name="Athena" || enemy,name="Haruhi Suzumiya" || enemy,name="Haruhi")
trigger5= (enemy,name="Iori Yagami" || enemy,name="Iori" || enemy,name="cvsiori")
trigger5= var(0):=6
value=906

[State 190, VS Awesome Guys]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
trigger1= ((enemy,name="akuma") || enemy,name="shin gouki") && enemy,var(1)>6 && (enemy,authorname="Phantom.of.the.Server")
trigger1= var(0):=7
trigger2= (enemy,name="Gill" && enemy,authorname="GM")
trigger2= var(0):=7
value=907

[State 190, VS herself]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
triggerall= (enemy,authorname="beterhans")
trigger1= enemy,name="chun li" && var(0):=8
value=908

[State 190, VS other Chun-Lis]
type=changestate
triggerall= numenemy && !(teammode=simul) && !(enemy,teammode=simul)
triggerall= !(enemy,authorname="beterhans")
trigger1= enemy,name="chun-li" || enemy,name="chun li" || enemy,name="SF3 Chun Li" || enemy,name="cvschunli"
trigger1= var(0):=9
value=909

[State 190, With Akuma]
type=changestate
trigger1= Numenemy
trigger1= teammode=simul && NumPartner
trigger1= partner,name="Akuma" && partner,authorname="Phantom.of.the.Server"
trigger1= var(0):=20
;trigger2= NumEnemy
;trigger2= Enemy,var(1)<7
;trigger2= Teammode!=Simul && !(Enemy,Teammode=Simul)
;trigger2= Enemy,name="Akuma" && Enemy,authorname="Phantom.of.the.Server"
;trigger2= var(0):=20
value=920

[State 190, specialintrounavailable]
type = Varset
trigger1= !time
var(0)=0

[State 190, normal intro]
type=ChangeState
trigger1= time >= 1 && var(0) = 0
value = IfElse(random<500,901,900)


;====================<TURNS INTRO>====================
[StateDef 6900]
type = A
anim = 42
velSet = 0,0
ctrl = 0

[State 6900, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6900, ScreenBound]
type = ScreenBound
trigger1 = 1
value = 0
moveCamera = 0,0
ignoreHitPause = 1

[State 6900, Camera Helper]
type = Helper
trigger1 = !NumHelper(8999)
helpertype = Normal
stateNo = 8999
ID = 8999
name = "Camera"
posType = P1

[State 6900, PosSet]
type = PosSet
trigger1 = !Time
x = (-320 + abs(pos x)) * Facing

[State 6900, VelSet]
type = VelSet
trigger1 = !Time
x = (Helper(8999), ParentDist x) / -40.0
y = -10.25

[State 6900, VelAdd]
type = VelAdd
trigger1 = 1
y = 0.5

[State 6900, End]
type = ChangeState
trigger1 = Time
trigger1 = pos y > -vel y
value = 6901


;Landing ==========================
[StateDef 6901]
type = S
physics = S
anim = 6901
velSet = 0,0

[State 6901, Assert: Intro]
type = AssertSpecial
trigger1 = 1
flag = Intro

[State 6901, PosSet]
type = PosSet
trigger1 = !Time && NumHelper(8999)
x = ceil(Helper(8999), pos x)
y = 0

[State 6901, dust]
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

[State 6901, Landing snd]
type=playsnd
trigger1= !time
value=10,4
channel=2
persistent=0

[State 6901, Skip anime]
type = ChangeAnim
trigger1 = anim = 6901
trigger1 = animelemtime(11)=0
trigger1 = random < 600
value = 6901
elem = 16
persistent=0


[State 6901, End]
type = ChangeState
trigger1 = !AnimTime
value = 0


;==========<INTRO vs A.Morrigan>==========
[Statedef 110630]
type=S
anim = 0

[State 110630, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 110630, Morrigan Not in 630]
type = ChangeState
triggerall = time > 10
trigger1 = Enemynear,Name != "Morrigan_Aensland"
trigger2 = P2StateNo != 630
value = 0

[State 110630, intro]
type = ChangeAnim
trigger1 = time = 120
value = 110630

[State 110630 Turns]
type = Turn
triggerall = Anim = 110630
trigger1 = animelem = 2
trigger2 = animelem = 11

[State 110630, Hehe SND]
type = PlaySnd
trigger1 = Anim = 110630
trigger1 = animelem = 5
value = 9033, 2
channel = 0

[State 110630, Mask]
type = explod
trigger1 = SelfAnimExist(110631) && !NumExplod(110631)
trigger1 = Anim = 110630 && AnimElem = 5
anim = 110631
ID = 110631
postype = P1
pos = 0,0
bindtime = -1
removetime = 60
scale = Const(size.xscale),Const(size.yscale)
ownpal = 0
sprpriority = 1

[State 110630, Miss SND]
type = PlaySnd
trigger1 = Anim = 110630
trigger1 = animelem = 7
value = 5020, 0
channel = 0

[State 110630, END]
type = ChangeState
trigger1 = anim = 110630 && !animtime
value = 0


;==========<INTRO 0>==========
[Statedef 900]
type=S
anim=900

[State 900, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 900, snd]
type=playsnd
trigger1= animelem=5
value=5090, 3
channel=0

[State 900, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 1>==========
[Statedef 901]
type=S
anim=901

[State 901, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 901, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 2 VS Yamazaki>==========
[Statedef 902]
type=S
anim=902

[state 902, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 902, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 902, voice 1]
type=playsnd
trigger1= animelem=20
value= 5090,1
channel=0
persistent=0

[State 902, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 3 VS Mai>==========
[Statedef 903]
type=S
anim=903

[state 903, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 903, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 903, voice laugh]
type=playsnd
triggerall= anim=903
trigger1= animelem=3
value= 5090,4
channel=0
persistent=0

[State 903, voice 1]
type=playsnd
triggerall= anim=903
trigger1= animelem=15
value= 5090,6
channel=0
persistent=0

[State 903, end]
type=changestate
trigger1= !animtime
value=0

;==========<Intro 4 VS Yun>========
[Statedef 904]
type=S
anim=904

[state 904, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 904, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 904, voice 1]
type=playsnd
trigger1= animelem=8
value= 5090,0
channel=0
persistent=0

[State 904, voice 2]
type=playsnd
trigger1= animelem=27
value= 5090,5
channel=0
persistent=0

[State 904, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 5 VS Bads>==========
[Statedef 905]
type=S
anim=905

[state 905, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 905, intro]
type=assertspecial
trigger1= 1
flag=intro

[state 905, wait for the bad guy to finish his behaviour]
type=changeanim
triggerall= enemy,stateno!=0
trigger1= anim=905 && animelemtime(4)=8
value=905
elem=4

[State 905, voice 1]
type=playsnd
triggerall= anim=905
trigger1= animelem=10
value= 5090,7
channel=0
persistent=0

[State 905, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 6 VS Funs>==========
[Statedef 906]
type=S
anim=906

[state 906, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 906, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 906, voice 1]
type=playsnd
triggerall= anim=906
trigger1= animelem=12
value= 5090,4
channel=0
persistent=0

[State 906, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 6 VS Awesomes>==========
[Statedef 907]
type=S
anim=907

[state 907, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 907, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 907, posfix1]
type=posadd
trigger1= !time
x= 33
persistent=0

[State 907, posfix2]
type=posadd
trigger1= animelem=5
x= -33
persistent=0

[State 907, Chinese character]
type=helper
triggerall= !numhelper(7522) && roundstate=0
trigger1= time=10
helpertype= normal
name= "chinese character"
ID= 7522
stateno=7522
keyctrl=0
ownpal=1
postype=p1
pos= 1,-83
size.xscale=0.24
size.yscale=0.24
supermovetime=65535
pausemovetime=65535
persistent=0

[State 907, poweradd]
type=poweradd
trigger1= time=250
trigger2= !animtime
value=3000
persistent=0

[State 907, end]
type=changestate
trigger1= !animtime
value=0

;==========<INTRO 8 VS HerSelf>===================
[Statedef 908]
type=S
physics=S
anim= ifelse(facing=1,910,911)
sprpriority= ifelse(facing=1,-1,0)

[state 908, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 908, intro]
type=assertspecial
trigger1= 1
flag=intro

[state 908, set a camera to memory start pos]
type=helper
trigger1= !time && !numhelper(7650)
helpertype= normal
stateno= 7650
ID= 7650
name="camera"
postype=p1

[state 908, camera no following parent]
type=screenbound
trigger1=1
value=1
movecamera=0,0

[state 908, move closer]
type=posset
trigger1= !time
x= -18*facing
persistent=0

[state 908, right talk]
type=playsnd
triggerall= facing=-1
trigger1= anim=911 && animelem=4
value= 5090,3
channel=0
persistent=0

[state 908, left talk]
type=playsnd
triggerall= facing=1
trigger1= anim=910 && animelem=2
value= 5090,8
channel=0
persistent=0

[state 908, left movepos 1]
type=posadd
triggerall= facing=1
trigger1= anim=910 && animelem=5
x= -33
persistent=0

[state 908, left movepos 2]
type=posadd
triggerall= facing=1
trigger1= anim=910 && animelem=7
x= -5
persistent=0

[state 908, right movepos 1]
type=posadd
triggerall= facing=-1
trigger1= anim=911 && animelem=18
x= -13
persistent=0

[state 908, right movepos 2]
type=posadd
triggerall= facing=-1
trigger1= anim=911 && animelem=19
x= -6
persistent=0

[state 908, right movepos 3]
type=posadd
triggerall= facing=-1
trigger1= anim=911 && animelem=21
x= -3
persistent=0

[state 908, right movepos 3]
type=posadd
triggerall= facing=-1
trigger1= anim=911 && animelem=22
x= 20
persistent=0

[state 908, pushback both]
type=velset
trigger1= anim=910 && animelemtime(16)>=18 && animelemtime(17)<0
trigger2= anim=911 && animelemtime(29)>=18 && animelemtime(30)<0
x= ((helper(7650),parentdist x)/-6)

[state 908, push finish]
type=velset
trigger1= anim=910 && animelemtime(17)=0
trigger2= anim=911 && animelemtime(30)=0
x= 0

[state 908, pos final fix]
type=posset
trigger1= anim=910 && animelemtime(17)=0
trigger2= anim=911 && animelemtime(30)=0
x=ceil(helper(7650),pos x)

[state 908, kick wind sound]
type=playsnd
triggerall= anim=910
trigger1= animelem=9 || animelem=12  || animelem=15
value=210,1
channel=3

[state 908, hit sound]
type=playsnd
triggerall= anim=911
trigger1= animelem=23 || animelem=26
value=310,2
channel=4

[state 908, hit sound]
type=playsnd
triggerall= anim=911
trigger1= animelem=29
value=310,0
channel=4

[state 908, hit spark]
type=explod
triggerall= anim=910
trigger1= animelem=10 || animelem=13  || animelem=16
anim=7010+(random%8)
ID=7000
sprpriority=1
postype=p1
pos=33,ifelse((animelem=10),-94,ifelse((animelem=13),-70,-83))
ownpal=1
removetime= -2

[state 908, hit shake]
type=envshake
triggerall= anim=911
trigger1= animelem=23 || animelem=26 || animelem=29
time= ifelse((animelem=29),16,6)
freq= ifelse((animelem=29),80,100)
ampl= ifelse((animelem=29),9,6)

[state 908, end]
type=changestate
trigger1= !animtime
value=0


;==========<INTRO 9 VS other Chun-li(s)>==========
[Statedef 909]
type=S
anim=909

[state 909, clearvar0]
type=varset
trigger1= !time
var(0)=0

[State 909, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 909, end]
type=changestate
trigger1= !animtime
value=0

;=========<Intro With Akuma>===============
[Statedef 920]
type=S
anim= ifelse(prevstateno=52,922,9741)
velset=0,0

[State 920, intro]
type=assertspecial
trigger1= 1
flag=intro

[State 920, Screen]
type=Screenbound
trigger1=1
value=0

[State 920, Start!]
type=changeanim
triggerall= Anim!=920 && anim=9741
trigger1= !NumPartner
trigger2= Enemy,Teammode=Simul
trigger2= enemynear,stateno=0 && enemynear(1),stateno=0
trigger3= !(Enemy,Teammode=Simul)
trigger3= enemynear,stateno=0
trigger4= time>600
value=920
persistent=0

[State 920, Start2]
type=changeanim
triggerall= Anim!=920 && NumEnemy>1 && anim=9741
trigger1= enemynear,name="akuma" && enemynear,authorname="Phantom.of.the.Server"
trigger1= enemynear(1),name="chun li" && enemynear(1),authorname="beterhans"
trigger2= enemynear,name="chun li" && enemynear,authorname="beterhans"
trigger2= enemynear(1),name="akuma" && enemynear(1),authorname="Phantom.of.the.Server"
value=920
persistent=0

[State 920, posset]
type=posset
trigger1= anim=920
y=-240
persistent=0

[State 920, changetoAir]
type=statetypeset
trigger1= anim=920
type=A
physics=A

[State 920, velset]
type=velset
trigger1= anim=920
y=1.4

[State 920, snd]
type=playsnd
triggerall= anim=920
trigger1= time%10=0
value= 210,1
channel=3

[State 920, Transanim]
type=changeanim
trigger1= anim=920 && pos y>-4
value=921
persistent=0

[State 920, veladd]
type=velset
trigger1= anim=921
y=-6
persistent=0

[State 920, landsnd]
type=playsnd
trigger1= anim=922
value=10,4
channel=2
persistent=0

[State 920, Voice]
type=playsnd
trigger1= Numpartner
trigger1= ((Partner,pos x-pos x) * facing) < 0
trigger1= anim=922 && animelem=6
trigger2= !Numpartner
trigger2= anim=922 && animelem=6
value=5080,0
channel=0
persistent=0

[State 920, end]
type=changestate
trigger1= anim=922 && !animtime
value=0

;==================<Win Pose start>=================
[Statedef 180]
type=S
ctrl=0

[State 190, win quote normal]
type= VictoryQuote
trigger1 = !time
value= Ceil(random%5 + 1)
persistent=0

[State 190, win quote vs normal akuma]
type= VictoryQuote
trigger1 = enemy,name="Akuma" || enemy,name="Gouki" || enemy,name="Shin Gouki"
value= 21
persistent=0

[State 190, win quote teammode with goodghost]
type= VictoryQuote
trigger1 = teammode=simul
trigger1 = (partner,name="Akuma") && (partner,authorname="Phantom.of.the.Server")
value= 22
persistent=0

[State 190, win quote vs goodghost]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = (enemy,name="Akuma") && (enemy,authorname="Phantom.of.the.Server")
value= 23
persistent=0

[State 190, win quote vs herself]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = (enemy,name="Chun Li") && (enemy,authorname="BeterHans")
value= 24 + 1*(random<500)
persistent=0

[State 190, win quote vs other chunli]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = ((enemy,name="Chun Li") || (enemy,name="Chun-Li") || (enemy,name="ChunLi")) && !(enemy,authorname="BeterHans")
value= 25
persistent=0

[State 190, win quote vs Ken]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = enemy,name="Ken Masters" && enemy,authorname="Phantom.of.the.Server&Jmorphman"
value= 26 + Random%2
persistent=0

[State 190, win quote vs Ryu]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = enemy,name="Ryu" && enemy,authorname="Phantom.of.the.Server"
value= 28 + Random%3
persistent=0

[State 190, win quote vs Morrigan / Lilith]
type= VictoryQuote
trigger1 = teammode!=simul
trigger1 = enemy,name="Morrigan Aensland" || enemy,name="Lilith Aensland" || enemy,name="Morrigan" || enemy,name="Lilith"
value= 31
persistent=0

[State 180, Win With Partner low life]
type=changestate
triggerall= NumPartner
trigger1= Partner,Alive && life<=300
value=184

[State 180, Win With Akuma]
type=changestate
triggerall= NumPartner
trigger1= Partner,Alive && life>300
trigger1= Partner,name="Akuma" && Partner,authorname="Phantom.of.the.Server"
trigger2= !(Partner,Alive)
trigger2= Partner,name="Akuma" && Partner,authorname="Phantom.of.the.Server"
value=930+10*(!(Partner,Alive))

[State 180, win vs Yun ,Yang]
type=changestate
triggerall= !(teammode=simul) && !(enemy,teammode=simul) && life>150 && !time
trigger1= (enemy,name="yun" || enemy,name="cvsyun" || enemy,name="lee yun" || enemy,name="yun lee" || enemy,name="sf3yun")
trigger2= (enemy,name="yang" || enemy,name="cvsyang" || enemy,name="lee yang" || enemy,name="yang lee" || enemy,name="sf3yang" ||enemy,name="Yang by intense_mc")
value=185

[State 180, win]
type=changestate
trigger1= !time && life>50
trigger1= command="holdx" || command="holdy" || command="holdz" || command="holda" || command="holdb" || command="holdc"
value=ifelse((command="holdz" || command="holdc"),183,ifelse((command="holdy" || command="holdb"),182,181))

[State 180, low life win]
type=changestate
trigger1= !time && life<=50
value=ifelse(random<100,182,184)

[State 180, win random]
type=changestate
trigger1= !time && life>50 && (command!="holdx" || command!="holdy" || command!="holdz" || command!="holda" || command!="holdb" || command!="holdc")
value=ifelse(life>(lifemax-40),185,181+random%3)

;==================<Win Pose 1>====================
[Statedef 181]
type=S
anim=181

[State 181, snd]
type=playsnd
trigger1= animelem=4
value=5080,ifelse(random<300,1,2)
channel=0
persistent=0

;==================<Win Pose 2>====================
[Statedef 182]
type=S
anim=182

[State 182,snd]
type=playsnd
trigger1= animelem=6
value=210,1
channel=3
persistent=0

;==================<Win Pose 3>====================
[Statedef 183]
type=S
anim=183

[State 183,snd]
type=playsnd
trigger1= animelem=2
value=5090,2
channel=0
persistent=0


;==================<Win Pose 4>=====================
[Statedef 184]
type=S
anim=184

[State 184,snd]
type=playsnd
trigger1= animelem=1
value=5000,1
channel=0
persistent=0

[State 184,snd]
type=playsnd
trigger1= animelem=3
value=10,4
channel=2
persistent=0

;==================<Win Pose 5 VS Yun Yang>=====================
[Statedef 185]
type=S
anim=185

[state 185]
type=playsnd
trigger1= animelem=1
value=10,0
channel=2
persistent=0

[state 185]
type=playsnd
trigger1= animelem=5
value=5080,0
channel=0
persistent=0

;========<Back Pos win with Akuma>==========
[Statedef 186]
type=S
physics=S
movetype=I
velset=0,0
anim=186

[state 930, noautoturn]
type=AssertSpecial
trigger1=1
flag=noautoturn

;==================<Win With Akuma Turn or Not>=================
[Statedef 930]
type=S
physics=S
movetype=I
velset=0,0

[state 930, noautoturn]
type=AssertSpecial
trigger1=1
flag=noautoturn

[state 930, playturn]
type=changeanim
triggerall= NumPartner && Partner,Alive && Anim!=5
trigger1= fvar(26)< -40
value=5

[state 930, turn]
type=turn
trigger1= anim=5 && animelemtime(1)=0

[state 930, posfix]
type=posadd
trigger1= anim=5 && animelemtime(1)=0
x= -35

[state 930, startrun]
type=changestate
triggerall= NumPartner && Partner,Alive
trigger1= fvar(26)>= -40 && time>10
trigger2= anim=5 && !animtime
value=931

;==================<Start run or not>=============
[Statedef 931]
type=S
physics=S
movetype=I
velset=0,0

[state 930, noautoturn]
type=AssertSpecial
trigger1=1
flag=noautoturn

[state 931, playrun]
type=changeanim
triggerall= NumPartner && Partner,Alive
triggerall= fvar(26)>40
trigger1= !time
value=100
persistent=0

[State 931, steps]
type=playsnd
trigger1= anim=100 && (animelem=2 || animelem=5)
value=10,5
channel=2

[state 931 , get speed]
type=velset
triggerall= NumPartner && Partner,Alive && anim=100 && Anim!=102
trigger1= fvar(26)>40
x= const(velocity.run.fwd.x)*const(size.xscale)

[state 931, playslid]
type=changeanim
triggerall= anim=100
trigger1= fvar(26)<=100
value=102
persistent=0

[State 931, sild snd]
type=playsnd
trigger1= anim=102
value=10,6
channel=2
persistent=0

[State 931, dust]
type=explod
trigger1= anim=102
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=40,0
vel=3,0
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 931, Stop]
type=velset
trigger1= anim=102 && !animtime
trigger2= fvar(36)< 60
x=0
persistent=0

[state 931, playend]
type=changestate
triggerall= (Enemynear,pos x - pos x)*facing < 0
trigger1= anim=102 && vel x=0
trigger2= fvar(26)<60 && vel x=0
value=ifelse(ID > Partner,ID,183+(random<500)*3,182)

[state 931, playend]
type=changestate
triggerall= (Enemynear,pos x - pos x)*facing >= 0
trigger1= anim=102 && vel x=0
trigger2= fvar(26)<60 && vel x=0
value=ifelse(ID > Partner,ID,183+(random<500)*2,181+(random<500))

;==================<Win With Akuma Turn and dead>=================
[Statedef 940]
type=S
physics=S
movetype=I
velset=0,0

[state 940, noautoturn]
type=AssertSpecial
trigger1=1
flag=noautoturn

[state 940, playturn]
type=changeanim
triggerall= NumPartner
triggerall= Anim!=5
trigger1= fvar(26)< 0
value=5

[state 930, turn]
type=turn
trigger1= anim=5 && animelemtime(1)=0

[state 930, startrun]
type=changestate
triggerall= NumPartner
trigger1= fvar(26)>= -40 && time>10
trigger2= anim=5 && !animtime
value=941

;==========<Run to Akuma>=====
[Statedef 941]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=-7

[state 941, noautoturn]
type=AssertSpecial
trigger1=1
flag=noautoturn

[State 941, Camera Control]
type=ScreenBound
trigger1= 1
value=0
movecamera= 1,1

[state 941, playrun]
type=changeanim
triggerall= NumPartner
triggerall= fvar(26)>10
trigger1= !time
value=100
persistent=0

[State 941, steps]
type=playsnd
trigger1= anim=100 && (animelem=2 || animelem=5)
value=10,0
channel=2

[state 941 , get speed]
type=velset
triggerall= NumPartner && anim=100 && Anim!=101
trigger1= fvar(26)>10
x= const(velocity.run.fwd.x)*const(size.xscale)

[state 941, playsild]
type=changeanim
triggerall= NumPartner
triggerall= anim=100 && anim!=102 && anim!=941
trigger1= fvar(26)<40
value=101

[state 941, stop]
type=velset
triggerall= NumPartner
triggerall= anim!=100 && anim=101
trigger1= fvar(26)<1
trigger2= anim=101 && !animtime
x=0
persistent=0

[state 941, playanim]
type=changeanim
triggerall= NumPartner && anim!=941
trigger1= (fvar(26)=[-10,10])
trigger2= anim=101 && !animtime
value=941

[state 941, posfix]
type=posset
trigger1= anim=941
x= Partner,pos x
persistent=0

[state 941, posfix]
type=turn
trigger1= anim=941 && animelemtime(1)=0 && fvar(26)<-10
persistent=0


;==================<Times Up>=======================
[Statedef 170]
type=S
anim= ifelse(life>lifemax/2,172,170)

[state 170, 170hitgroundsnd]
type=playsnd
triggerall= anim=170
trigger1= animelem=5
value= 10,2
channel= 2
persistent=1

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5120]
type    = L
movetype= I
physics = N

[State 5120, flap]
type= Changestate
trigger1= !time && roundstate=2 && p2dist x<0
value=5121

[State 5120, 1a] ;Get up anim (normal)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim != [5111,5119]
trigger2 = !SelfAnimExist(5120 + (anim % 10))
value = 5120

[State 5120, 1b] ;Get up anim (for hit up/diag-up)
type = ChangeAnim
triggerall = time = 0
trigger1 = anim = [5111,5119]
trigger1 = SelfAnimExist(5120 + (anim % 10))
value = 5120 + (anim % 10)

[State 5120, 2]
type = VelSet
trigger1 = Time = 0
x = 0

[State 5120, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5120, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5120, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5120, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5120, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1

;---------------------------------------------------------------------------
; HIT_GETUP
[Statedef 5121]
type    = L
movetype= I
physics = N
facep2=1
anim=5121
velset=0, 0


[State 5121, 3]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1

[State 5121, 4]
type = HitFallSet
trigger1 = AnimTime = 0
value = 1

[State 5121, 5] ;Can't be thrown right after getting up
type = NotHitBy
trigger1 = AnimTime = 0
value = , NT,ST,HT
time = 12

[State 5121, 6] ;Can't be hit right after getting up (short time)
type = NotHitBy
trigger1 = AnimTime = 0
value2 = SCA
time = 3

[State 5121, 7]
type = ChangeState
trigger1 = AnimTime = 0
value = 0
ctrl = 1


;====================<Dizzy>==================
[Statedef 5300]
type=S
physics=S
movetype=I
velset=0,0
anim=5300
ctrl=0

[State 5300, change dizzy 2]
type=varset
trigger1 = !time
var(39) = 2

[State 5300, change dizzy var]
type=varset
trigger1 = !time
fvar(38) = fvar(39)

[State 5300, change dizzy var]
type=varset
trigger1 = !time
fvar(39) = 0

[state 5300, pos fix]
type=posset
trigger1=!time
y=0
persistent=0

[state 5300, DetectKeyPress 1]
type=varadd
triggerall= time%2=0
triggerall=command="holdfwd" || command="holdback" || command="holdup" || command="holddown"
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
fvar(38)= -8

[state 5300, DetectKeyPress 2]
type=varadd
triggerall= time%2=0
triggerall=command!="holdfwd" && command!="holdback" && command!="holdup" && command!="holddown"
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
fvar(38)= -4

[state 5300, DetectKeyPress 3]
type=varadd
triggerall= time%2=0
trigger1= command!="a" && command!="b" && command!="c" && command!="x" && command!="y" && command!="z"
fvar(38)= -1

[State 5300, fast anim]
type=changeanim
triggerall= time%2=0
trigger1= command="a" || command="b" || command="c" || command="x" || command="y" || command="z"
value= 5300
elem= ifelse(AnimElemNo(0)=6,1,AnimelemNo(0)+1)

[state 5300, Ducks]
type=helper
trigger1= !NumHelper(6300)
trigger1= time=1
helpertype=normal
name= "Dizzy Ducks"
ID=6300
stateno=6300
postype=p1
pos= 0,0
ownpal=1
persistent=0

[state 5300, end]
type=changestate
trigger1= time>6 && fvar(38)<1
value=0
ctrl=1


;====================<STANDING>====================
[Statedef 0]
type = S
physics = S
movetype = I
sprpriority = 0

[state 0, posfix]
type = posset
trigger1 = !time
y = 0

[State 0, PlayAnim]
type = ChangeAnim
trigger1 = !time
value = 0 + (ID%2 = 1)


[state 0, velset stop]
type = velset
trigger1= !time && prevstateno != [700,701]
x = 0
y = 0

[State 0, Turn]
type = changestate
trigger1 = anim=5
value = 5

[State 0, dead]
type = changestate
trigger1 = !alive
value = 5050

;====================<Walk>====================
[Statedef 20]
type    = S
physics = S
sprpriority = 0

[State 20, 1]
type = VelSet
trigger1 = command = "holdfwd"
x = const(velocity.walk.fwd.x)*const(size.xscale)

[State 20, 2]
type = VelSet
trigger1 = command = "holdback"
x = const(velocity.walk.back.x)*const(size.xscale)

[State 20, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 20, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 20, turn]
type=changestate
trigger1= anim=5
value=5

[State 20, dead]
type=changestate
trigger1= !alive
value=5050

;<Walk AI>=============================
[Statedef 21]
type= S
physics=N
sprpriority= 0
velset=0,0
ctrl= 0
facep2= 1

[State 21, Init Pos fix]
type= posset
trigger1= !time
y = 0
persistent= 0

[State 21, Var14Clear]
type= Varset
trigger1= !time
var(14)= -1
Persistent=0

[State 21, Init get random var less them 400]
type= Varset
trigger1= !time
trigger1= random<400
var(14)=1                 ;1=Random Move, 0=forced forward, -1=forced backward 11 = stop

[State 21, At the Point to move random]
type=Varset
triggerAll = var(14) !=1
triggerall = var(59) != 5300
trigger1 = var(59) = 0
trigger1 = StateType!=A && RoundState=2
trigger1 = (P2Bodydist x=[90,120])
trigger1 = Random < 100
var(14)=1

[State 21, Conditions for force MoveForward at start]
type = Varset
triggerAll = !time
triggerall = var(59) != 5300
trigger1 = BackEdgeBodyDist <= 20
trigger2 = Enemynear,BackEdgeBodyDist <= 20 && !((Enemynear,Prevstateno=[5100,5120]) || (Enemynear,Stateno=[5100,5120]) || P2Statetype=L)
trigger3 = NumTarget
trigger4 = NumPartner
trigger4 = (Partner,name="Akuma" && Partner,var(34) = ID && Partner,life>0)
trigger4 = (Life >= Partner,Life) || Partner,Movetype=H
trigger5 = P2StateType !=A && P2MoveType != H && P2bodydist x > 140
trigger5 = var(55) && var(14) !=1 && (Enemynear,Ctrl || P2StateNo=21)
var(14) = 0

[State 21, Conditions for force MoveBackward at start]
type = Varset
triggerAll = !time
triggerall = var(59) != 5300
trigger1 = BackEdgeBodyDist > 20 && !NumTarget
trigger1 = random < 220 + 400*((Enemynear,Prevstateno=[5100,5120]) || (Enemynear,Stateno=[5100,5120]) || P2Statetype=L)
trigger2 = NumEnemy && Enemynear,vel x > 3 && random<320
trigger3 = NumPartner
trigger3 = (Partner,name="Akuma" && Partner,var(34) = ID && Partner,life>0)
trigger3 = (Life <= Partner,Life)
trigger4 = PrevStateno=105 || (P2Stateno=[5100,5120])
trigger4 = !NumTarget
trigger5 = P2StateType !=A && P2MoveType != H && P2bodydist x < 120
trigger5 = var(55) && var(14) !=1 && (Enemynear,Ctrl || P2StateNo=21)
var(14) = -1

[State 21, INIT Move Var]
type= Varset
trigger1= !time && var(14)=1
var(13)= 0

[State 21, add random Move Var]
type= Varset
trigger1= var(14)=1 && var(13)<1
var(13)= 40+random%41

[State 21, consume Move var]
type= Varadd
trigger1= var(14)=1
trigger1= var(13)>0
var(13)= -1

;---------- Forced moves --------------
[State 21, Conditions for force Move Forward all the time]
type = varset
triggerall = var(14) != 0
trigger1 = (var(59) = [2,5])
trigger1 = P2Bodydist x > 8
trigger2 = var(59) = 1
trigger2 = P2Bodydist x > 110
trigger3 = var(59) = 5300
trigger3 = !(NumTarget(1305) || NumTarget(1405))
trigger3 = P2Bodydist x >= 70 || NumTarget || P2MoveType = H
trigger4 = NumTarget(1305) || NumTarget(1405)
trigger4 = Target,StateType = A && P2Bodydist x > 65
var(14) = 0

[State 21, Conditions for force Move Backward all the time]
type = varset
triggerall = var(14) != -1
trigger1 = (var(59) = [2,5]) || var(59) = 5300
trigger1 = P2Bodydist x < 0
trigger2 = var(59) = 1
trigger2 = P2Bodydist x < 75
trigger3 = var(59) = 5300
trigger3 = !(NumTarget(1305) || NumTarget(1405))
trigger3 = NumTarget = 0 || P2MoveType != H
trigger3 = P2Bodydist x < 50 && ((P2StateType = L || (P2StateNo = 5120 && Enemynear,animtime < -21)) || Enemynear,animtime < -21)
trigger4 = NumTarget(1305) || NumTarget(1405)
trigger4 = Target,StateType = A && P2Bodydist x < 40
var(14) = -1

[State 21, Conditions for force Stay all the time]
type = varset
triggerall = var(14) != 11
trigger1 = (var(59) = [2,5]) || var(59) = 5300
trigger1 = P2Bodydist x = [0,8]
trigger2 = var(59) = 1
trigger2 = P2Bodydist x = [95,100]
trigger2 = Random < ((90) * (AIlevel ** 2 / 64.0))
var(14) = 11


;---------- Apply to animation and vel -----------
[State 21, Move Forward]
type = VelSet
triggerall = vel x <= 0
;triggerall = !time
trigger1= var(14)= 0
trigger2= Var(14)=1 && Var(13)>=30
trigger3= Anim = 21 && var(14) = 0
x = const(velocity.walk.fwd.x)*const(size.xscale)


[State 21, Move Backward]
type = VelSet
triggerall = vel x >= 0
;triggerall = !time
trigger1= var(14)= -1
trigger2= Var(14)=1 && Var(13)<30
trigger3= Anim = 20 && var(14) = -1
x = const(velocity.walk.back.x)*const(size.xscale)

[State 21, Stay]
type = VelSet
triggerall = vel x
trigger1= var(14)= 11
trigger2= (Anim = [10,12])
x = 0


[State 21, 3]
type = ChangeAnim
triggerall = vel x > 0
trigger1 = Anim != 20 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 20

[State 21, 4]
type = ChangeAnim
triggerall = vel x < 0
trigger1 = Anim != 21 && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 21

[State 21, Stay]
type = ChangeAnim
triggerall = vel x = 0
trigger1 = !(Anim = 14 || Anim = 0) && Anim != 5
trigger2 = Anim = 5 && AnimTime = 0
value = 0 + 14 * (P2Bodydist x > 50)

[State 21, Change State Type to C]
type = StateTypeSet
triggerall = StateType != C
trigger1 = Anim = 14
statetype = C

[State 21, Change State Type to S]
type = StateTypeSet
triggerall = StateType != S
trigger1 = Anim != 14
statetype = S

[State 21, Exit to 0 General]
type = ChangeState
triggerall = !(NumTarget(1305) || NumTarget(1405))
trigger1 = P2dist x < 0 || P2Bodydist X <= 0
trigger2 = time && vel x > 0 && FrontEdgeBodyDist <= 4
trigger3 = time && vel x < 0 && BackEdgeBodyDist <= 4
trigger4 = InGuardDist
trigger5 = roundstate != 2
value = 0 + 11*(Anim = 14)
ctrl = 1


[State 21, turn]
type=changestate
trigger1= anim=5
value=5

[State 21, dead]
type=changestate
trigger1= !alive
value=5050

;===================<S.Turn>==================
[Statedef 5]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0
anim=5
ctrl=1
facep2=1

[state 5, nowalk]
type=assertspecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[state 5, posfix]
type=posadd
trigger1=!time
x= -35
persistent=0

[State 5, guard]
type=changestate
trigger1= command="holdback"
trigger1= inguarddist && (prevstateno!=[200,4999])
value=120

[state 5, back]
type=changestate
trigger1=!animtime
value=0
ctrl=1

;====================<CROUCHING>====================
[Statedef 10]
type=C
physics=C
movetype=I
velset=0,0
sprpriority=0

[State 10, anim]
type=changeanim
trigger1= !time && anim=12
value=10
elem=3-animelemno(0)

[State 10, anim]
type=changeanim
trigger1=anim!=10
value=10

[State 10, end]
type=changestate
trigger1=!animtime
value=11

;====================<CROUCH>======================
[Statedef 11]
type=C
physics=C
movetype=I
anim=11
velset=0,0
sprpriority=0
ctrl = 1

[State 11, anim]
type=changeanim
trigger1= anim=6 && !animtime
value=11

;=================<C 2 S>============
[Statedef 12]
type=S
physics=S
movetype=I
velset=0,0
sprpriority=0

[State 12, anim]
type=changeanim
trigger1= !time && anim=10
value=12
elem=3-animelemno(0)

[State 12, Anim]
type = changeanim
triggerall = !(anim = 701 && animtime)
trigger1 = anim = 701 && !animtime
trigger2 = anim != 12
value = 12

[State 12, end]
type=changestate
trigger1= command="holddown" && command!="holdup"
value=10

[State 12, end]
type=changestate
trigger1=!animtime
value=0

;===================<JUMPING For AI>================
[Statedef 39]
type=S
physics=S
anim=40
ctrl=0
sprpriority=1
facep2=1

[State 39, reset var9]
type = varset
trigger1 = !time
trigger1 = var(9) >= 0
var(9) = 0

[State 39, Default x value]
type = varset
trigger1 = !time
sysvar(1) = 1

[State 39, Jump neuture conditions]
type = varset
triggerall = !time
triggerall = prevstateno != 3200 && StateNo != 100
trigger1 = P2StateType = A || P2MoveType = I
trigger2 = P2MoveType = A && Enemynear,HitDefAttr = SCA,NT,ST && (P2Bodydist x = [-2,40])
sysvar(1) = 0

[State 39, Jump Forward conditions]
type = varset
triggerall= !time && prevstateno != 3200
trigger1 = P2MoveType != I
trigger2 = StateNo = 100
trigger3 = P2StateType != A && P2MoveType = A && Enemynear,HitDefAttr = SCA,HT && (P2Bodydist x = [-2,58])
trigger4 = Enemynear,hitfall && P2StateNo < 5120
trigger5 = var(59) = 5300
trigger5 = P2StateType != L && P2Bodydist x >= 50
sysvar(1) = 1

[State 39, Jump back conditions]
type = varset
triggerall = !time && prevstateno != 3200
trigger1 = (enemynear,backedgebodydist < 20) && (p2bodydist x < 41) && p2statetype = L
;trigger1 = var(57):= 11003901; dont jump into trouble
trigger2 = (P2StateType != A && (BackEdgeBodyDist < 20) && (P2BodyDist x < 50) && (EnemyNear,vel x > 2))
;trigger2 = var(57):= 11003902; ready to wall jump
sysvar(1) = -1

[State 39, special conditions]
type = varset
trigger1 = !time && prevstateno=3200
sysvar(1) = 1

[State 39, Low Jump]
type = varset
triggerall = !time && prevstateno!=3200
trigger1 = sysvar(1) = 1
trigger1 = (p2bodydist x=[10,105]) && p2statetype != A && P2StateType != L
;trigger1 = var(57):= 11003903; too close
trigger2 = sysvar(1) = 0 && P2StateType != A && (P2Bodydist x = [-10,110])
;trigger2 = var(57):= 11003904; alway low jump when jump with in the distance.
trigger3 = p2bodydist x > 260 && p2statetype != A && P2StateType != L
;trigger3 = var(57):= 11003907; too far small jump
trigger4 = P2StateType != A && Enemynear,HitDefAttr = SCA,NT,ST && (P2Bodydist x = [-2,40])
;trigger4 = var(57):= 11003908; anti-grab
trigger5 = var(59) = 5300
trigger5 = (P2Bodydist x = [50,90])
var(9) = 2

[State 39, High Jump]
type=varset
triggerall = !time
trigger1 = PrevStateNo = 100
trigger2 = PrevStateNo = 3200 && var(10) = 6
trigger3 = sysvar(1) = 1
trigger3 = P2bodydist x = [150,260]
;trigger3 = var(57):= 11003906; jump in
trigger4 = var(59) = 5300
trigger4 = (P2Bodydist x = [164,228])
var(9) = 3

[State 39, dust]
type=helper
trigger1= !animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 39, vel]
type = velset
trigger1 = !animtime && var(9)!=3
x = ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x)))
y = ifelse(var(9)=2,.75,1)*const(velocity.jump.y)

[State 39, vel]
type = velset
trigger1 = !animtime && var(9)=3
x = ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.36*const(velocity.jump.fwd.x),1.3*const(velocity.jump.back.x)))
y = ifelse(!sysvar(1),1.3,1.2)*const(velocity.jump.y)

[State 39, vel]
type=velset
trigger1= !animtime && prevstateno=100 && sysvar(1)=1
trigger1= var(9):=3
x=const(velocity.runjump.fwd.x)

[State 39, end]
type=changestate
trigger1= !animtime
value=50
ctrl=1

;===================<JUMPING>================
[Statedef 40]
type=S
physics=S
anim=40
ctrl=0
sprpriority=1
facep2=1

[State 40, AI wont use 40]
type = changestate
trigger1 = !time && AIlevel
value = 21
ctrl = 0

[State 40, var]
type=varset
trigger1= !time && !AIlevel
var(9)=ifelse(command="superjump",3,1)

[State 40, var]
type=varset
trigger1= !AIlevel
sysvar(1)=ifelse(!time,0,ifelse(command="holdfwd",1,ifelse(command="holdback",-1,sysvar(1))))

[State 40, var]
type=varset
trigger1= !AIlevel && var(9)!=3 && command!="holdup"
var(9)=2

[State 40, var]
type=varset
trigger1= !time && prevstateno=100
var(9)=3

[State 40, dust]
type=helper
trigger1= !animtime
helpertype=normal
stateno=7100
ID=7100
name="Dust"
postype=p1
ownpal=1

[State 40, vel]
type=velset
trigger1= !animtime && var(9)!=3
x=ifelse(!sysvar(1),const(velocity.jump.neu.x),ifelse(sysvar(1)=1,const(velocity.jump.fwd.x),const(velocity.jump.back.x))) * const(size.xscale)
y=ifelse(var(9)=2,.75,1)*const(velocity.jump.y)*const(size.yscale)

[State 40, vel]
type=velset
trigger1= !animtime && var(9)=3
x=ifelse(sysvar(1)=0,const(velocity.jump.neu.x),ifelse(sysvar(1)=1,1.36*const(velocity.jump.fwd.x),1.3*const(velocity.jump.back.x))) * const(size.xscale)
y=ifelse(!sysvar(1),1.3,1.2)*const(velocity.jump.y) * const(size.yscale)

[State 40, vel]
type=velset
trigger1= !animtime && prevstateno=100 && sysvar(1)=1
trigger1= var(9):=3
x=const(velocity.runjump.fwd.x) * const(size.xscale)

[State 40, end]
type=changestate
trigger1= !animtime
value=50
ctrl=1


;================<Jump air>=================
[Statedef 50]
type=A
physics=A

[State 50, snd]
type=playsnd
trigger1= !time
value=40,ifelse(var(9)=3,1,0)
channel=2

[State 50, anim]
type=changeanim
trigger1= var(9)!=2
value=ifelse(!(vel x), 41, ifelse((vel x)>0, 42, 43))
persistent=0

[State 50, anim]
type=changeanim
trigger1= var(9)=2
value=ifelse(!(vel x), 51, ifelse((vel x)>0, 52, 53))
elem=animelemno(0)
persistent=0

[state 50, hitwall]
type=changestate
triggerall= !AIlevel && statetype=A && pos y<=-30 && time>2
trigger1= BackEdgeBodyDist<=0 && command="holdup" && command="holdfwd"
trigger2= FrontEdgeBodyDist<=0 && command="holdup" && command="holdback"
value=57

[state 50, hitwall AI]
type=changestate
triggerall= AIlevel && statetype=A && pos y <= -80 && time>2
triggerall= var(10)!=6
trigger1= BackEdgeBodyDist<=0 && random<ifelse(p2bodydist x<30,400,100)
trigger2= FrontEdgeBodyDist<=0 && random<ifelse(pos y<-70,600,20)
;trigger3= var(57) = 11003902
value=57


;=================<AirState Landing>==========
[Statedef 52]
type=S
physics=S
ctrl=0
anim=ifelse(vel y>11,48,47)
movehitpersist=1

[state 52, Targetreturn]
type = Selfstate
trigger1 = !time && prevstateno=805
value = 5100


[state 52, return]
type = changestate
trigger1 = !time && prevstateno=4000
value = 4002

[state 52, return]
type = changestate
trigger1 = !time && prevstateno=821
value = 822

[state 52, Landing for TianXinLuanHua]
type=changestate
trigger1= !time && prevstateno=3300
value=3301


[State 52, Landing for SHK 225]
type=changeanim
trigger1= !time && prevstateno=225
value=49
persistent=0



[state 52, landing for backdash 105]
type=changeanim
trigger1= !time && prevstateno=105
value=106
persistent=0



[state 52, landing for 617]
type=changeanim
trigger1= !time && prevstateno=617 && p2dist x>=0
value=618
persistent=0

[state 52, landing for 617 turn]
type=turn
trigger1= !time && anim=47 && prevstateno=617
persistent=0

[state 52, landing for 920]
type=changestate
trigger1= !time && prevstateno=920
value=920
persistent=0



[state 52, landing for 1100]
type=changestate
trigger1= !time && (prevstateno=1100 || prevstateno=3100 || prevstateno=4000 || prevstateno=4001)
value=1103
persistent=0

[State 52, stop]
type=velset
trigger1= !time
x=ifelse(anim=106,-3,0)
y=0
persistent=0

[State 52, pos]
type=posset
trigger1= !time
y=0
persistent=0

;[State 52, anim48]
;type=changeanim
;trigger1= !time && (prevstateno=222 || prevstateno=1250 || (prevstateno=[1301,1310]) || prevstateno=3050)
;value=48

[State 52, dust]
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

[State 52, snd]
type=playsnd
trigger1= !time
value=10,4
channel=2
persistent=0

[State 52, ctrl]
type=ctrlset
trigger1= !time
trigger1= prevstateno!=[1000,4999]
value=1
persistent=0

[State 52, Turn]
type=changestate
trigger1= time<=1 && anim=5
value=5

[State 52, guard]
type=changestate
trigger1= command="holdback" && anim!=106
trigger1= inguarddist && (prevstateno!=[200,4999])
value=120

[State 52, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===============<land on wall>==============
[statedef 57]
type=A
physics=N
ctrl=0
anim=57
movehitpersist=1
velset=0,0

[state 57,Width]
type=Width
trigger1= 1
edge=0, -32

[state 57,turn]
type=turn
trigger1= !time && FrontEdgeBodyDist<=0
persistent=0

[state 57,varset]
type=varset
trigger1=animelemtime(2)=3 && !AIlevel
var(9)= ifelse(command!="holdup",2,1)
persistent=0

[state 57,varset ai]
type=varset
trigger1=animelemtime(2)=3 && AIlevel
var(9)= random<ifelse((p2bodydist x=[-20,30]),1,2)
persistent=0

[state 57,snd]
type=playsnd
trigger1= !animtime && animelem=2
value= 40,0
persistent=0

[state 57, velset]
type=velset
trigger1= !animtime
x= ifelse(var(9)=2,0.6,1)*const(velocity.jump.fwd.x)
y= ifelse(var(9)=2,0.75,1)*const(velocity.jump.y)
persistent=0

[state 57, varfix]
type=varset
trigger1= !animtime
sysvar(1)=1

[State 57, end]
type=changestate
trigger1= !animtime
value=50
ctrl=1



;======================<RUN>===========================
[Statedef 100]
type=S
physics=S
anim=100
ctrl=ifelse(AIlevel,0,1)
sprpriority=1

[State 100,as]
type=AssertSpecial
trigger1= 1
flag=nowalk
flag2=noautoturn

[State 100, vel]
type=velSet
trigger1= anim=100
x=const(velocity.run.fwd.x)*const(size.xscale)

[State 100, steps]
type=playsnd
trigger1= anim=100 && (animelem=2 || animelem=5)
value=10,5
channel=2


[State 100, change Human]
type=changeanim
triggerall = !AILevel
triggerall = time > 4 && anim=100
trigger1= command != "holdfwd"
value=102
persistent=0

[State 100, AI Exit]
type = ChangeAnim
triggerall = AILevel
triggerall = !((var(59) = [3,5]) || var(59) = 5300)
triggerall = time > 4 && anim=100
trigger1 = P2Dist x < 0 || InGuardDist
trigger2 = P2Bodydist x < 8
trigger2 = Random < (400) * (AIlevel ** 2 / 64.0)
trigger2 = var(57) := 2010001; too close
trigger3 = var(59) = 0
trigger3 = Enemynear,P2Bodydist x > 0
trigger3 = (P2Bodydist x = [90,160]) && (P2Dist y = [-70,0])
trigger3 = P2MoveType = I || var(4) < 3
trigger3 = Random < (220 + 300 * (P2MoveType = A || Enemynear,NumProj)) * (AIlevel ** 2 / 64.0)
trigger3 = var(57) := 2010003; Enemy ready dont closing in
trigger4 = var(59) = 1
trigger4 = P2Bodydist x < 152
trigger4 = var(57) := 2010004; Keep distance
value=102
persistent=0

[State 100, AI Exit 5300]
type = ChangeAnim
triggerall = AILevel
triggerall = ((var(59) = [3,5]) || var(59) = 5300)
triggerall = time > 4 && anim=100
trigger1 = P2Dist x < 0 || (InGuardDist && P2Bodydist x > 70)
trigger1 = var(57) := 2010011;
trigger2 = P2Bodydist x <= 0
trigger2 = Random < (400)
trigger2 = var(57) := 2010012;
value=102
persistent=0

[State 100, Give Control to AI]
type = CtrlSet
trigger1 = AILevel
trigger1 = Anim =102 && !Ctrl
value = 1


[State 100, sild snd]
type=playsnd
trigger1= anim=102
value=10,6
channel=2
persistent=0

[State 100, dust]
type=explod
trigger1= anim=102
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=40,0
vel=3,0
ownpal=1
pausemovetime=-1
supermovetime=-1
persistent=0

[State 100, end]
type=changestate
trigger1= anim=102 && !animtime
value=0
ctrl=1


;========================<FORWARD DASH>==========================
[Statedef 101]
type=S
movetype=I
physics=S
velset=0,0
anim=101
ctrl=0
sprpriority=1

[State 101, vel]
type=velset
trigger1= animelem=2
x=1.7*const(velocity.run.fwd.x)*const(size.xscale)

[State 101, snd]
type=playsnd
trigger1= animelem=2
value=10,3
channel=2


[State 101, dust]
type=explod
trigger1= animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
vel=1,0
ownpal=1
pausemovetime=-1
supermovetime=-1

[state 101, ctrl]
type=ctrlset
trigger1= animelemtime(4)=2
value=1

[State 101, Run MAN]
type = ChangeState
triggerall = !AILevel
triggerall = animelemtime(2)=4
triggerall = PrevStateNo != [500,501]
trigger1 = command="holdfwd"
value=100

[State 101, RUN AI]
type = changestate
triggerall = AILevel
triggerall = animelemtime(2)=4
triggerall = roundstate=2
trigger1 = Enemynear,P2Dist x > 0
trigger1 = P2bodydist x >= 90 && P2MoveType != A
trigger2 = Enemynear,P2Dist x < 0
trigger2 = P2bodydist x >= 30
trigger3 = (p2stateno=[120,159]) && p2bodydist x > 34
trigger4 = var(59) = [2,5]
trigger5 = P2MoveType = H || NumTarget
trigger5 = p2bodydist x > 34 || (Enemynear,vel x < -1 && Enemynear,BackEdgeBodydist > 4)
value=100

[State 101, EX-Cancel Flash]
type = PalFX
triggerall= (var(18) & 4) && PrevstateNo=500
triggerall = time %2=0
trigger1 = time < 15
time = 1
add = 160,120,20
ignorehitpause = 1

[State 101, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1

;================<Back Dash>=================
[Statedef 105]
type=A
movetype=I
physics=A
anim=105
velset=0,0
ctrl=0
sprpriority=1

[State 105, PosFix]
type= posadd
trigger1= (PrevStateNo=[500,501])
trigger1= !time
x= ifelse(P2Dist y < -60,50,ifelse((p2bodydist x=[0,50]),p2bodydist x+10,50))

[state 105, hitby]
type= hitby
trigger1= !time
value=SCA,AP
time=15
persistent=0

[State 105, vel]
type=velset
trigger1= !time
x= 2.6*const(velocity.run.back.x)*const(size.xscale)
y= const(velocity.jump.y) * const(size.yscale) / 2.2
persistent=0

[State 105, veladd]
type=veladd
trigger1= (time=[5,14]) && vel y>0
y=-0.4

[State 105, snd]
type=playsnd
trigger1= animelem=2
value=10, 3
channel=2

[State 105, dust]
type=explod
trigger1= animelem=2
anim=7103
ID=7103
sprpriority=3
postype=p1
pos=-17,0
vel=-1,0
ownpal=1
pausemovetime=-1
supermovetime=-1

[State 102, Cancel into focus Flash]
type = PalFX
triggerall= (var(18) & 4) && PrevstateNo=500
triggerall = time %2=0
trigger1 = time < 15
time = 1
add = 160,120,20
ignorehitpause = 1

[state 105, out go 52]
type=changestate
trigger1= pos y>=0 && time>=10
value=52

;==========<GUARD>==========
; GUARD (start)
[Statedef 120]
type = U ;Leave state type unchanged
physics = U ;Leave physics unchanged
ctrl= IfElse(AIlevel,0,1)

[State 120, ChangeAnim]
type = ChangeAnim
trigger1 = (!Time) && (StateType != A)
value = 120 + (StateType = C) + (StateType = A)*2

[State 120, StateTypeSet]
type = StateTypeSet
trigger1 = (!Time) && (StateType = S)
physics = S

[State 120, StateTypeSet]
type = StateTypeSet
trigger1 = (!Time) && (StateType = C)
physics = C

[State 120, StateTypeSet]
type = StateTypeSet
trigger1 = (!Time) && (StateType = A)
physics = A

[State 120, ChangeState]
type = ChangeState
trigger1 = (!AnimTime)
value = 130 + (StateType = C) + (StateType = A)*2

[State 120, StopGuarding Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback") || (!InGuardDist)
value = 140

[State 120, StopGuarding AI]
type = ChangeState
triggerall= AIlevel && numenemy && roundstate=2
trigger1 = (enemynear,hitdefattr=SCA,AT) || (!InGuardDist)
value = 140

;---------------------------------------------------------------------------
; STAND GUARD (guarding)
[Statedef 130]
type = S
physics = S
ctrl= IfElse(AIlevel,0,1)

[State 130, PosSet]
type= PosSet
trigger1 = (!Time)
y = 0

[State 130, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != 130)
value = 130

[State 130,VelSet]
type= VelSet
trigger1 = (!Time)
y = 0

[State 130, Hi To Low Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command = "holddown")
value = 131

[State 130, Hi To Low AI]
type = ChangeState
triggerall= AIlevel && numenemy && roundstate=2
triggerall= !((enemynear,hitdefattr=S,NA) && enemynear,time>12)
trigger1 = p2movetype=A && p2statetype!=A
value = 131

[State 130, StopGuarding Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback") || (!InGuardDist)
value = 140

[State 130, StopGuarding AI]
type = ChangeState
triggerall= AIlevel && numenemy; && roundstate=2
trigger1 = (enemynear,hitdefattr=SCA,AT) || (!InGuardDist)
trigger2 = Enemynear,time > 400 && Random < 100
value = 140

;---------------------------------------------------------------------------
; CROUCH GUARD (guarding)
[Statedef 131]
type = C
physics = C
ctrl= IfElse(AIlevel,0,1)

[State 131, PosSet]
type= PosSet
trigger1 = (!Time)
y = 0

[State 131, ChangeAnim]
type = ChangeAnim
trigger1 = (Anim != 131)
value = 131

[State 131, VelSet]
type= VelSet
trigger1 = (!Time)
y = 0

[State 131, Low To Hi Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holddown")
value = 130

[State 131, Low To HI AI]
type = ChangeState
triggerall= AIlevel && numenemy && roundstate=2
triggerall = ifelse((enemynear,name="chun li" && enemynear,authorname="beterhans" && enemynear,stateno=4000),0,1)
trigger1 = p2movetype=A && p2statetype=A
trigger2= ((enemynear,hitdefattr=S,NA) && enemynear,time>12)
value = 130

[State 131, StopGuarding Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback") || (!InGuardDist)
value = 140

[State 131, StopGuarding AI]
type = ChangeState
triggerall= AIlevel && numenemy; && roundstate=2
trigger1 = (enemynear,hitdefattr=SCA,AT) || (!InGuardDist)
trigger2 = Enemynear,time > 400 && Random < 100
value = 140

;---------------------------------------------------------------------------
; Air guarding
[Statedef 132]
type    = A
physics = N
ctrl= IfElse(AIlevel,0,1)

[State 132, 1]
type = ChangeAnim
trigger1 = Anim != 132
value = 132

[State 132, 2]
type = VelAdd
trigger1 = 1
y = Const(movement.yaccel)

[State 132, 3]
type = VarSet
trigger1 = 1
sysvar(0) = (pos y >= 0) && (vel y > 0)

[State 132, 4]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 132, 5]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 132, 6]
type = ChangeState
trigger1 = sysvar(0)
value = 52

[State 132, StopGuarding Human]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback") || (!InGuardDist)
value = 140

[State 132, StopGuarding AI]
type = ChangeState
triggerall= AIlevel && numenemy ;&& roundstate=2
trigger1 = (enemynear,hitdefattr=SCA,AT) || (!InGuardDist)
value = 140

;---------------------------------------------------------------------------
; End guarding
[Statedef 140]
type = U    ;Leave state type unchanged
physics = U ;Leave physics unchanged

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2StateType = A
value = 140 + (statetype = C) + (statetype = A)*2

[State 140, 1]
type = ChangeAnim
trigger1 = Time = 0
trigger1 = P2StateType != A
value = 143 - (statetype = S)*3 - (statetype = C)*2 - (statetype = A)

[State 140, 2]
type = StateTypeSet
trigger1 = Time = 0 && statetype = S
physics = S

[State 140, 3]
type = StateTypeSet
trigger1 = Time = 0 && statetype = C
physics = C

[State 140, 4]
type = StateTypeSet
trigger1 = Time = 0 && statetype = A
physics = A

[State 140, 5] ;Implemented within engine
type = ChangeState
trigger1 = AnimTime = 0
value = (statetype = C)*11 + (statetype = A)*51
ctrl=1

;---------------------------------------------------------------------------
;---------------------------------------------------------------------------
; SGUARDHIT (shaking)
[Statedef 150]
type = S
movetype = H
physics = N
velset = 0,0

[State 150, Safe]
type = posset
trigger1 = !time
trigger1 = pos y != 0
y = 0

[State 150, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = (IfElse((EnemyNear, Pos Y < 0),160,150))
persistent = (IfElse((EnemyNear, Pos Y < 0),0,1))

[State 150, Change to Knockback if holdback]
type = ChangeState
triggerall= !AIlevel
trigger1 = (HitShakeOver) && (Command = "holdback")
value = 151 + 2*(Command = "holddown")

[State 150, Change to Knockback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = (HitShakeOver)
value = 151 + 2*(p2movetype=A && p2statetype!=A)

[State 150, Change to Knockback2 if not holdback]
type = ChangeState
triggerall= !AIlevel
trigger1 = (HitShakeOver) && (Command != "holdback")
value = 10161 + 2*(Command = "holddown")

[State 150, Change to Knockback2 if not holdback]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback")
value = 10160

[State 150, Change to Knockback2 if not holdback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = (HitShakeOver) && random<time*(ifelse(life<300,90,30))
value = 10161 + 2*(statetype=C)

[State 150, Change to Knockback2 if not holdback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = random<10
value = 10160

[State 150, StateTypeSet]
type = StateTypeSet
trigger1 = AIlevel && (p2movetype=A && p2statetype!=A)
trigger2 = !AIlevel && (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 150, StateTypeSet]
type = StateTypeSet
trigger1 = ifelse((enemynear,name="chun li" && enemynear,authorname="beterhans" && enemynear,stateno=4000),0,1)
trigger1 = AIlevel && (p2movetype=A && p2statetype=A)
trigger2 = !AIlevel && (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 150, ForceFeedBack]
type = ForceFeedback
trigger1 = (!Time)
waveform = Square
time = 3

;---------------------------------------------------------------------------
; SGUARDHIT2 (knocked back)
[Statedef 151]
type = S
movetype = H
physics = S

[State 151, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 151, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 151, sparry_AI]
type=hitoverride
triggerall= AIlevel && random < time*3
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 151, cparry_AI]
type=hitoverride
triggerall= AIlevel && random < time*3
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 151, ChangeAnim]
type= ChangeAnim
trigger1 = (!Time) && (Anim != 160)
value= 150

[State 151, HitVelSet]
type = HitVelSet
trigger1 = (!Time)
x = 1

[State 151, VelSet]
type = VelSet
trigger1 = (Time = GetHitVar(SlideTime)) || (Time >= GetHitVar(HitTime))
x = 0

[State 151, CtrlSet]
type = CtrlSet
trigger1 = !AIlevel && (Time = GetHitVar(CtrlTime))
value = 1

[State 151, StateTypeSet]
type = StateTypeSet
trigger1 = AIlevel && (p2movetype=A && p2statetype!=A)
trigger2 = !AIlevel && (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 151, StateTypeSet]
type = StateTypeSet
trigger1 = ifelse((enemynear,name="chun li" && enemynear,authorname="beterhans" && enemynear,stateno=4000),0,1)
trigger1 = AIlevel && (p2movetype=A && p2statetype=A)
trigger2 = !AIlevel && (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 151, ChangeState]
type = ChangeState
trigger1 = Time >= GetHitVar(hittime)
value = 130
ctrl = 1

;---------------------------------------------------------------------------
; CGUARDHIT (shaking)
[Statedef 152]
type = C
movetype = H
physics = N
velset = 0,0

[State 152, Safe]
type = posset
trigger1 = !time
trigger1 = pos y != 0
y = 0

[State 152, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 152, Change to Knockback if holdback]
type = ChangeState
triggerall= !AIlevel
trigger1 = (HitShakeOver) && (Command = "holdback")
value = 151 + 2*(Command = "holddown")

[State 152, Change to Knockback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = (HitShakeOver)
value = 151 + 2*(p2movetype=A && p2statetype!=A)

[State 152, ChangeState]
type = ChangeState
triggerall= !AIlevel
trigger1 = (HitShakeOver) && (Command != "holdback")
value = 10161 + 2*(Command = "holddown")

[State 152, ChangeState]
type = ChangeState
triggerall= !AIlevel
trigger1 = (Command != "holdback")
value = 10162

[State 152, Change to Knockback2 if not holdback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = (HitShakeOver) && random<time*(ifelse(life<300,90,30))
value = 10161 + 2*(statetype=C)

[State 152, Change to Knockback2 if not holdback AI]
type = ChangeState
triggerall= AIlevel
trigger1 = random<10
value = 10162

[State 152, StateTypeSet]
type = StateTypeSet
trigger1 = AIlevel && (p2movetype=A && p2statetype!=A)
trigger2 = !AIlevel && (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 152, StateTypeSet]
type = StateTypeSet
trigger1 = ifelse((enemynear,name="chun li" && enemynear,authorname="beterhans" && enemynear,stateno=4000),0,1)
trigger1 = AIlevel && (p2movetype=A && p2statetype=A)
trigger2 = !AIlevel && (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 152, ForceFeedBack]
type = ForceFeedback
trigger1 = (!Time)
waveform = Square
time = 4

;---------------------------------------------------------------------------
; CGUARDHIT2 (knocked back)
[Statedef 153]
type = C
movetype = H
physics = C
anim= 151

[State 153, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 153, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 153, sparry_AI]
type=hitoverride
triggerall= AIlevel && random < time*3
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 153, cparry_AI]
type=hitoverride
triggerall= AIlevel && random < time*3
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 153, HitVelSet]
type = HitVelSet
trigger1 = (!Time)
x = 1

[State 153, VelSet]
type = VelSet
trigger1 = (Time = GetHitVar(SlideTime)) || (Time >= GetHitVar(HitTime))
x = 0

[State 153, CtrlSet]
type = CtrlSet
trigger1 = !AIlevel && (Time = GetHitVar(CtrlTime))
value = 1

[State 153, StateTypeSet]
type = StateTypeSet
trigger1 = AIlevel && (p2movetype=A && p2statetype!=A)
trigger2 = !AIlevel && (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 153, StateTypeSet]
type = StateTypeSet
trigger1 = ifelse((enemynear,name="chun li" && enemynear,authorname="beterhans" && enemynear,stateno=4000),0,1)
trigger1 = AIlevel && (p2movetype=A && p2statetype=A)
trigger2 = !AIlevel && (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 153, ChangeState]
type = ChangeState
trigger1 = (Time >= GetHitVar(HitTime))
value = 131
ctrl = 1

;Stand GuardHit (Shaking)
[Statedef 10160]
type = S
movetype = H
physics = N
velset = 0,0

[State 10160, NotHitBy]
type= NotHitBy
trigger1 = (!Time)
value= SCA
time= 1

[State 10160, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10160, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 10160, sparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10160, cparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7


[State 10160, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = (IfElse((EnemyNear, Pos Y < 0),160,150))
persistent = (IfElse((EnemyNear, Pos Y < 0),0,1))

[State 10160, ChangeState]
type = ChangeState
trigger1 = (HitShakeOver) && (Command = "holdback")
value = 151 + 2*(Command = "holddown")

[State 10160, ChangeState]
type = ChangeState
trigger1 = (HitShakeOver) && (Command != "holdback")
value = 10161 + 2*(Command = "holddown")

[State 10160, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 10160, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 10160, ForceFeedBack]
type = ForceFeedback
trigger1 = (!Time)
waveform = Square
time = 3

;---------------------------------------------------------------------------
;Stand GuardHit (Knocked Back)
[Statedef 10161]
type = S
movetype = H
physics = S

[State 10161, NotHitBy]
type= NotHitBy
trigger1 = (!Time)
value= SCA
time= 1

[State 10161, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10161, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 10161, sparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10161, cparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 10161, ChangeAnim]
type= ChangeAnim
triggerall = prevstateno != 151 || prevstateno != 153
trigger1 = (!Time) && (Anim != 160)
value= 150

[State 10161, HitVelSet]
type = HitVelSet
triggerall = prevstateno != 151 || prevstateno != 153
trigger1 = (!Time)
x = 1

[State 10161, VelSet]
type = VelSet
triggerall = prevstateno != 151 || prevstateno != 153
trigger1 = (Time = GetHitVar(SlideTime)) || (Time >= GetHitVar(HitTime))
x = 0

[State 10161, CtrlSet]
type = CtrlSet
trigger1 = (Time = GetHitVar(CtrlTime))
value = 1

[State 10161, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 10161, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 10161, ChangeState]
type = ChangeState
trigger1 = Time >= GetHitVar(hittime)
value = 130
ctrl = 1

;---------------------------------------------------------------------------
;Crouch GuardHit (Shaking)
[Statedef 10162]
type = C
movetype = H
physics = N
velset = 0,0

[State 10162, NotHitBy]
type= NotHitBy
trigger1 = (!Time)
value= SCA
time= 1

[State 10162, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10162, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 10162, sparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10162, cparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7

[State 10162, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 151

[State 10162, ChangeState]
type = ChangeState
trigger1 = (HitShakeOver) && (Command = "holdback")
value = 151 + 2*(Command = "holddown")

[State 10162, ChangeState]
type = ChangeState
trigger1 = (HitShakeOver) && (Command != "holdback")
value = 10161 + 2*(Command = "holddown")

[State 10162, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 10162, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 10162, ForceFeedBack]
type = ForceFeedback
trigger1 = (!Time)
waveform = Square
time = 4

;---------------------------------------------------------------------------
;Crouch GuardHit2 (Knocked Back)
[Statedef 10163]
type = C
movetype = H
physics = C
anim = 151

[State 10163, NotHitBy]
type = NotHitBy
trigger1 = (!Time)
value= SCA
time = 1

[State 10163, sparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=6

[State 10163, cparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="down" && command!="fwd" && command!="back" && command!="up"
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=6

[State 10163, sparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=4
attr=SA,AA,AP
stateno=700
slot=0
time=7

[State 10163, cparry_AI]
type=hitoverride
triggerall= AIlevel
trigger1= var(21):=5
attr=C,AA,AP
stateno=701
slot=1
time=7


[State 10163, HitVelSet]
type = HitVelSet
trigger1 = (!Time)
x = 1

[State 10163, VelSet]
type = VelSet
trigger1 = (Time = GetHitVar(SlideTime)) || (Time >= GetHitVar(HitTime))
x = 0

[State 10163, CtrlSet]
type = CtrlSet
trigger1 = (Time = GetHitVar(CtrlTime))
value = 1

[State 10163, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = S) && (Command = "holddown")
statetype = C
physics = C

[State 10163, StateTypeSet]
type = StateTypeSet
trigger1 = (StateType = C) && (Command != "holddown")
statetype = S
physics = S

[State 10163, ChangeState]
type = ChangeState
trigger1 = (Time >= GetHitVar(HitTime))
value = 131
ctrl = 1

;---------------------------------------------------------------------------
;Air Guard Hit
[Statedef 10164]
type = A
movetype = H
physics = N
velset = 0,0

[State 10164, NotHitBy]
type = NotHitBy
trigger1 = (!Time)
value	= SCA
time = 1


[State 10164s, aparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=6
attr=SCA,AA,AP
stateno=702
slot=2
time=6

[State 10164, ChangeAnim]
type = ChangeAnim
trigger1 = 1
value = 152

[State 10164, ChangeState]
type 	= ChangeState
trigger1 = (HitShakeOver)
value = (IfElse((Command = "holdback"),155,165))

[State 10164ForceFeedBack]
type = ForceFeedback
trigger1 = (!Time)
waveform = Square
time = 4

;---------------------------------------------------------------------------
;Air Guard Hit
[Statedef 10165]
type = A
movetype = H
physics = N
anim	= 152

[State 10165, NotHitBy]
type = NotHitBy
trigger1 = (!Time)
value	= SCA
time = 1

[State 10165, aparry_Human]
type=hitoverride
triggerall= !AIlevel
triggerall= command="fwd" && command!="back" && command!="up" && command!="down"
trigger1= var(21):=6
attr=SCA,AA,AP
stateno=702
slot=2
time=6

[State 10165, HitVelSet]
type = HitVelSet
trigger1 = (!Time)
x = 1
y = 1

[State 10165, VelAdd]
type = VelAdd
trigger1 = 1
y = Const(Movement.yaccel)

[State 10165, CtrlSet]
type = CtrlSet
trigger1 = (Time = GetHitVar(CtrlTime))
value = 1

[State 10165, VarSet]
type = VarSet
trigger1 = 1
sysvar(0) = (Pos Y >= 0) && (Vel Y > 0)

[State 10165, VelSet]
type = VelSet
trigger1 = sysvar(0)
y = 0

[State 10165 ,PosSet]
type = PosSet
trigger1 = sysvar(0)
y = 0

[State 10165, ChangeState]
type = ChangeState
trigger1 = sysvar(0)
trigger1 = (Command != "holdback") && (InGuardDist)
value = 52

[State 10165, ChangeState]
type = ChangeState
trigger1 = sysvar(0)
value = 130

;==========<DODGE>==========
[Statedef 710]
type=S
physics=S
movetype=I
anim=710
velset=0,0
ctrl=0
sprpriority=-1
facep2=1

[State 710, snd]
type=playsnd
trigger1= !time && random<700
value=5020,ifelse(random<200,1,0)
channel=0

[State 710, push]
type=playerpush
trigger1= 1
value=0

[State 710, hb]
type=hitby
trigger1= animelemtime(1)>=0 && animelemtime(6)<2
value=SCA,AT
time=1

[State 710, attack]
type=changestate
trigger1= !AIlevel && (time=[14,37])
trigger1= command="x" || command="y" || command="z" || command="a" || command="b" || command="c"
value=ifelse((command="x" || command="y" || command="z"),221,219)

[State 710, attack]
type=changestate
trigger1= AIlevel && (!inguarddist||!(enemynear,hitdefattr=SCA,AA,AP)) && (time=[14,37]) && (p2bodydist x=[-20,60])
trigger1= !(enemynear,hitdefattr=SCA,AA,AP,AT) && p2dist y=[-80,20]
value=ifelse(p2statetype=C,221,ifelse(random<680,221,219))

[State 710, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;===========<leap Punch>==========
[Statedef 720]
type=A
movetype=A
physics=A
juggle=ifelse(numtarget,15,8)
anim=720
poweradd=8
sprpriority=1
ctrl=0

[state 720, velset]
type=velset
trigger1= !time
x=2
y=0.65*const(velocity.jump.y)

[state 720,hitby]
type=hitby
trigger1= !time
value= SA, AA,AP
time=20
ignorehitpause=1

[State 720, snd]
type=playsnd
trigger1= animelem=3
value=200,2
channel=3
persistent=0

[State 720, hit]
type=hitdef
triggerall= !movecontact && !movereversed
trigger1= animelem=3 || animelem=4 || animelem=5
attr=A,NA
damage=40,0
animtype=medium
guardflag=HA
hitflag=MAF
priority=4,Hit
pausetime= ifelse(var(20),5,10), ifelse(var(20),5,10)
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy=-10,-31
hitsound=s300,1
guardsound=s400,0
ground.type=High
ground.hittime=18
ground.slidetime=18
ground.velocity= ifelse(var(20), -2.66, -4.49), 0
ground.cornerpush.veloff= ifelse(var(20), -4.33, -8.17)
guard.velocity= ifelse(var(20), -4.30, -7.51)
guard.cornerpush.veloff= ifelse(var(20), -5.78, -10.47)
air.type=Low
air.hittime=12
air.velocity=0,-2.5
air.cornerpush.veloff=0
getpower= ifelse(p2movetype=H,72,144)*!var(20), 36*!var(20)
givepower=36,36
yaccel=.5
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
airguard.cornerpush.veloff= 0
fall.recover=0

[State 720, sts]
type=statetypeset
trigger1= animelemtime(6)>=0
movetype=I
persistent=0

;==========<ALPHA COUNTER>==========
[Statedef 750]
type=U
physics=U
movetype=I
ctrl=0
velset=0,0
poweradd=-1000
sprpriority=2
facep2=1

[State 750, strengthvar]
type=varset
trigger1= !time && !AIlevel
var(10)=ifelse((command="Counter_P"),1,2)
ignorehitpause=1
persistent=0

[State 750, strengthvarAI]
type=varset
trigger1= !time && AIlevel
var(10)=ifelse((p2statetype=A),2,ifelse((p2statetype=C),1,ifelse(random<700,1,2)))
ignorehitpause=1
persistent=0

[State 750, superchargehelper]
type=helper
trigger1= !time
helpertype=normal
stateno=7250
ID=7250
postype=p1
pos=ifelse(anim=751,19,26),ifelse(anim=751,-46,-87)
ownpal=1
persistent=0
supermovetime=65535
persistent=0

[State 750, superpause]
type=superpause
trigger1= !time
time=20
movetime=20
anim=-1
sound=s700,5
p2defmul=1
darken=0
persistent=0

[State 750, end]
type=changestate
trigger1= time>=20
value=ifelse(var(10)=1,221,227)
persistent=0


;==========<POWER CHARGE>==========
[Statedef 760]
type=C
physics=C
anim=760
velset=0,0
ctrl=0

[State 760, power]
type=poweradd
triggerall= anim=760 && power<powermax
trigger1= !AIlevel && command="holdstart"
trigger2= AIlevel
value= 2 + ifelse(time < 60, 0, (time -60) / 10)

[state 760, edge]
type=width
trigger1= animelemtime(4)=1
edge=0,35

[state 760, ctrlset]
type=ctrlset
trigger1= anim=760
value=0

[State 760, snd]
type=playsnd
trigger1= anim=760 && time=8
value=5020,2
channel=0

[State 760, shake]
type=envshake
trigger1= anim=760 && !(time%4)
time=4
freq=120
ampl=2

[State 760, flash]
type=palfx
trigger1= 1
time=1
add= 75+ceil(sin(time/6.0*pi)*75), 25+ceil(sin(time/6.0*pi)*25), 0

[State 760, fx ground]
type=helper
trigger1= anim=760 && animelemtime(2)>=0
trigger1= !numhelper(7240)
helpertype=normal
stateno=7240
ID=7240
name="Power Charge"
postype=p1
pausemovetime=65535
supermovetime=65535
ownpal=1

[State 760, fx nodes]
type=helper
trigger1= anim=760 && animelemtime(2)>=0
trigger1= !numhelper(7243)
helpertype=normal
stateno=7243
ID=7243
name="Particles"
postype=p1
pausemovetime=65535
supermovetime=65535
ownpal=1

[State 760, leave]
type=changeanim
triggerall= anim=760 && anim!=761
trigger1= power>=const(data.power) || power>=powermax || roundstate!=2
trigger2= !AIlevel && command!="holdstart"
trigger3= AIlevel
trigger3= inguarddist || (p2bodydist x<100 && (enemynear,vel x>5 || p2movetype=A)) || ((p2dist x=[-120,130]) && p2movetype!=H) || p2stateno=5300 || Enemynear,anim=5300
trigger4= AIlevel && NumPartner
trigger4= Partner,Alive && Partner,movetype=H && !(Partner,stateno=[120,155]) && !(Partner,stateno=[700,702]) && Partner,time>18
trigger4= random<120
value=761

[State 760, ctrl]
type=ctrlset
trigger1=anim=761
value=1
persistent=0

[state 760, nowalk]
type=assertspecial
trigger1= anim=761
flag= nowalk

[State 760, stopsnd]
type=stopsnd
trigger1= anim=761
channel=0
persistent=0

[State 760, end]
type=changestate
trigger1= anim=761 && !animtime
value=0
ctrl=1

;===================<ORIGINAL COMBO>===================
[Statedef 770]
type=U
physics=U
movetype=A
anim=770+(statetype=A)
ctrl=(statetype=A)
velset=ifelse((statetype=S),0,vel x),ifelse((statetype=S),0,vel y)
poweradd = -1500

[State 770, snd]
type=playsnd
trigger1= !time
value=5090,8
channel=0

[State 770, superchargehelper]
type = helper
trigger1 = !time
helpertype = normal
stateno = 7260
ID = 7260
postype = p1
pos = 0-(anim=771)*8, -86-(anim=771)*7
ownpal = 1
persistent = 0
supermovetime = 9999

[State 700, superchargepause]
type = SuperPause
trigger1 = !time
time = 40
movetime = 40 * (anim=770)
anim = -1
sound = s3000,5
darken = 0
unhittable = 0
persistent = 0

[State 700, var]
type=varset
trigger1= anim=770 && time=30
trigger2= anim=771 && time=0
var(20) = 240

[State 700, nhb]
type = nothitby
trigger1 = anim=770
trigger2 = anim=771 && time<=1
trigger3 = animelemtime(14) = 0
time = 1 + 5 * (animelemtime(14) = 0)
value=SCA

[State 700, image]
type = afterimage
triggerall = !(var(18) & 2)
trigger1 = anim = 770
trigger1 = AnimElemtime(6) = 0
trigger1 = var(18):= var(18) + 2
trigger2 = anim = 771
trigger2 = time = 1
trigger2 = var(18):= var(18) + 2
time = 2
timegap = 1
framegap = 12
length= 16
paladd = 0,0,0
palmul =.75,.75,.75
palcontrast = 64,128,192
palpostbright = 0,0,0
trans=add1
ignorehitpause = 1

[State 770, end]
type = changeanim
trigger1 = anim=771 && !animtime
value = 41+(vel x>0)+(vel x<0)*2
elem = 12+(!vel x)*3
persistent=0

[State 770, sts]
type = statetypeset
trigger1 = anim = [41,43]
statetype = A
physics = A

[State 770, end]
type = changestate
trigger1 = anim=770 && !animtime
value = 0
ctrl = 1

[State 770, OC Release]
type = ctrlset
triggerall= var(20)
trigger1= animelemtime(14) >= 0
value=1
persistent=0
ignorehitpause=1

[State 770, OC NoWork]
type=AssertSpecial
triggerall= var(20)
trigger1= ctrl
flag= nowalk
ignorehitpause=1

;==========<CHEAP K.O.>==========
[Statedef 5130]
type=S
movetype=H
physics=S
anim=5130

[state 5130]
type = playsnd
trigger1 = time = 0 && !alive && prevstateno!=[0,99]
value = 5010,2
channel = 0
persistent = 0
ignorehitpause = 1

[State 5130, nhb]
type=nothitby
trigger1= !alive
value=SCA

[State 5130, pos]
type=posset
trigger1= 1
y=0

[State 5130, end]
type=changestate
trigger1= !animtime
value=5131

;=================<Cheap KO LieDown>===============
[Statedef 5131]
type=L
movetype=H
physics=C
anim=5131
[State 5131, nhb]
type=nothitby
trigger1= !alive
value=SCA

[State 5131, pos]
type=posset
trigger1= 1
y=0

[State 5131, posfix]
type=posadd
trigger1= animelem=2
x=12

[State 5131, snd]
type=playsnd
trigger1= !time
trigger2= animelem=3
value=10, 3
channel=2

[State 5131, dust]
type=explod
trigger1= !time
anim=7104
ID=7104
sprpriority=-4
postype=p1
pos=-7,0
scale=.5,.5
ownpal=1
pausemovetime=-1
supermovetime=-1

[State 5131, dust]
type=explod
trigger1= animelem=3
anim=7102
ID=7102
sprpriority=-5
postype=p1
scale=.75,.75
ownpal=1
pausemovetime=-1
supermovetime=-1

[State 5131, end]
type=changestate
trigger1= !animtime
value=ifelse(alive,5110,5150)

;===== Dead ================
[Statedef 5150]
type    = L
movetype= H
physics = N
sprpriority = -3
ctrl = 0

[State 5150, Screen]
type = ScreenBound
trigger1 = 1
value = 0

[State 5150, 1] ;Normal anim
type = ChangeAnim
triggerall = Time = 0
triggerall = SelfAnimExist(5140)
trigger1 = (anim != [5111,5119]) && (anim != [5171,5179])
trigger2 = !SelfAnimExist(5140 + (anim % 10))
value = 5140

[State 5150, 3] ;Hit up type anim
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (anim = [5111,5119]) || (anim = [5171,5179])
trigger1 = SelfAnimExist(5140 + (anim % 10))
value = 5140 + (anim % 10)

[State 5150, 4] ;Match over anim
type = ChangeAnim
persistent = 0
;trigger1 = Time = 0
trigger1 = MatchOver = 1
trigger1 = Anim = [5140,5149]
trigger1 = SelfAnimExist(anim+10)
value = anim+10

[State 5150, 5] ;Switch to 5110 if liedead anim does not exist
type = ChangeAnim
trigger1 = Time = 0
trigger1 = Anim != [5140,5159]
trigger1 = Anim != [5110,5119]
value = 5110

[State 5150, 6] ;Friction
type = VelMul
trigger1 = 1
x = 0.85

[State 5150, 7] ;Friction
type = VelSet
trigger1 = abs(Vel x) < Const(movement.down.friction.threshold)
persistent = 0
x = 0

[State 5150, 8]
type = NotHitBy
trigger1 = 1
value = SCA
time = 1


;==========<TAUNT 1>==========
[Statedef 195]
type=S
movetype=I
physics=S
juggle=0
velset=0,0
sprpriority=1
ctrl=0

[state 195, anime Human]
type=changeanim
triggerall= !AIlevel
trigger1= !time
value=196 - command="holdfwd"

[state 195, anime AI]
type=changeanim
triggerall= AIlevel
trigger1= !time
value=ifelse((life-p2life>500 && p2movetype=H),196,195)

[State 195, changetocharge]
type=changestate
triggerall= time>8 && !AIlevel && power<powermax
trigger1= command="holdstart"
value=760
persistent=0

[state 195, changstate]
type=statetypeset
trigger1= anim=195 && animelem=3
movetype=A
persistent=0

[State 195, hit]
type=hitdef
triggerall= anim=195
trigger1= animelem=5
attr=S,NA 
damage=10
animtype=light
hitflag=MAFD
priority=1,Hit
pausetime=2,8
sparkno=s7010+(random%8)
guard.sparkno=s7000
sparkxy= -12,-85
hitsound=s700,4
guardsound=s2,0
guard.dist=0
ground.type=High
ground.hittime=8
ground.velocity=-1
guard.velocity=-1
air.type=Low
air.velocity=-2,-4
getpower= 100,100
givepower= -1000,0
airguard.ctrltime= 16
airguard.velocity= ifelse(var(20),-4,-8), -1.5
fall=1
persistent=0

[State 195, snd]
type=playsnd
triggerall= anim=195
trigger1= animelem=3
value=5080,1
channel=0
ignorehitpause=1
persistent=0

[State 195, snd]
type=playsnd
triggerall= anim=196
trigger1= animelem=2
value=5090,9
channel=0
ignorehitpause=1
persistent=0

[State 195, power]
type=poweradd
triggerall= !var(20)
trigger1= anim=195 && animelem=5
trigger2= anim=196 && animelem=12
value=100
persistent=0

[State 195, defvar]
type=varset
trigger1= anim= 196
trigger1= !animtime && !(var(18) & 8)
var(18) = var(18) + 8

[State 195, end]
type=changestate
trigger1= !animtime
value=0
ctrl=1


;==========<PARRY>==========
;---STANDING---
[Statedef 700]
type = S
physics = S
movetype = I
anim = 700
velset = 0, 0
ctrl = 0
sprpriority = 0
poweradd = 78
facep2 = 1

[State 700, Safe]
type= ChangeState
trigger1 = Pos y != 0
value = 702
ignorehitpause = 1

[state 700, ParryTimes Counter]
type=varadd
trigger1= !time
var(12)= 1
ignorehitpause=1
persistent=0

[State 700, HB]
type = hitby
trigger1 = time<4
value = SCA, AT
time = 1

[State 700, Stop]
type = posfreeze
trigger1 = !time
value = 1

[State 700, NoShake]
type = envshake
trigger1 = !time
time = 0
freq = 0
ampl = 0

[State 700, Back]
type = posadd
trigger1 = !time
trigger1 = GetHitvar(animtype) > 1
x = -4

[State 700, Pause]
type = pause
trigger1 = !time && numenemy
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
endcmdbuftime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
pausebg = 0

[State 700, blueflash]
type=palfx
triggerall= var(21)<=3
trigger1= time<16 && time%2=0
add=50,50,250
time=1
color=100

[State 700, redflash]
type=palfx
triggerall= var(21)>3
trigger1= time<16 && time%8=0
add=80,20,0
mul=240,150,60
time=4
color=0

[State 700, snd]
type=playsnd
trigger1= !time && random<500
value=5030, 0
channel=0

[State 700, snd]
type=playsnd
trigger1= !time
value=700, 0
channel=4

[State 700, Spark]
type=explod
trigger1= animelem=2
anim=6312
ID=6312
sprpriority=5
postype=p1
pos=40,-75
pausemovetime=65535
ownpal=1

[State 700, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 700, ChangeState]
type = ChangeState
triggerall = !AILevel
triggerall = command = "holdback"
triggerall = inguarddist
trigger1 = AnimElemtime(2)>=15
value = 120

[State 700, Ctrl]
type = Ctrlset
trigger1 = time = 15
value = 1

[State 700, End]
type = changestate
trigger1 = !animtime
value = 0
ctrl = 1


;--- CROUCHING ---
[Statedef 701]
type = C
physics = C
movetype = I
anim = 701
velset = 0, 0
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[State 701, Safe]
type= ChangeState
trigger1 = Pos y != 0
value = 702
ignorehitpause = 1

[state 701, ParryTimes Counter]
type=varadd
trigger1= !time
var(12)= 1
ignorehitpause=1
persistent=0

[State 701, HB]
type = hitby
trigger1 = time < 4
value = SCA, AT
time = 1

[State 701, Stop]
type = posfreeze
trigger1 = !time
value = 1

[State 701, NoShake]
type = envshake
trigger1 = !time
time = 0
freq = 0
ampl = 0

[State 701, Back]
type = posadd
trigger1 = !time
trigger1 = GetHitvar(animtype) > 1
x = -8

[State 701, Pause]
type = pause
trigger1 = !time && numenemy
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
endcmdbuftime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
pausebg = 0

[State 701, blueflash]
type=palfx
triggerall= var(21)<=3
trigger1= time<16 && time%2=0
add=50,50,250
time=1
color=100

[State 701, redflash]
type=palfx
triggerall= var(21)>3
trigger1= time<16 && time%8=0
add=80,20,0
mul=240,150,60
time=4
color=0

[State 701, snd]
type=playsnd
trigger1= !time && random<500
value=5030, 0
channel=0

[State 701, snd]
type=playsnd
trigger1= !time
value=700, 0
channel=4

[State 701, Spark]
type=explod
trigger1= animelem=2
anim=6312
ID=6312
sprpriority=5
postype=p1
pos=34,-37
pausemovetime=65535
ownpal=1


[State 701, No walking]
type = assertspecial
trigger1 = 1
flag = nowalk
flag2 = nostandguard
flag3 = nocrouchguard

[State 701, ChangeState]
type = ChangeState
triggerall = !AILevel
triggerall = command = "holdback"
triggerall = inguarddist
trigger1 = AnimElemtime(2)>=15
value = 120

[State 701, Ctrl]
type = Ctrlset
trigger1 = time = 15
value = 1


[State 701, End]
type = changestate
trigger1 = !animtime
value = 11
ctrl = 1


;--- AERIAL ---
[Statedef 702]
type = A
physics = A
movetype = I
anim = 702
ctrl = 0
sprpriority = 2
poweradd = 78
facep2 = 1

[state 702, ParryTimes Counter]
type=varadd
trigger1= !time
var(12)= 1
ignorehitpause=1
persistent=0

[State 702, HB]
type = hitby
trigger1 = time < 4
value = SCA, AT
time = 1

[State 702, NoShake]
type = envshake
trigger1 = !time
time = 0
freq = 0
ampl = 0

[State 702, Pause]
type = pause
trigger1 = !time && numenemy
time = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
movetime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
endcmdbuftime = 20-ifelse((GetHitVar(animtype)=[3,5]),4,GetHitVar(animtype))-ifelse(GetHitVar(hitshaketime)>16,16,GetHitVar(hitshaketime))
pausebg = 0

[State 702, Type]
type = statetypeset
trigger1 = time < 15
physics = N

[State 702, Stop]
type = posfreeze
trigger1 = time < 14
value = 1

[State 702, Vel]
type = velset
trigger1 = time = 15
x = Const(size.xscale) * IFElse(vel x > 0, vel x / 3.0, IFelse(vel x < 0, vel x - 0.5, 0))
y = Const(size.yscale) * IFElse(vel y < -2, vel y, -3)

[State 702, Type]
type = statetypeset
trigger1 = time >= 15
physics = A

[State 702, blueflash]
type=palfx
triggerall= var(21)<=3
trigger1= time<16 && time%2=0
add=50,50,250
time=1
color=100

[State 702, redflash]
type=palfx
triggerall= var(21)>3
trigger1= time<16 && time%8=0
add=80,20,0
mul=240,150,60
time=4
color=0

[State 702, snd]
type=playsnd
trigger1= !time && random<500
value=5030, 0
channel=0

[State 702, snd]
type=playsnd
trigger1= !time
value=700, 0
channel=4

[State 702, spark sf3]
type=explod
trigger1= animelem=2
anim=6312
ID=6312
sprpriority=5
postype=p1
pos=35,-96
pausemovetime=65535
ownpal=1

[State 702, asserts]
type = assertspecial
trigger1 = 1
flag = noairguard

[State 702, ChangeState]
type = ChangeState
triggerall = !AILevel
triggerall = command = "holdback"
triggerall = inguarddist
trigger1 = AnimElemtime(2)>=15
value = 120

[State 702, Ctrl]
type = ctrlset
trigger1 = time = 15
value = 1

;====================<bugfix>======================
;==========<FORCED P2 RECOVERY>==========
[Statedef 5025]
type=A
movetype=H
physics=N
velset=0,0
facep2=1

[State 5025, hfs]
type=hitfallset
trigger1=!time
value=0

[State 5025, end]
type=selfstate
trigger1=1
value= ifelse(pos y, 5020, 5000)





;====================<State -2 Area>===============
[Statedef -2]

[State 0, ChangeState]
type = ChangeState
triggerall = AIlevel
trigger1 = enemy,hitdefattr = SCA,NA,SA,HA,NP,SP,HP,NT,ST,HT,AP
;trigger1 = random <= 600
trigger2 = enemy,numproj = [1,99999999]
value = 140 
ctrl = 0
;anim =
;ignorehitpause = 
;persistent =

[State 0, PowerAdd]
type = Powerset
trigger1 = 1
value = powermax 
;ignorehitpause = 
;persistent =

;--------- Charge vars -------------------------------------------------
[State -2, reset var(5)]
type = varset
triggerall = var(5)
trigger1 = AILevel = 0
trigger1 = !(command = "holddown" || command = "holdback")
var(5) = IFElse(var(5)>0 && var(5)<=45,var(5)-1,45)
ignorehitpause = 1

[State -2, reset var(6)]
type = varset
triggerall = var(6)
trigger1 = var(5) = 0
var(6) = 0
ignorehitpause = 1


[State -2, add charge var1]
type = varadd
trigger1 = AILevel = 0
trigger1 = (command = "holddown" || command = "holdback")
var(5) = 1
ignorehitpause = 1

[State -2, sync var2]
type = varset
trigger1 = AILevel = 0
trigger1 = var(5) > 20
trigger1 = (command = "holddown" || command = "holdback")
var(6) = var(5)
ignorehitpause = 1

; --------------- Focus Attacks -----------------------------------------
[State -2, sync buffer]
type = varset
triggerall = RoundState >= 2
trigger1 = var(50) < Life
var(50) = Life
ignorehitpause= 1

[State -2, Get Revange Gauge]
type = varadd
triggerall = RoundState>=2
trigger1 = Movetype = H || StateNo = 500
trigger1 = StateNo != [700,702]
trigger1 = var(50) > Life
trigger1 = var(52) := var(52) + (var(50) - Life)
trigger1 = var(50) := Life
var(52) = 0
ignorehitpause= 1

[State -2, clear var51]; var(51) is from state 500
type= varset
triggerall = RoundState >= 2
triggerall = var(51)
trigger1= StateNo = [5000,5999]
var(51)= 0

[State -2, Regain Life Focus Hit Value]
type = LifeAdd
triggerall = RoundState >= 2
triggerall = var(51) && MoveType != H
trigger1 = time%3 = 0
trigger1 = var(51) := var(51) - 1
value= 1

[State -2, Detect P3Dist x When able]
type=varset
triggerall= NumPartner
trigger1= Roundstate>0
fvar(26)= (Partner,pos x - pos x) * facing
ignorehitpause=1

[State -2, Detect P3Dist Y When able]
type=varset
triggerall= NumPartner
trigger1= Roundstate>0
fvar(27)= ifelse(Partner,alive,(Partner,pos y - pos y),65535)
ignorehitpause=1

[State -2, Detect P4dist x when able]
type=varset
triggerall= NumEnemy>1
trigger1= Roundstate>0
fvar(25)= ifelse(EnemyNear(1),alive,(EnemyNear(1),pos x - pos x) * facing,65535)

[State -2, P2 Recovery]
type=targetstate
triggerall= RoundState=2
trigger1= !var(20)
trigger1= (stateno=[200,299]) && anim!=226 && stateno!=270 && stateno!=285
trigger1= movehit=1 && numtarget
trigger1= (target,stateno=5020) && (target,alive) && (target,hitfall)
value=5025
ignorehitpause=1

[State -2, P2 Facing]
type=targetfacing
triggerall= RoundState=2
trigger1= movecontact=1 && numtarget
trigger1= !(target,hitshakeover) && !(target,hitfall) && (target,time<=1)
value= ifelse(p2dist x>=0, -1, 1)
ignorehitpause=1

[State -2, Moon-Driver-Passive-Portrait]
type = Helper
triggerall = !IsHelper
triggerall = AnimExist(9994)
triggerall = !NumHelper(9994) && StateNo != 990
triggerall = ID < 58 && Enemynear,StateNo = 990 && Enemynear,AnimExist(9993)
trigger1 = Enemynear,StateNo = 990 && Enemynear,time < 2
helpertype = Normal
name = "Moon-Driver-Passive-Portrait"
ID = 9994
StateNo = 9994
postype = p1
pos = 0 * Const(Size.xScale), -500 * Const(Size.yScale)
facing = 1
keyctrl = 0
ownpal = 1
;remappal = 1,1
supermovetime = 4294967295
pausemovetime = 4294967295
size.xscale = Const(Size.xScale) * 1
size.yscale = Const(Size.yScale) * 1
;size.proj.doscale = 1
ignorehitpause = 1

[State -2, AI Monitor Helper]
type = helper
trigger1 = AILevel
trigger1 = !NumHelper(32767)
trigger1 = NumEnemy && RoundState = 2
helpertype = normal
stateno = 32767
ID = 32767
name = "AI Monitor Helper"
postype = P2
size.xScale = Const(Size.xScale)
size.yScale = Const(Size.yScale)
size.proj.doscale = ID; Give Parent ID to Child
supermovetime = 65535
pausemovetime = 65535

[State -2, Dizzy safe]
type = SelfState
triggerall = var(39) = 1
triggerall = time && Alive
triggerall = !(StateNo = [5000,5299])
trigger1 = Ctrl || StateNo = 21
value = IFElse(StateType = S || StateType = C,5300,5050)


[State -2, Dizzy reset to 0]
type = varset
trigger1 = fvar(39) != 0
trigger1 = Anim = 5300
fvar(39) = 0


[State -2, P2 Safe Fall]
type = targetstate
trigger1 = numtarget = 1
trigger1 = target,var(39) = 0
trigger1 = (target, command = "recovery") || (target, command = "recoverR")
trigger1 = target, pos y >= -48 && target, vel y > 0
trigger1 = target, alive && target, hitfall && target, gethitvar(fall.recover)
trigger1 = target, stateno = 5030 || target, stateno = 5035 || target, stateno = 5050 || target, stateno = 5071
value = 5205
ignorehitpause = 1

[State -2, Original Combo End]
type = varset
trigger1 = var(20) < 0
trigger2 = movetype = H
trigger3 = roundstate > 3
trigger4 = StateNo >= 3000
var(20) = 0
ignorehitpause=1

[State -2, Original Combo Time]
type = varadd
trigger1 = var(20) > 0
var(20) = -1
ignorehitpause = 1

[State -2, OC Free Juggling]
type = assertspecial
trigger1 = var(20) > 0 || var(24) || numtarget(3300)
trigger2 = roundstate!=2
flag = nojugglecheck
ignorehitpause = 1

[State -2, Original Combo Guard]
type = assertspecial
trigger1 = var(20)>0
flag = nostandguard
flag2 = nocrouchguard
flag3 = noairguard
ignorehitpause = 1

[State -2, Original Combo PalFX]
type = palfx
trigger1 = var(20)>60
time = 2
add = 32+ceil(sin(var(20)/16.0*pi)*32),32+ceil(sin(var(20)/16.0*pi)*32),32+ceil(sin(var(20)/16.0*pi)*32)
ignorehitpause=1

[State -2, Original Combo PalFX]
type = palfx
trigger1 = var(20)=[1,60]
time = 2
add = 64+ceil(sin(var(20)/8.0*pi)*64),64+ceil(sin(var(20)/8.0*pi)*64),128+ceil(sin(var(20)/8.0*pi)*128)

[State -2, KO Switch reset]
type=varset
trigger1 = roundstate=1 
trigger1 = alive && (var(18) & 128)
var(18) = var(18) - 128
ignorehitpause=1

[State -2, KOsnd High]
type=playsnd
triggerall = !Alive
triggerall = !(var(18) & 128)
trigger1 = Stateno != 5130 && Floor(pos y) < 0
trigger1= var(18):= var(18) + 128
value = 5010,1
;channel=0
ignorehitpause=0

[State -2, Counter FX Must at Top]
type=helper
trigger1= !numhelper(7400) && var(29)
trigger1= !(hitdefattr=SCA,AT)
trigger1= MoveHit=1 && NumTarget
helpertype=normal
stateno=7400
ID=7400
name="Counter"
postype=left
pausemovetime=255
supermovetime=255
ignorehitpause=1

[State -2, Counter Flag]
type=varset
trigger1= numenemy
var(29)=(enemynear,movetype=A)
ignorehitpause=1

;============<Normal Fireball Detect>===========
[State -2, record last opponent helper number]
type=varset
triggerall= roundstate=2 && numenemy
triggerall = enemynear, Alive && !var(55)
trigger1 = enemynear,animtime = -1
var(56) = Enemynear,Numhelper
ignorehitpause=1

[State -2, Fireball move]
type=varset
triggerall= roundstate=2 && numenemy
triggerall = enemynear, Alive && (enemynear, Numhelper || Enemynear,Numproj)
triggerall = !var(55)
trigger1 = enemynear,movetype =A && (enemynear,stateno = [1000,2999]) && P2bodydist x >= 75 && P2StateType != A
trigger1 = enemynear,Numproj || ((enemynear,Numhelper - var(56)) > 0)
trigger1 = var(55) != Enemynear,StateNo
var(55) = Enemynear,StateNo
ignorehitpause=1


;=====================<Team status>
;============<My Teammate ID>
[State -2, Clear teammate]
type = varset
triggerall = var(34)
trigger1 = PlayerID(var(34)),Alive = 0
trigger2 = PlayerID(var(34)),Life < 1
var(34) = 0
ignorehitpause = 1

[State -2, Parter ID set have Parter]
type = varset
triggerall = var(34) = 0
triggerall = NumPartner
trigger1 = Partner,Alive
var(34) = Partner,ID


[State -2, Parter ID set Helper have Parent]
type = varset
triggerall = var(34) = 0
triggerall = IsHelper
trigger1 = Parent,Alive
var(34) = Parent,ID


;============<Enemy IDs>
[State -2, Close Enemy ID clear 1 Enemy]
type = varset
triggerall = var(32)
trigger1 = NumEnemy = 1
trigger1 = Enemynear,Alive = 0 || Enemynear,ID != PlayerID(var(32)),ID
var(32) = 0

[State -2, Close Enemy ID set 1 Enemy]
type = varset
triggerall = !var(32)
trigger1 = NumEnemy = 1
trigger1 = Enemynear,Alive
var(32) = Enemynear,ID

[State -2, Close Enemy ID clear 2 Enemys]
type = varset
triggerall = var(32)
trigger1 = NumEnemy > 1
trigger1 = PlayerID(var(32)),Alive = 0
var(32) = 0

[State -2, Close Enemy ID set 2 Enemys]
type = varset
triggerall = NumEnemy > 1
triggerall = Enemynear,Alive || Enemynear(1),Alive
trigger1 = !var(32)
trigger2 = var(32)
trigger2 = Enemynear,Alive && Enemynear(1),Alive
trigger2 = PlayerID(var(32)),ID != Enemynear,ID
trigger3 = var(32)
trigger3 = (Enemynear,Alive = 1 && Enemynear(1),Alive = 0) || (Enemynear,Alive = 0 && Enemynear(1),Alive = 1)
trigger3 = PlayerID(var(32)),Alive = 0
var(32) = IFElse(Enemynear,Alive,Enemynear,ID,Enemynear(1),ID)

[State -2, Far Enemy ID clear 2 Enemys]
type = varset
triggerall = var(33)
trigger1 = PlayerID(var(33)),Alive = 0
trigger2 = (Enemynear,Alive = 1 && Enemynear(1),Alive = 0) || (Enemynear,Alive = 0 && Enemynear(1),Alive = 1)
var(33) = 0

[State -2, Far Enemy ID set 2 Enemys]
type = varset
triggerall = NumEnemy > 1
triggerall = var(32)
triggerall = Enemynear,Alive && Enemynear(1),Alive
trigger1 = !var(33)
trigger2 = var(33)
trigger2 = PlayerID(var(33)),ID != Enemynear(1),ID
var(33) = Enemynear(1),ID

;============<Team Status>
[State -2, Mark teammate is Defending me]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32)
triggerall = var(35) != 1
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1 && !var(33)
trigger1 = Pos x < PlayerID(var(34)),Pos x
trigger1 = PlayerID(var(34)),pos x < PlayerID(var(32)),Pos x
trigger2 = facing = 1 && var(33)
trigger2 = Pos x < PlayerID(var(34)),Pos x
trigger2 = PlayerID(var(34)),pos x < PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x < PlayerID(var(33)),Pos x
trigger3 = facing = -1 && !var(33)
trigger3 = Pos x > PlayerID(var(34)),Pos x
trigger3 = PlayerID(var(34)),pos x > PlayerID(var(32)),Pos x
trigger4 = facing = -1 && var(33)
trigger4 = Pos x > PlayerID(var(34)),Pos x
trigger4 = PlayerID(var(34)),pos x > PlayerID(var(32)),Pos x
trigger4 = PlayerID(var(32)),Pos x > PlayerID(var(33)),Pos x
var(35) = 1

[State -2, Mark we are trapping enemy]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32)
triggerall = var(35) != 2
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1 && !var(33)
trigger1 = Pos x < PlayerID(var(32)),Pos x
trigger1 = PlayerID(var(32)),Pos x < PlayerID(var(34)),Pos x
trigger2 = facing = 1 && var(33)
trigger2 = Pos x < PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x < PlayerID(var(33)),Pos x
trigger2 = PlayerID(var(33)),Pos x < PlayerID(var(34)),Pos x
trigger2 = Abs(PlayerID(var(32)),Pos x - PlayerID(var(33)),Pos x) < IfElse(Abs(Pos x - PlayerID(var(32)),Pos x)>Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x),Abs(Pos x - PlayerID(var(32)),Pos x),Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x))
trigger3 = facing = -1 && !var(33)
trigger3 = Pos x > PlayerID(var(32)),Pos x
trigger3 = PlayerID(var(32)),Pos x > PlayerID(var(34)),Pos x
trigger4 = facing = -1 && var(33)
trigger4 = Pos x > PlayerID(var(32)),Pos x
trigger4 = PlayerID(var(32)),Pos x > PlayerID(var(33)),Pos x
trigger4 = PlayerID(var(33)),Pos x > PlayerID(var(34)),Pos x
trigger4 = Abs(PlayerID(var(32)),Pos x - PlayerID(var(33)),Pos x) < IfElse(Abs(Pos x - PlayerID(var(32)),Pos x)>Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x),Abs(Pos x - PlayerID(var(32)),Pos x),Abs(PlayerID(var(33)),Pos x - PlayerID(var(34)),Pos x))
var(35) = 2

[State -2, Mark Teammate Trapped]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32) && var(33)
triggerall = var(35) != 3
;triggerall = PlayerID(var(34)),MoveType = H
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = facing = 1
trigger1 = Pos x < PlayerID(var(32)),Pos x
trigger1 = PlayerID(var(32)),Pos x < PlayerID(var(34)),Pos x
trigger1 = PlayerID(var(34)),Pos x < PlayerID(var(33)),Pos x
trigger1 = PlayerID(var(32)),facing =1 && PlayerID(var(33)),facing = -1
trigger2 = facing = -1
trigger2 = Pos x > PlayerID(var(32)),Pos x
trigger2 = PlayerID(var(32)),Pos x > PlayerID(var(34)),Pos x
trigger2 = PlayerID(var(34)),Pos x > PlayerID(var(33)),Pos x
trigger2 = PlayerID(var(32)),facing =-1 && PlayerID(var(33)),facing = 1
var(35) = 3

[State -2, Mark Teammate Cornered]
type = varset
triggerall = RoundState = 2
triggerall = !(InGuardDist || MoveType = H)
triggerall = var(34)
triggerall = var(32) && var(33)
triggerall = var(35) != 4
;triggerall = PlayerID(var(34)),MoveType = H
triggerall = !(PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale)))
trigger1 = PlayerID(var(34)),BackEdgeBodydist < 30
trigger1 = Abs(PlayerID(var(34)),pos x) > Abs(PlayerID(var(32)),pos x)
trigger1 = Abs(PlayerID(var(34)),pos x) > Abs(PlayerID(var(33)),pos x)
trigger1 = Abs(PlayerID(var(34)),pos x) - Abs(PlayerID(var(32)),pos x) < 60
trigger1 = Abs(PlayerID(var(34)),pos x) - Abs(PlayerID(var(33)),pos x) < 60
var(35) = 4

[State -2 mark Im fight in lead or fight alone]
type = varset
triggerall = var(35)
triggerall = var(34)
triggerall = var(32)
trigger1 = facing = PlayerID(var(34)), facing
trigger1 = facing = 1
trigger1 = PlayerID(var(34)),pos x < pos x
trigger1 = pos x < PlayerID(var(32)), pos x
trigger2 = facing = PlayerID(var(34)), facing
trigger2 = facing = -1
trigger2 = PlayerID(var(34)),pos x > pos x
trigger2 = pos x > PlayerID(var(32)),pos x
trigger3 = facing != PlayerID(var(34)), facing
trigger3 = facing = 1
trigger3 = pos x > PlayerID(var(34)), pos x
trigger4 = facing != PlayerID(var(34)), facing
trigger4 = facing = -1
trigger4 = pos x < PlayerID(var(34)), pos x
var(35) = 0

[State -2 Clear Teammate mark]
type = varset
triggerall = var(35)
trigger1 = !var(34)
trigger2 = InGuardDist
trigger3 = MoveType = H
trigger4 = var(34)
trigger4 = PlayerID(var(34)),Pos y < Ceil(-80 * Const(size.yscale))
trigger5 = var(32) = 0
var(35) = 0


;============<Damage Scaling System>============
;fvar(29)= Scaling facter in persentage
;============ Combo Number by stateno ===========
[State -2, Combo Number]
type= varadd
triggerall= RoundState=2
triggerall= hitcount = 1
triggerall= !NumHelper(3305)
trigger1= Movetype=A && NumTarget
trigger1= target,time=0 && target,movetype=H
var(11) = 1
ignorehitpause=1

[State -2, Combo Number Reset]
type= varset
triggerall= var(11)
trigger1= Enemynear,Ctrl || Enemynear,StateNo < 200
var(11) = 0
ignorehitpause=1

[State -2, Combo Number reset 2]
type= varset
trigger1= var(31) && var(11) = 0
var(31) = 0
ignorehitpause=1

;============ Scaling by Combo =============
[State -2, Reset fvar(10)]
type = varset
triggerall= RoundState=2
triggerall= fvar(10) != 1
trigger1 = Enemynear,Ctrl
trigger2 = Enemynear,StateNo < 5000 || Enemynear,MoveType != H
fvar(10) = 1
ignorehitpause=1

[State -2, Damage Scaling by States]
type=varadd
triggerall= RoundState=2
triggerall= (Enemynear,StateNo = [5000,5199]) || Enemynear,MoveType = H
triggerall= var(11)>var(31)
triggerall= StateNo != 3301
trigger1= NumEnemy && var(11)<10 && !var(20)
trigger1= var(11) >= 2 
fvar(10)= -0.1;Ifelse(var(11)>3,0.1,0.2)
ignorehitpause=1

[State -2, Damage Scaling by States super]
type=varadd
triggerall= RoundState=2
triggerall= (Enemynear,StateNo = [5000,5199]) || Enemynear,MoveType = H
triggerall= StateNo != 3301
trigger1= NumEnemy && !var(20)
trigger1= NumTarget(3100) || NumTarget(3101) || NumTarget(3102) || NumTarget(3200) || NumTarget(3201) || NumTarget(3300) || NumTarget(3301) || NumTarget(4000) || NumTarget(4001) 
trigger1= MoveType = A
trigger1= time=1
fvar(10)= -(fvar(10)*0.4)
ignorehitpause=1

[State -2, Damage Scaling by States high hits]
type=varadd
triggerall= RoundState=2
triggerall= (Enemynear,StateNo = [5000,5199]) || Enemynear,MoveType = H
triggerall= var(11)>var(31)
trigger1= NumEnemy && (var(11)>=10 || var(20))
fvar(10)= -(fvar(10)*0.1+(0.05*(var(20)>0)))
ignorehitpause=1

[State -2, Damage Scaling by States fix]
type=varset
triggerall= RoundState=2
trigger1= fvar(10) <= 0
fvar(10) = 0.01
ignorehitpause=1

[State -2, var(31) add up with var(11)]
type = varadd
trigger1 = var(11) > var(31)
var(31) = 1
ignorehitpause=1
;================= <End by State> ==================

;============= Scale by P2 Life ===========
[State -2, Attack var by P2Life]
type=varset
triggerall= RoundState=2
trigger1= NumEnemy
fvar(11)= ifelse(Enemynear,life > Enemynear,lifemax/2,1,Ifelse(Enemynear,life > Enemynear,lifemax/4,0.95,Ifelse(Enemynear,life > Enemynear,lifemax/6,0.9,0.75)))
ignorehitpause=1

;=========== Apply Scaling ==========
[State -2, PreDampener var set]
type=varset
trigger1= RoundState=2
fvar(28)= (var(29)*0.25) + fvar(10) * fvar(11) * Ifelse(var(20),(1.0/(1+(var(11)/25.0))),1)
ignorehitpause=1

[State -2, Dampener var set]
type=varset
trigger1= RoundState=2
fvar(29)= IFElse(fvar(28) < (0.1+0.1*(var(20)!=0)),0.1+0.1*(var(20)!=0),fvar(28))
ignorehitpause=1

[State -2, Dampener Apply]
type=attackmulset
trigger1= RoundState=2
value= fvar(29)
ignorehitpause=1

[State -2, Armor Apply]
type = DefenceMulSet
trigger1 = RoundState=2
value = 1 - 0.5 * ((var(18) & 8) = 8)
ignorehitpause = 1

[State -2, Taunt Def Increase Reset]
type=varset
triggerall= RoundState=2
triggerall= (var(18) & 8) && Movetype=H
trigger1= (StateNo=[5000,5999]) && HitOver
var(18) = var(18) - 8
ignorehitpause=1

[State -2, Assert: UnGuardable]
type = AssertSpecial
trigger1 = var(17) > 0
trigger1 = var(17) := (var(17) - 1)
flag = UnGuardable
ignoreHitPause = 1


;=========================================

[State -2, Create Detectwall_N]
type=null;Helper
triggerall= !NumHelper(9743) && StateType!=A
triggerall= NumEnemy && RoundState=2 && P2Movetype=A
triggerall= !Enemynear,NumProj
trigger1= (Ctrl || StateNo=21 || StateNo=100) && StateNo!=710
trigger1= P2Dist x>=50 && Enemynear,NumHelper
helpertype= Normal
name= "DetectWall_Near"
StateNo= 9743
ID= 9743
postype= P1
pos= 50,0
facing= 1
keyctrl=0
ownpal=0
supermovetime= 65535
pausemovetime= 65535
ignorehitpause=1

[State -2, Create Detectwall_F]
type=null;Helper
triggerall= NumHelper(9743) && !NumHelper(9745) && StateType!=A
triggerall= NumEnemy && RoundState=2
trigger1= (Ctrl || StateNo=21 || StateNo=100) && StateNo!=710
helpertype= Normal
name= "DetectWall_Far"
StateNo= 9745
ID= 9745
postype= P1
pos= 80,0
facing= 1
keyctrl=0
ownpal=0
supermovetime= 65535
pausemovetime= 65535
ignorehitpause=1

[State -2, Debug Intro]
type=displaytoclipboard
trigger1= RoundState != 2
text="var(0)=%d PrevS=%d"
params=var(0),PrevStateNO
ignorehitpause=1

[State -2, Debug Simul VS Simul]
type=displaytoclipboard
triggerall= NumPartner && NumEnemy>1
trigger1= Partner,Alive && Enemynear(1),Alive
text="Simul VS Simul Mode AI=%d|Task:%d|PID:%d E1ID:%d|E2ID:%d"
params=AIlevel,var(12),var(34),var(32),var(33)
ignorehitpause=1

[State -2, Debug 1 VS Simul]
type=displaytoclipboard
trigger1= NumPartner && NumEnemy>1
trigger1= !(Partner,Alive) && Enemynear(1),Alive
trigger2= !NumPartner && NumEnemy>1
trigger2= Enemynear(1),Alive
text="1 VS Simul Mode AI=%d|Var(11):%d|NumEnemy:%d \n P2bodydist:%d|P4bodydist:%d"
params=AIlevel,var(11),(enemynear(1),alive),ceil(p2bodydist x), ceil(fvar(25))
ignorehitpause=1

[State -2, Debug Simul VS 1]
type=displaytoclipboard
trigger1= NumPartner && NumEnemy>1
trigger1= (Partner,Alive) && !(Enemynear(1),Alive)
trigger2= NumPartner && NumEnemy<2
text="Simul VS 1 Mode AI=%d|Var(12):%d|PartnerDist:%d \n P2bodydist x:%d|P2bodydist y:%d\n"
params=AIlevel,var(12),ceil(fvar(26)),ceil(p2bodydist x), ceil(p2bodydist y)
ignorehitpause=1

[State -2, Debug 1 ON 1]
type=displaytoclipboard
triggerall= RoundState=2
trigger1= NumPartner && NumEnemy>1
trigger1= !(Partner,Alive) && !(Enemynear(1),Alive)
trigger2= !NumPartner && NumEnemy<2
text="1 ON 1 Mode DamageScaling= %d | X: %d | Y: %d | Debug=%d | ATTLV= %d"
params= fvar(29),P2Bodydist x, P2dist y, var(57), var(7)
ignorehitpause=1

[State -2, Debug]
type = appendtoclipboard
triggerall= RoundState=2
trigger1 = 1
text="\nvar(59) %d var(46) %d var(18) %d var(51) %d"  
params= var(59),var(46),var(18),var(51)
ignorehitpause = 1

;===========================================================================
;===============================<-3 STATES>=================================
;===========================================================================
[Statedef -3]

[State -3, Gametime Var]
type=varset
trigger1= 1
var(58)=gametime
ignorehitpause=1

[State -3, No Reverse Guard]
type = AssertSpecial
triggerall = StateNo = [200,4999]
triggerall = MoveType = A
trigger1 = Enemynear,P2Dist x < 0
flag = unguardable

[State -3, Gauge Helper]
type = helper
triggerall = !NumHelper(8000)
trigger1 = RoundState >= 2
helpertype = normal
name = "Gauge Helper"
ID = 8000
stateno = 8000
pos = 0,0
postype = back
facing = 1
keyctrl = 0
ownpal = 1
supermovetime = 65535
pausemovetime = 65535
size.xscale = 1.0
size.yscale = 1.0

[State -3, Delta Vel x for AI]
type = varset
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(7) = ((IFElse(BackEdgeBodyDist < 4 || FrontEdgeBodyDist < 4,0,Vel x) * facing) - (IFElse(Enemynear,BackEdgeBodyDist < 4 || Enemynear,FrontEdgeBodyDist < 4,0,Enemynear,Vel x) * Enemynear,facing)) * facing

[State -3, Delta Vel y for AI]
type = varset
;trigger1 = AILevel
trigger1 = RoundState = 2 && NumEnemy
fvar(8) = Vel y - Enemynear,vel y


[state -3, Parry times for AI reset]
type = varset
triggerall = AILevel
triggerall = var(12)
triggerall = numenemy && roundstate=2
triggerall = (Anim != [700,702]) && stateno != 52
trigger1 = ((Ctrl ||StateNo = 21 ) && time>20 ) || movetype != I
var(12) = 0

[state -3, Guard times for AI reset]
type = varset
triggerall = AILevel
triggerall = var(15)
triggerall = numenemy && roundstate=2
triggerall = !( (StateNo = [130,159]) || (StateNo = [10160,10165])  )
trigger1 = Ctrl || StateNo < 120 || MoveType != H
trigger2 = StateNo = [5000,5999]
var(15) = 0

[state -3, Guard times Counter for AI]
type = varadd
triggerall = AILevel
triggerall = numenemy && roundstate=2
triggerall = time = 0
trigger1 = StateNo = 150   || StateNo = 152   || StateNo = 154
trigger2 = StateNo = 10160 || StateNo = 10162 || StateNo = 10164
var(15) = 1
ignorehitpause = 1


[State -3, ATT Level Clear]
type = varset
triggerall = var(7)
triggerall = !IsHelper
trigger1 = !animtime
trigger2 = MoveType != A
trigger3 = (StateNo < 200 || StateNo > 4999)
var(7) = 0
ignorehitpause = 1

[State -3, ATT Level Normal Light]
type = varset
triggerall = var(7) != 1
trigger1 = StateNo = 200 || StateNo = 205 || StateNo = 206 || StateNo = 208
trigger2 = StateNo = 203 || StateNo = 600 || StateNo = 605 || StateNo = 630

var(7) = 1
ignorehitpause = 1

[State -3, ATT Level Normal Mid]
type = varset
triggerall = var(7) != 2
trigger1 = StateNo = 210 || StateNo = 211 || StateNo = 215 || StateNo = 217
trigger2 = StateNo = 216 || StateNo = 229 || StateNo = 213 || StateNo = 218
trigger3 = StateNo = 610 || StateNo = 635 || StateNo = 615 || StateNo = 640 
var(7) = 2
ignorehitpause = 1

[State -3, ATT Level Normal Heavy]
type = varset
triggerall = var(7) != 3
trigger1 = StateNo = 220 || StateNo = 221 || StateNo = 225 || StateNo = 227
trigger2 = StateNo = 223 || StateNo = 617 || StateNo = 228 || StateNo = 226
trigger3 = StateNo = 620 || StateNo = 638 || StateNo = 625 || StateNo = 626 
var(7) = 3
ignorehitpause = 1

[State -3, ATT Level Special]
type = varset
triggerall = var(7) != [4,7]
trigger1 = (StateNo = [1000,1999])
var(7) = 3+var(10)
ignorehitpause = 1

[State -3, ATT Level Super]
type = varset
triggerall = (var(7) != [8,10])
triggerall = var(10) >= 5
trigger1 = (StateNo = [3000,4999])
var(7) =  3 + var(10)
ignorehitpause = 1

[State -3, ATT Level Ultra]
type = varset
triggerall = var(7) != 11
trigger1 = StateNo = [4000,4999]
var(7) =  11
ignorehitpause = 1

[State -3, Reset no combo var]
type = varset
triggerall = (var(8) & 1)
trigger1 = Ctrl || StateNo < 200 || StateNo > 5000
trigger2 = StateNo = 211
trigger2 = Anim = 211 && AnimElemtime(11)>= 0
trigger3 = !(Anim = 220 || Anim = 225 || Anim = 228 || Anim = 227)
trigger4 = !(StateNo = 617)
trigger5 = Anim = 1100
trigger5 = !(AnimElemtime(2) >= 0 && AnimElemtime(8) < 0)
trigger6 = Anim = 1101
trigger6 = !(AnimElemtime(2) >= 0 && AnimElemtime(11) < 0)
trigger7 = Anim = 1102
trigger7 = !(AnimElemtime(2) >= 0 && AnimElemtime(15) < 0)
trigger8 = Anim = 3100
trigger8 = !(AnimElemtime(9) >= 0 && AnimElemtime(39) < 0)
var(8) = var(8) - 1
ignorehitpause = 1

[State -3, no combo var]
type = varset
triggerall = !(var(8) & 1)
trigger1 = StateNo = 211
trigger1 = Anim = 211 && AnimElemtime(2)< 0
trigger2 = (Anim = 220 || Anim = 225 || Anim = 228 || Anim = 227)
trigger3 = (StateNo = 617)
trigger4 = Anim = 1100
trigger4 = AnimElemtime(2) >= 0 && AnimElemtime(8) < 0
trigger5 = Anim = 1101
trigger5 = AnimElemtime(2) >= 0 && AnimElemtime(11) < 0
trigger6 = Anim = 1102
trigger6 = AnimElemtime(2) >= 0 && AnimElemtime(15) < 0
trigger7 = Anim = 3100
trigger7 = AnimElemtime(9) >= 0 && AnimElemtime(39) < 0
var(8) = var(8) + 1
ignorehitpause = 1

;-----------<Special info Announcement>---------
[State -3, Dodge inform clear]
type = varset
trigger1 = (var(44) & 1) && time <= 1
trigger1 = !(StateNo = 710)
var(44) = var(44) - 1

[State -3, Dodge inform]
type = varset
trigger1 = !(var(44) & 1) && time <= 1
trigger1 = (StateNo = 710)
var(44) = var(44) + 1

[State -3, Charge inform clear]
type = varset
trigger1 = (var(44) & 2) && time <= 1
trigger1 = StateNo != 760
var(44) = var(44) - 2

[State -3, Charge inform]
type = varset
trigger1 = !(var(44) & 2) && time <= 1
trigger1 = StateNo = 760
var(44) = var(44) + 2

[State -3, Alpha Counter inform Clear]
type = varset
trigger1 = (var(44) & 4) && time <= 1
trigger1 = !(StateNo = 750 || PrevStateNo = 750)
var(44) = var(44) - 4

[State -3, Alpha Counter inform]
type = varset
trigger1 = !(var(44) & 4) && time <= 1
trigger1 = (StateNo = 750 || PrevStateNo = 750)
var(44) = var(44) + 4

[State -3, Fast Attack inform Clear]
type = varset
trigger1 = (var(44) & 16) && time <= 1
trigger1 = !(StateNo = 200 || StateNo = 203 || StateNo = 208)
var(44) = var(44) - 16

[State -3, Fast Attack inform]
type = varset
trigger1 = !(var(44) & 16) && time <= 1
trigger1 = (StateNo = 200 || StateNo = 203 || StateNo = 208)
var(44) = var(44) + 16

[State -3, Hadoken inform Clear]
type = varset
trigger1 = (var(44) & 32) && time <= 1
trigger1 = !(StateNo = [1000,1019])
var(44) = var(44) - 32

[State -3, Hadoken inform]
type = varset
trigger1 = !(var(44) & 32) && time <= 1
trigger1 = (StateNo = [1000,1019])
var(44) = var(44) + 32


[State -3, dizzy restart]
type=varset
triggerall = var(39)=2
trigger1 = PrevstateNo = 5300
trigger2 = Ctrl || StateNo < 5000
trigger3 = !Alive
var(39) = 0

[state -3, dizzy varadd]
type=varadd
triggerall= roundstate=2 && movetype=H
triggerall= !var(39)
triggerall= !NumHelper(6300)
triggerall= (stateno!=[120,159]) && (stateno!=[700,702])
triggerall= stateno>=5000
triggerall= GetHitVar(hitcount)<4
triggerall= Enemynear,var(20) = 0
trigger1= !time
fvar(39)= 3 + 6*(Enemynear,hitdefattr=SCA,SA) + 7*((Enemynear,hitdefattr=SCA,NA) && GetHitvar(animtype)=0) + 20*((Enemynear,hitdefattr=SCA,NA)&&GetHitvar(animtype)=1) + 28*((Enemynear,hitdefattr=SCA,NA)&&GetHitvar(animtype)>1)
ignorehitpause=1

[state -3, dizzy varsubtract]
type=varadd
triggerall= !var(39)
triggerall= !NumHelper(6300)
triggerall= fvar(39) && fvar(39)<var(38)
triggerall= StateNo != [5000,5999]
trigger1= time%10=0
fvar(39)= ifelse((fvar(39)>0 && fvar(39)<2),-(fvar(39)),-1-StateType=C-StateType=L)

[State -3, Ready Dizzy State]
type=varset
triggerall= RoundState=2 && !var(39)
trigger1= fvar(39)>=var(38)
var(39)=1

[State -3, Enter Dizzy State]
type=ChangeState
triggerall= RoundState=2
triggerall= var(39) =1
trigger1= (StateNo=5001 + 10*StateType=C) && HitOver
trigger2= StateNo=5120 && Anim=5120 && !Animtime
value=5300

[state -3, Ducks]
type=helper
triggerall = roundstate = 2
trigger1= !NumHelper(6300)
trigger1= var(39)=1
helpertype=normal
name= "Dizzy Ducks"
ID=6300
stateno=6300
postype=p1
pos= 0,0
ownpal=1
persistent=0

[state -3, Hif fall set]
type = hitfallset
triggerall = roundstate = 2
triggerall = StateNo = [5000,5999]
triggerall = time =1
trigger1 = var(39)=1
value = 1


[state -3, dizzy var reset]
type = varset
trigger1= RoundState != 2
trigger1= fvar(39)
trigger2 = !Alive
fvar(39) = 0


[State -3, MoveShadow]
type = AfterImage
triggerall = RoundState>=2
triggerall = time=1 && !var(20) && !(var(18) & 2)
triggerall = !NumHelper(7660)
trigger1 = stateno=50 && var(9)=3
trigger1 = var(18):= var(18)+2
;trigger1 = var(57):= 3330101
trigger2 = stateno=710
trigger2 = var(18):= var(18)+2
;trigger2 = var(57):= 3330102
time = 40
timegap = 1
framegap = 11
length = 12
palbright=0,0,0
paladd=0,0,0
palmul=.9,.9,.9
palcontrast=120,120,120
palpostbright=0,0,0
trans=add1

[State -3, LV1 supershadow]
type = AfterImage
triggerall = var(10)=5 && !(var(18) & 2)
triggerall = !NumHelper(7660)
trigger1 = stateno=3000 && animelemtime(1)>=1
trigger1 = var(18):= var(18)+2
;trigger1 = var(57):= 3330201
trigger2 = stateno=3100 && animelemtime(1)>=1
trigger2 = var(18):= var(18)+2
;trigger2 = var(57):= 3330202
trigger3 = stateno=3200 && animelemtime(1)>=1
trigger3 = var(18):= var(18)+2
;trigger3 = var(57):= 3330203
trigger4 = stateno=3300 && animelemtime(1)>=1
trigger4 = var(18):= var(18)+2
;trigger4 = var(57):= 3330204
time = 2
timegap = 1
framegap = 8
length = 24
palcolor = 250
palinvertall = 0
palbright = 12,40,90
palcontrast = 60,120,180
palpostbright = 0,0,0
paladd = 0,20,60
palmul = 0.2,0.3,0.4
trans=add1

[State -3, LV2 supershadow]
type=afterimage
triggerall = (var(10)=[6,7]) && !(var(18) & 2)
triggerall = !NumHelper(7660)
trigger1 = stateno=3000 && animelemtime(1)>=1
trigger1 = var(18):= var(18)+2
;trigger1 = var(57):= 3330301
trigger2 = stateno=3100 && animelemtime(1)>=1
trigger2 = var(18):= var(18)+2
;trigger2 = var(57):= 3330302
trigger3 = stateno=3200 && animelemtime(1)>=1
trigger3 = var(18):= var(18)+2
;trigger3 = var(57):= 3330203
trigger4 = stateno=3300 && animelemtime(1)>=1
trigger4 = var(18):= var(18)+2
;trigger4 = var(57):= 3330304
time = 2
timegap = 1
framegap = 8
length = 24
palcolor = 250
palinvertall = 0
palbright = 90,80,120
palcontrast = ifelse(var(10)=6,90,45),ifelse(var(10)=6,160,80),ifelse(var(10)=6,220,105)
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 0.5,0.5,0.5
trans=add1

[State -3, LV3 supershadow]
type=AfterImage
triggerall = var(10)>5 && !(var(18) & 2)
triggerall = !NumHelper(7660) && !NumHelper(7666) && !NumHelper(7667)
trigger1 = stateno=3200 && animelemtime(1)=1
trigger1 = var(18):= var(18)+2
;trigger1 = var(57):= 3330401
trigger2 = stateno=4000 && animelemtime(1)>=1
trigger2 = var(18):= var(18)+2
;trigger2 = var(57):= 3330402
time = 2
timegap = 1
framegap = 8
length = 24
palcolor = 250
palinvertall = 0
palbright = 200,180,100
palcontrast = 160,40,10
palpostbright = 0,0,0
paladd = 0,0,0
palmul = 1.6,1.2,1
trans=add

[State -3, KILL AfterImage]
type = AfterImageTime
triggerall = (var(18) & 2)
triggerall = !(StateNo = 770)
trigger1 = NumHelper(7660) || NumHelper(7666) || NumHelper(7667)
trigger1 = var(18):= var(18) - 2
;trigger1 = var(57):= 3330601
trigger2 = !(stateno=[3000,4999]) && !var(20)
trigger2 = var(18):= var(18) - 2
;trigger2 = var(57):= 3330602
time = 0

[State -3, KEEP AfterImage]
type = AfterImageTime
triggerall = RoundState >= 2
triggerall = (var(18) & 2)
triggerall = !NumHelper(7660)
trigger1 = var(20) > 0 || StateNo = 770
;trigger1 = var(57):= 3330501
trigger2 = (stateno=[3000,4999])
;trigger2 = var(57):= 3330502
time = 2

[State -3, Downed CornerPush]
type=posadd
trigger1= statetype!=A && numenemy
trigger1= enemynear(0),time=1
trigger1= enemynear(0),stateno=5100 || enemynear(0),stateno=5110
trigger1= enemynear(0),backedgebodydist<=0 || enemynear(0),frontedgebodydist<=0
x= ifelse(p2dist x<0, 1, -1)
ignorehitpause=1

[State -3, GetHit Snd light]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)<=1 && random<500
value=5000,ifelse(gethitvar(animtype)=0,1,ifelse(random<400,1,2))
channel=0
ignorehitpause=1

[State -3, GetHit Snd hard]
type=playsnd
triggerall= alive && time=1
triggerall= stateno=5000 || stateno=5010
trigger1= gethitvar(animtype)>=2 && random<600
value=5000,ifelse(random<400,2,3)
channel=0
ignorehitpause=1

[State -3, GetHit Snd]
type=playsnd
triggerall= alive && time=1
trigger1= (stateno=5000 || stateno=5010) && numenemy
trigger1= gethitvar(fall) || (enemynear,hitdefattr=SCA,SA,HA) && random<400
trigger2= (stateno=5020 || stateno=5070 || stateno=5080) && random<300
trigger3= (stateno=5050 || stateno=5100) && (prevstateno!=[5000,5199]) && random<500
value=5000,1+(random%2)
channel=0
ignorehitpause=1

[State -3, NoWalk after Parry]
type=assertspecial
trigger1= prevstateno=700
trigger1= stateno=0 && time<7
flag= nowalk

[State -3, collapse for cheap Ko]
type=changestate
triggerall= !alive
trigger1= (stateno=[5000,5030]) && ((prevstateno=[130,131]) || (prevstateno=[140,141]) || (prevstateno=[150,153]))
value=5130

[State -3, Super Finish EX]
type=helper
triggerall= winKO && !numhelper(7600) && !numhelper(7601) && Var(20) && roundstate=3
trigger1= (movehit=[1,4])
trigger1= var(23) := 20
helpertype=normal
stateno=7600
ID=7600
name="KO FX CVS"
ownpal=1
ignorehitpause=1
pausemovetime=65535
supermovetime=65535
size.proj.doscale = var(23)

[State -3, Super Finish CVS]
type=helper
triggerall= winKO && !numhelper(7600) && !numhelper(7601) && (stateno=[3000,3999]) && roundstate=3
triggerall= stateno!=3200 && stateno!=4000
trigger1= (stateno=3100 || stateno=3300 || stateno=3301) && (movehit=[1,4])
trigger1= var(23) := StateNo
trigger2= numhelper(3005)
trigger2= (helper(3005),movehit=[1,4])
trigger2= var(23) := 3005
trigger3= numhelper(3305)
trigger3= (helper(3305),movehit=[1,4])
trigger3= var(23) := 3301
helpertype=normal
stateno=7600
ID=7600
name="KO FX CVS"
ownpal=1
ignorehitpause=1
pausemovetime=65535
supermovetime=65535
size.proj.doscale = var(23)

[State -3, Super Finish SF3]
type=helper
triggerall= winKO && !numhelper(7600) && !numhelper(7601) && roundstate=3
trigger1= (stateno=3200 || stateno=4000) && (movehit=[1,4])
trigger1= var(23) := StateNo
helpertype=normal
stateno=7601
ID=7601
name="KO FX SF3"
ownpal=1
ignorehitpause=1
pausemovetime=65535
supermovetime=65535
size.proj.doscale = var(23)

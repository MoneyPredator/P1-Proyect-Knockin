; Hit by Push Down  ------------ 
[Statedef 1115080]
type    = L
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 1115080, pos fix]
type = posset
trigger1 = !time && PrevStateNo != 1115080
y = 0

[State 1115080, Locate the Attacker]
type = varset
trigger1 = !time && GetHitVar(Fall.Envshake.Ampl)
sysvar(2) = GetHitVar(Fall.Envshake.Ampl)

[State 1115080, 3] ;freez
type = ChangeAnim
trigger1 = 1
value = 5030 + 50*SelfAnimExist(5080)

[State 1115080, 8]
type = Explod
trigger1 = !Time
anim = F(60 + (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56)))
postype = none
pos = pos x + camerapos x, 0
facing = facing
sprpriority = ifelse (sysvar(1) <= Const720p(56), -10, 10)

[State 1115080, 9]
type = HitFallDamage
trigger1 = !time

[State 5100, 10]
type = PlaySnd
trigger1 = !time
value = F7, (sysvar(1) > Const720p(20)) + (sysvar(1) > Const720p(56))

[State 1115080, 5]
type = ChangeState
triggerall = anim = 5080
triggerall = HitOver && HitShakeOver
trigger1 = PlayerIDExist(sysvar(2)) = 0
trigger2 = PlayerIDExist(sysvar(2))
trigger2 = PlayerID(sysvar(2)),MoveType != A
value = 1115081

; Hit by Push Down (Exit) ------------ 
[Statedef 1115081]
type    = L
movetype= H
physics = N
velset = 0,0
sprpriority = 0

[State 1115081, 3]
type = ChangeAnim
trigger1 = !time
value = 5030 + 50*SelfAnimExist(5080)
elem = 2

[State 1115081]
type = SelfState
trigger1 = !animtime
trigger2 = time > 30
value = IFElse(Alive,5120,5150)

;------- Custom Hit State
; Air get-hit (shaking)
[Statedef 115020]
type    = A
movetype= H
physics = N
velset = 0,0

[State 115020, Fall]
type = HitFallSet
trigger1 = !time
value = 1
ignorehitpause = 1

[State 115020, 1] ;Anim for HIT_LIGHT to HIT_HARD
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) != [3,5]
value = ifelse((GetHitVar(airtype) = 1),5000,5010) + GetHitVar(animtype)

[State 115020, 2] ;Anim for HIT_BACK
type = ChangeAnim
trigger1 = Time = 0
trigger1 = GetHitVar(animtype) = [3,5]
value = 5030

[State 115020, 3] ;Anim for HIT_UP/HIT_DIAGUP (only if it exists)
type = ChangeAnim
trigger1 = Time = 0
trigger1 = (GetHitVar(animtype) = [4,5]) && (SelfAnimExist(5047 + GetHitVar(animtype)))
value = 5047 + GetHitVar(animtype) ;5051 - 4 + type

[State 115020, 4] ;Freeze anim
type = ChangeAnim
trigger1 = Time > 0
value = anim

[State 115020, 5]
type = SelfState
trigger1 = HitShakeOver
value = 5030

[State 115020, FFB Light]
type = ForceFeedback
trigger1 = anim = 5000
trigger2 = anim = 5010
persistent = 0
time = 6
waveform = square

[State 115020, FFB Medium]
type = ForceFeedback
trigger1 = anim = 5001
trigger2 = anim = 5011
persistent = 0
time = 8
waveform = sinesquare
ampl = 110,-1,-.3

[State 115020, FFB Hard]
type = ForceFeedback
trigger1 = anim = 5012
trigger2 = anim = 5002
trigger3 = anim = 5030
trigger4 = anim = [5051,5059]
persistent = 0
time = 15
waveform = sinesquare
ampl = 140

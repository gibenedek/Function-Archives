




















/*
HotstringScriptlet_Morse(){
Send,
(
p := InputMorse()
If (p = "0")
MsgBox Short press
Else If (p = "00")
MsgBox Two short pressesa
Else If (p = "01")
MsgBox Short+Long press
Else
MsgBox Press pattern %p%
Return
)
return
}


;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	
HotstringScriptlet_HO(){
Send,
(
KeyWait a, T0.5                 ; Wait 1/2 second for user to release "a" key
If ErrorLevel                   ; Still held down
While GetKeyState("a","p"){ ; While it is held down
Send b
Sleep 100
}
return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	
HotstringScriptlet_1XA(){
Send,
(
If (A_PriorKey = "")
{

}
return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	

HotstringScriptlet_1XH(){
Send,
(
KeyWait % InputDetectKey(), T0.5                 ; Wait 1/2 second for user to release "a" key
If ErrorLevel                   ; Still held down
While GetKeyState("a","p"){ ; While it is held down
Click
Send a
Sleep 100
}
Else                            ; They let go in time

return
)
return
} ;}


;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	

HotstringScriptlet_1XH_Alt(){
Send,
(
LongPress = 1000
keywait, % InputDetectKey()
if A_TimeSinceThisHotkey >= %LongPress%

else

return
)
return
} ;}


;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_2XO(){
Send,
(
if (A_PriorHotkey = A_ThisHotkey) && (A_TimeSincePriorHotkey < 400)

return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_2XP(){
Send,
(
keywait, % InputDetectKey()
keywait, % InputDetectKey(),D T0.2
If Errorlevel

Else

Return
)
return
} ;}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	
HotstringScriptlet_2XH(){
Send,
(
keywait, % InputDetectKey(), T0.5
If (ErrorLevel)
{

Return
}
else 
{
keywait, % InputDetectKey(), D T0.1
if (ErrorLevel)

else

}
keywait, % InputDetectKey()
return
)
return
} ;}



;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_3XP(){
Send,
(

)
return
}


;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_Toggle(){
Send,
(
T := !T
if T

Else

Return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_HoldRepeat(){
Send,
(
setKeyDelay, 50, 50
setMouseDelay, 50
while (getKeyState("lbutton", "P"))
{
send, {lbutton}
sleep, 100
}
return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_ToggleRepeat(){
Send,
(
SetTimer,, 100
return

::Toggle := !Toggle

:
If (!Toggle)
Return
Send a
return
)
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_Cycle(){
Send,
(
list= ; the list of keys and combos. comma separated.
stringsplit, list, list,`,
Counter = 0

::
Counter := (Counter=list0) ? (1) : (Counter+1)
send % list%counter%
return
)
return
}



;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

HotstringScriptlet_HoldCycle(){
Send,
(
list=a,b,c,{enter},string{click}    ; the list of keys and combos. comma separated. 
stringsplit, list, list,`,
Counter = 0

$F8::
    While GetKeyState("F8","P"){
        Counter := (Counter=list0) ? (1) : (Counter+1)
        Send % list%counter%
        Sleep 50
    }
return
)
return
}

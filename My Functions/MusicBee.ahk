#Persistent
;~ MusicBee_Activate()
;~ MusicBee_Dock()
;~ MusicBee_Search()
;~ MusicBee_Seek()
;~ MusicBee_SeekClose()
;~ MusicBee_SeekOpen()


MusicBee_Activate(){
if winexist("ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1")
{
			if winactive("ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1")
				WinMinimize, a
			else
				WinActivate ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1,,Preferences ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
		}
else
	{
		Run C:\[Data] Program Install Files\MusicBee\MusicBee.exe
		SetTitleMatchMode, 2
		Winwait, - MusicBee
		SetTitleMatchMode, 1

}
Wingetpos, MBx, MBy, MBw, MBh, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
If MBh > 50
	Send ^!+{up}
Sleep 100
Send ^!+{Right 2}
Sleep 100
Winhide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

MusicBee_Seek(){
	;~ detecthiddenwindows, on
if winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	Winhide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
else
	{
	Winshow, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
	WinActivate, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
	settimer, SeekKill, 100
		}
return

SeekKill:
sleep 50
if Winactive("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	return
else
	{
	WinHide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
	Settimer, SeekKill, Off
		}
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	
MusicBee_SeekOpen(){
Winshow, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
;~ if ! Winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	;~ Send ^!+{Right 2}
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]

MusicBee_SeekClose(){
if winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	WinHide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]	

MusicBee_Search(){
	Send ^!+{Left}
	WinActivate, Now Playing Assistant
	Winmove, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1, 1420,26,500,968
	settimer, SearchKill, 100
	return
	
SearchKill:
sleep 50
if Winactive("Now Playing Assistant")
	return
else
	{
	Winclose, Now Playing Assistant
	Settimer, SearchKill, Off
		}
return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]
	
MusicBee_Dock(){
Wingetpos, MBx, MBy, MBw, MBh, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
If MBh > 50
	{
		Winactivate, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
		Send ^!+{up}
		}
Return
}

;[XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX]



/*

[Song] - [Artist] - MusicBee
ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1

Now Playing Assistant
ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1

[No Title - Search Now Playing]
ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1

Preferences
ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1

ahk_exe MusicBee.exe
			
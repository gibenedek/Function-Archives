;~ MusicBee_Activate()
;~ MusicBee_Dock()
;~ MusicBee_Seek()
;~ MusicBee_Search()
;~ MusicBee_SeekClose()
;~ MusicBee_Seek()
;~ MusicBee_Always()
#Persistent



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
		Sleep 100
		Send ^!+{Right 2}
		Sleep 100
		Winhide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
		}
Wingetpos, MBx, MBy, MBw, MBh, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
If MBh > 50
	Send ^!+{up}
return
}



MusicBee_Seek(){
	;~ detecthiddenwindows, on
if winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	Winhide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
else
	Winshow, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
return
}

	
MusicBee_SeekOpen(){
Winshow, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
;~ if ! Winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	;~ Send ^!+{Right 2}
return
}


MusicBee_SeekClose(){
if winexist("ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1")
	WinHide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
}
	

MusicBee_Search(){
	Send ^!+{Left}
	return
}

	
MusicBee_Dock(){
Wingetpos, MBx, MBy, MBw, MBh, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
If MBh > 50
	{
		Winactivate, ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1
		Send ^!+{up}
		}
Return
}


MusicBee_Always(){
settimer, mbalways, 100
return


MBAlways:
if winExist("ahk_class WindowsForms10.Window.8.app.0.2bf8098_r7_ad1")
return
else
		{
		Run C:\[Data] Program Install Files\MusicBee\MusicBee.exe
		SetTitleMatchMode, 2
		Winwait, - MusicBee
		SetTitleMatchMode, 1
		Sleep 100
		Send ^!+{up}
		Sleep 100
		Send ^!+{Right 2}
		sleep 100
		Winhide, ahk_class WindowsForms10.Window.20008.app.0.2bf8098_r7_ad1
		}
return
}

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
			
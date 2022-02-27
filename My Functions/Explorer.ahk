Scite_SaveAs()
Scite_SaveAs(){
	If WinActive("ahk_class SciTEWindow")
	{
		Send ^+s
WinWaitActive, ahk_class #32770
Sleep 1000
ExplorerSetPath("C:\Users\giben\Documents\AutoHotkey\Lib")
Sleep 50
ControlFocus, Edit1, ahk_class #32770
return
}
}
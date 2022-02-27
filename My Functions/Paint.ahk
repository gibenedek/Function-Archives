#persistent
settitlematchmode, 2
!s::		WinMenuSelectItem, Paint, File, Save As





Paint_SaveAs(){
settitlematchmode, 2
;~ If WinActive("- Paint")
	{
		WinMenuSelectItem, ahk_class MSPaintApp, File, Save As
		WinWaitActive, ahk_class #32770
		Sleep 50
		ExplorerSetPath("C:\[Data] My Files\Pictures")
		Sleep 50
		ControlFocus, Edit2, ahk_class #32770
		}
return
}
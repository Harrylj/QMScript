[General]
SyntaxVersion=2
BeginHotkey=121
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=6e79f81e-e20d-4937-bf9b-472b73efa693
Description=后台脚本呀
Enable=0
AutoRun=0
[Repeat]
Type=0
Number=1
[SetupUI]
Type=2
QUI=
[Relative]
SetupOCXFile=
[Comment]

[Script]
Hwnd = Plugin.Window.MousePoint()

i=0   
While i=0   
    // Msgbox "我停不下来啦!!快住手"
    Delay 1000
    Call Plugin.Bkgnd.KeyPress(Hwnd, 97)
	Call Plugin.Bkgnd.KeyPress(Hwnd, 118)

	Call Plugin.Bkgnd.KeyPress(Hwnd, 65)
	Call Plugin.Bkgnd.KeyPress(Hwnd, 65)
	Call Plugin.Bkgnd.KeyPress(Hwnd, 65)
Wend   
//当循环条件成立的时候，反复执行循环体



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
MacroID=bdbafda1-d468-4e54-a022-a56ac46fd15c
Description=大漠后台测试2
Enable=1
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
set dm = createobject("dm.dmsoft")
ver = dm.Ver()
If len(ver) = 0 Then
    MessageBox "创建对象失败,检查系统是否禁用了vbs脚本权限"
    EndScript
End If

// 现在是可以获取截图，但是获取不到后台按键
// 之前原版的是可以获取到按键，但是获取不到颜色变化


// 截图
// set dm = createobject("dm.dmsoft")
dm.SetPath "c:"
hwnd = 139056
// hwnd = dm.GetMousePointWindow()
// messagebox hwnd
// dm_ret = dm.BindWindow(hwnd,"normal","windows","normal",0)
dm_ret = dm.BindWindow(hwnd,"dx2","windows","windows",0)


If dm_ret = 0 Then 
	MessageBox "绑定失败"
	EndScript
End If
dm_ret = dm.Capture(0, 0, 2000, 2000, "screen.bmp")
dm_ret = dm.UnBindWindow()
// EndScript

// 键盘
Delay  1000
// set dm = createobject("dm.dmsoft")
//hwnd = dm.GetMousePointWindow()
hwnd = 139056
// dm_ret = dm.BindWindow(hwnd,"normal","windows","normal",0)
dm_ret = dm.BindWindow(hwnd, "dx2", "normal", "normal", 0)

dm.KeyPress 68
dm_ret = dm.IsBind(hwnd)

Delay  100
dm_ret = dm.UnBindWindow()

// messagebox hwnd
EndScript
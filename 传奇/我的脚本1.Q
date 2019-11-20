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
MacroID=c68d9aa6-178a-40cf-b29c-947a20612274
Description=我的脚本1
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

x = 300 
y = 300
bgColor = "ffffff"
// 弹窗
// MessageBox x-5
// 开始到结束间隔29数字 x-29为死亡

// 有蓝有血 移动再飞随机 不移动

IfColor x, y, bgColor, 0 Then
Delay 1000
MessageBox 1
Else
End If


// 减少血，加血

IfColor x-2, y, bgColor, 1 Then
Delay 1000
MessageBox 2
Else
End If


// 半血，招骷髅
IfColor x-14, y, bgColor, 1 Then
Delay 1000
MessageBox 3
Else
End If


// 没血，回城6,地牢5

IfColor x-22, y, bgColor, 1 Then
Delay 1000
MessageBox 4
Else
End If


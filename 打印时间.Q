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
MacroID=deab8bd5-807e-432c-a538-274d3ac99f7f
Description=打印时间
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
时 = Hour(now) & "时"
分 = Minute(now)
秒 = Second(now)
//获取到分钟后先对变量“分”进行加减
分 =分+40
//运算后再和字符串连接 输出即可
分 = 分 & "分 "
Delay 400
SayString 时
Delay 100
SayString 分
Delay 100
SayString 秒

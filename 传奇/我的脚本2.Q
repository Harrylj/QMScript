[General]
SyntaxVersion=2
BeginHotkey=122
BeginHotkeyMod=0
PauseHotkey=0
PauseHotkeyMod=0
StopHotkey=123
StopHotkeyMod=0
RunOnce=1
EnableWindow=
MacroID=76ce8ba2-7c92-4d9f-8bc1-f2fab8fc6730
Description=我的脚本2
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
// 使用方法，快捷键ctrl+h 全局替换点（x,y）值，值为最右上的血条颜色

// 1随机 2加血 5地牢 F4隐身 F7治疗术 F8召唤

Delay 10
BeginThread A
Delay 10
BeginThread B
Delay 10
BeginThread C
Delay 10
BeginThread D

// 子程序不支持调用外部参数

// 有蓝有血 移动再飞随机 不移动
Sub A()
    While true
        x = 444
        y = 555
        bgColor = "ffffff"
        // 颜色 = GetPixelColor(x,y)
        // 秒 = Second(now)
        // SayString 颜色
        // SayString 秒
        IfColor x, y, bgColor, 0 Then
        	// MessageBox "有蓝有血"
        	Delay 2000
			MoveTo 380, 200
			LeftClick 1
			// 随机间隔时间
			Delay 10000
			KeyPress "1", 1
        Else
        End If
        Delay 500
    Wend
End Sub

// 减少血，加血
Sub B()
    While true
        x = 444
        y = 555
        bgColor = "ffffff"
        IfColor x - 3, y, bgColor, 1 Then
        	// MessageBox "减少血"
        	Delay 1000
			MoveTo 380, 200
			KeyPress "F7", 1
			LeftClick 1
			Delay 8000
			KeyPress "F7", 1
        Else
        End If
        Delay 500
    Wend
End Sub

// 半血，招骷髅
Sub C()
 	While true
        x = 444
        y = 555
        bgColor = "ffffff"
        IfColor x - 12, y, bgColor, 1 Then
        	// MessageBox "半血"
        	Delay 100
			MoveTo 380, 200
			LeftClick 1
			Delay 100
			KeyPress "1", 1
			Delay 100
			KeyPress "F7", 1
			Delay 1000
			KeyPress "F8", 1
			Delay 2000
			KeyPress "F7", 1
			Delay 2000
			KeyPress "F7", 1
        Else
        End If
        Delay 500
    Wend
End Sub

// 没血，地牢5
Sub D()
 While true
        x = 444
        y = 555
        bgColor = "ffffff"
        IfColor x - 22, y, bgColor, 1 Then
        	// MessageBox "没血，回城"
        	Delay 1000
			MoveTo 680, 200
			Delay 1000
			KeyPress "5", 1
			Delay 2000
			KeyPress "F8", 1
			MoveTo 380, 200
			LeftClick 1
			Delay 2000
			KeyPress "F7", 1
			Delay 2000
			KeyPress "F7", 1
			Delay 2000
			KeyPress "F7", 1
			Delay 20000
			KeyPress "1", 1
        Else
        End If
        Delay 500
    Wend
End Sub


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
MacroID=befbf596-7df4-4308-84e7-435be69b996c
Description=大漠测试
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
// 首先打包dm.dll和RegDll.dll到附件,当然如果你还有其它资源(字库，图片等)也可以一并打包

 

// 这个need_ver作为本脚本需要使用的插件版本. 如果要换插件时，记得更改这个值.

need_ver = "3.1233"

 

// 插件需要用到atl系统库,有些XP精简系统会把atl.dll精简掉. 为了防止注册失败，这里手动注册一下atl.dll

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 atl.dll /s"
set ws=nothing

 

// 释放附件>>>>>>>>>>>>>>>>>>>

// 这里选择c盘的test-_game作为插件的基本目录 也就是SetPath对应的目录。所以所有资源都释放在此目录.

PutAttachment "c:\test_game","*.*"

// 这里要用到RegDll来注册插件，所以必须释放到Plugin. 但是切记不能把dm.dll释放到Plugin.那会导致插件失效.

PutAttachment ".\Plugin" ,"RegDll.dll"

// 插件注册开始>>>>>>>>>>>>>>>>>>>

// 下面开始注册插件,先尝试用RegDll来注册.这里必须使用绝对路径。以免有别人把dm.dll释放在系统目录.造成版本错误.

// Call Plugin.RegDll.Reg("c:\test_game\dm.dll") 

 

// 这里判断是否注册成功

set dm = createobject("dm.dmsoft")

ver = dm.Ver()

if ver <> need_ver then

// 先释放先前创建的dm

set dm = nothing

   // 再尝试用regsvr32 来注册. 这里必须使用绝对路径。以免有别人把dm.dll释放在系统目录.造成版本错误.

set ws=createobject("Wscript.Shell")
ws.run "regsvr32 c:\test_game\dm.dll /s"
set ws=nothing
Delay 1500  

 

// 再判断插件是否注册成功

set dm = createobject("dm.dmsoft")

ver = dm.Ver()

if ver <> need_ver then

// 这时，已经确认插件注册失败了。 弹出一些调试信息，以供分析.

messagebox "插件版本错误,当前使用的版本是:"&ver&",插件所在目录是:"&dm.GetBasePath()

messagebox "请关闭程序,重新打开本程序再尝试"

    endscript

  end if

end if
/*
// MessageBox 1
//鼠标
set dm = createobject("dm.dmsoft")
hwnd = dm.GetMousePointWindow()
dm_ret = dm.BindWindow(hwnd,"normal","windows","normal",0)
dm.MoveTo 100,100
Delay  100
dm.LeftClick
Delay  100
dm_ret = dm.UnBindWindow()
// EndScript
*/
// 截图
set dm = createobject("dm.dmsoft")
dm.SetPath "c:"
hwnd = 1120164
// hwnd = dm.GetMousePointWindow()
// dm_ret = dm.BindWindow(hwnd,"normal","windows","normal",0)
dm_ret = dm.BindWindow(hwnd,"dx","windows","windows",0)
dm_ret = dm.Capture(0,0,2000,2000,"screen.bmp")
dm_ret = dm.UnBindWindow()
// EndScript

// 键盘
Delay  1000
set dm = createobject("dm.dmsoft")
//hwnd = dm.GetMousePointWindow()
hwnd = 1120164
// dm_ret = dm.BindWindow(hwnd,"normal","windows","normal",0)
dm_ret = dm.BindWindow(hwnd, "dx", "windows", "windows", 0)

dm.KeyPress 68
dm_ret = dm.IsBind(hwnd)

Delay  100
dm_ret = dm.UnBindWindow()


// messagebox hwnd
EndScript
// KeyPress "1", 1
messagebox 2



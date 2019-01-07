;Uninstall device drivers for when my cat wants to sleep on my keyboard
;Only works when device manager isn't already open for now

F10::
if not A_IsAdmin
{
   Run, *RunAs "%A_ScriptFullPath%"
   ExitApp
}

Run, devmgmt.msc
WinWait Device Manager
ControlSend, SysTreeView321, {tab}, Device Manager
DownCount:=2

Loop, 2{

   Send {Down 12}
   Send {Right}
   Send {Down %DownCount%}
   Send {Enter}
   WinWait, HID Keyboard Device Properties ;Might be better to use specific Win commands in docs
   Send +{TAB}
   Send {Right}
   Send {TAB 3}
   Send {Enter}
   WinWait, Uninstall Device
   Send {Enter}
   Sleep, 1500
   DownCount:=MyNumber-1

}
ExitApp
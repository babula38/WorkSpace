;^a::
    ; MsgBox, Wow!
;    Run, code.exe
; MsgBox, There are
; WinActivate, [ WinTitle, WinText, ExcludeTitle, ExcludeText]
; WinWaitActive, Untitled - Notepad
; Send, 7 lines{!}{Enter}
; SendInput, inside the CTRL{+}J hotkey.
;return

^1::
    ;WinActivate, ahk_exe code.exe
    if WinExist("ahk_exe Code.exe")
    {
        WinActivate
        ; Use the window found by WinExist.
        ; WinMaximize ; Same as above.
        ; Send, Some text.{Enter}
    }
    else
    {
       Run, "C:\Users\babula.pradhan\AppData\Local\Programs\Microsoft VS Code\Code.exe"
       ;WinActivate OutputVarPID
       ;WinMaximize OutputVarPID
    }
return

^2::
    WinActivate, ahk_exe Teams.exe
return

^3::
    ; WinWait Outlook (PWA) - Mail - Babula Pradhan - Outlook
    ; WinActivate ; Use the window found by WinWai
    if WinExist("Outlook (PWA) - Mail - Babula Pradhan - Outlook")
    {
        WinActivate ; Use the window found by WinExist.
        ; WinMaximize ; Same as above.
        ; Send, Some text.{Enter}
    }
return

^e::
    if WinExist("ahk_class CabinetWClass")
    {
        WinActivate
        ;MsgBox, cool
        Send ^t
    }
return

;rCtrl to open visual studio - rCtrl+0
>^0::
    ;WinActivate, ahk_exe code.exe
    if WinExist("ahk_exe devenv.exe")
    {
        WinActivate ; Use the window found by WinExist.
        ; WinMaximize ; Same as above.
        ; Send, Some text.{Enter}
    }
    else
    {
       Run, devenv.exe
    }
return

;rCtrl to note pad - rCtrl+9
>^9::
    ;WinActivate, ahk_exe code.exe
    if WinExist("ahk_class Notepad++")
    {
        WinActivate ; Use the window found by WinExist.
        ; WinMaximize ; Same as above.
        ; Send, Some text.{Enter}
    }
    else
    {
       Run, C:\Personal\MyTools\npp.8.4.4.portable.x64\notepad++.exe
    }
return

;rCtrl to open visual studio - rCtrl+0
>^o::
    ;WinActivate, ahk_exe code.exe
    if WinExist("ahk_exe OpenVPNConnect.exe")
    {
        StartOpenVPNProcess()
    }
    else
    {
       Run, "C:\Program Files (x86)\OpenVPN Connect\OpenVPNConnect.exe"
       while(not WinExist("ahk_exe OpenVPNConnect.exe")){
            Sleep, 2000
            ;MsgBox TryingToOpen
        }
        ;MsgBox FirstOpen
       StartOpenVPNProcess()
    }

    StartOpenVPNProcess(){
        WinActivate ; Use the window found by WinExist.
        ; WinMaximize ; Same as above.
        ; Send, Some text.{Enter}
        CoordMode, Click, Window
        Click, 463 422
        Sleep, 4000

        PixelGetColor, color, 152, 434, RGB
        ;MsgBox %color%
        while (color != 0x85AF00)
        {
          Sleep, 2000
          PixelGetColor, color, 152, 434, RGB
          ;MsgBox Inside
          ;MsgBox %color%
        }
        ;MsgBox beforeMinimize
        WinMinimize
        ;MsgBox AfetrMinimize
    }
return
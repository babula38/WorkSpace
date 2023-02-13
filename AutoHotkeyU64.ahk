#SingleInstance Force

HoverScreenShot(){
    LocalAppData := "C:\Users\" A_UserName "\AppData\Local"
    SavedScreenshots := LocalAppData "\Packages\MicrosoftWindows.Client.CBS_cw5n1h2txyewy\TempState\ScreenClip"

    if !picture := FileSelect(,SavedScreenshots,,"*.png"){
        ;return false;
    }

    gHover:=Gui("AlwaysOnTop +ToolWindow -Caption")
    gcPicture := gHover.AddPicture(,picture)
    WinSetTransColor(0xF0F0F0, gHover.Hwnd)

    gHover.Show("AutoSize NA")

    gcPicture.OnEvent("DoubleClick", (guiCtrlObj,*)=>guiCtrlObj.Gui.Destroy())
    gHover.OnEvent("Escape", (guiObj)=> guiObj.Destroy())
    gcPicture.OnEvent("Click", (guiCtrlObj,*)=>PostMessage(0xA1,2,,,guiCtrlObj.Gui.Hwnd))

    ;return true;
}
;HoverScreenShot()
^1::
    {
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
            Run("C:\Users\babula.pradhan\AppData\Local\Programs\Microsoft VS Code\Code.exe")
            ;WinActivate OutputVarPID
            ;WinMaximize OutputVarPID
        }
    }

^2::
    {
        WinActivate("ahk_exe Teams.exe")
    }

^3::
    { ; WinWait Outlook (PWA) - Mail - Babula Pradhan - Outlook
        ; WinActivate ; Use the window found by WinWai
        if WinExist("Outlook (PWA) - Mail - Babula Pradhan - Outlook")
        {
            WinActivate ; Use the window found by WinExist.
            ; WinMaximize ; Same as above.
            ; Send, Some text.{Enter}
        }
    }
^e::
    {
        if WinExist("ahk_class CabinetWClass")
        {
            WinActivate
            ;MsgBox, cool
            Send "^t"
        }
    }

    ;rCtrl to open visual studio - rCtrl+0
>^0::
    {
        ;WinActivate, ahk_exe code.exe
        if WinExist("ahk_exe devenv.exe")
        {
            WinActivate ; Use the window found by WinExist.
            ; WinMaximize ; Same as above.
            ; Send, Some text.{Enter}
        }
        else
        {
            Run("devenv.exe")
        }
    }

    ;rCtrl to note pad - rCtrl+9
>^9::
    {
        ;WinActivate, ahk_exe code.exe
        if WinExist("ahk_class Notepad++")
        {
            WinActivate ; Use the window found by WinExist.
            ; WinMaximize ; Same as above.
            ; Send, Some text.{Enter}
        }
        else
        {
            Run("C:\Personal\MyTools\npp.8.4.4.portable.x64\notepad++.exe")
        }
    }

    ;rCtrl to open visual studio - rCtrl+0
>^o::
    {
        ;WinActivate, ahk_exe code.exe
        if WinExist("ahk_exe OpenVPNConnect.exe")
        {
            StartOpenVPNProcess()
        }
        else
        {
            Run("C:\Program Files (x86)\OpenVPN Connect\OpenVPNConnect.exe")
            WinWaitActive("OpenVPN Connect",,4)
            ;Sleep 5000
            ;MsgBox TryingToOpen
            ;MsgBox FirstOpen
            StartOpenVPNProcess()
        }

        StartOpenVPNProcess(){
            WinActivate("OpenVPN Connect")
            ; WinMaximize ; Same as above.
            ; Send, Some text.{Enter}
            CoordMode "Mouse", "Window"
            Click 463, 422
            Sleep 4000

            color:=PixelGetColor(152, 434)
            ;MsgBox %color%
            while(color != 0x85AF00)
            {
                Sleep 5000
                color:=PixelGetColor(152, 434)
                ;MsgBox Inside
                ;MsgBox %color%
                ;MsgBox beforeMinimize
            }
            WinMinimize("OpenVPN Connect")
            ;MsgBox AfetrMinimize
        }
    }

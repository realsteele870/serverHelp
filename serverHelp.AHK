^g::
Send, A
Sleep 2000
Send, {Enter}
Send, setenv bootflags 0x1000
Send, {Enter}
Sleep 2000
Send, saveenv
Send, {Enter}
Sleep 2000
Send, boot
Send, {Enter}
Return


^h::
Send, cd "network"
Send, {Enter}

send, ll
Send, {Enter}
Sleep 1000
SendRaw, xdelete "userTable5"
Send, {Enter}
Sleep 10000
SendRaw, xdelete "userTable7"
Send, {Enter}
Sleep 10000
send, ll
Send, {Enter}
Sleep 1000
send, reboot
Send, {Enter}
Return

^j::
Send, {Enter}
Send, setenv bootflags 0x0
Send, {Enter}
Sleep 5000
send, saveenv
Send, {Enter}
Sleep 5000
send, boot
Send, {Enter}
return

^k::
send, admin
Send, {Enter}
Sleep 1000
send, switch
Send, {Enter}
Sleep 1000
send, rm/flash/certified/boot.cfg
Send, {Enter}
Sleep 10000
send, rm /flash/working/boot.cfg
Send, {Enter}
Sleep 10000
send, show ni
Send, {Enter}
return

^l::
Send, stack set slot{Space}
Input, userInput,,{enter}
send, %userInput%
Send, {space}saved-slot 1
Send, {Enter}
send, y
Send, {Enter}
return

^m::
send, admin
Send, {Enter}
Sleep 1000
send, switch
Send, {Enter}
Sleep 1000
send, write terminal
Send, {Enter}

Return
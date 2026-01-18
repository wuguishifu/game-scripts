running := false
stopRequested := false
inLoop := false

F3::
if (!running) {
    running := true
    stopRequested := false
    SetTimer, LoopAction, 10
}
return

F4::
stopRequested := true
return

LoopAction:
if (inLoop)
    return

inLoop := true

; --- Action sequence ---
Send, {f down}
Sleep, 1000
Send, {f up}

Sleep, 1800

Send, {Esc down}
Sleep, 30
Send, {Esc up}

; --- End-of-iteration check ---
if (stopRequested) {
    running := false
    stopRequested := false
    SetTimer, LoopAction, Off
}

inLoop := false
return

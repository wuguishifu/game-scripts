#Persistent
ClickActive := false
SetTimer, ClickMouse, Off
Return

^j::
ClickActive := !ClickActive
If (ClickActive) {
	SetTimer, ClickMouse, 2050
} else {
	SetTimer, ClickMouse, Off
}
Return

ClickMouse:
Click
Return

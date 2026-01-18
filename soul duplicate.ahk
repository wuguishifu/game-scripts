CoordMode, Mouse, Client
SetMouseDelay, -1

running := false

F1::  ; start
if (running)
  return
running := true

while (running) {
  ; --- iteration start ---

  Click, 2400, 1570
  Sleep, 50
  Click, 2650, 1570
  Sleep, 200

  Click, 2300, 475
  Sleep, 200
  Click, 1050, 1540
  Sleep, 200
  Click, 1902, 1083
  Sleep, 200
  Click, 906, 1130
  Sleep, 200

  Click, 2400, 1570
  Sleep, 50
  Click, 2650, 1570
  Sleep, 200

  Click, 2800, 470
  Sleep, 200
  Click, 2800, 470

  ; --- iteration end ---
}
return

F2::  ; graceful stop (finishes iteration)
running := false
return

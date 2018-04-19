#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon
#SingleInstance Force

WAWDBtoggle:=True

^<+#D::
WAWDBtoggle:=!WAWDBtoggle

<+#D::
Send, *Where are we dropping, boys?*{Enter}
Sleep, 1000

if WAWDBtoggle {

    Random, WAWDB, 0, 30

    ifequal WAWDB, 0, Send, *We're dropping in* **Junk Junction**_, boys{!}{_} {Enter}
    ifequal WAWDB, 1, Send, *We're dropping in* **Haunted Hills**_, boys{!}{_} {Enter}
    ifequal WAWDB, 2, Send, *We're dropping in* **Pleasant Park**_, boys{!}{_} {Enter}
    ifequal WAWDB, 3, Send, *We're dropping in* **North Anarchy Acres (F-2)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 4, Send, *We're dropping in* **Wailing Woods**_, boys{!}{_} {Enter}
    ifequal WAWDB, 5, Send, *We're dropping in* **Tomato Town**_, boys{!}{_} {Enter}
    ifequal WAWDB, 6, Send, *We're dropping in* **West Loot Lake (D-4)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 7, Send, *We're dropping in* **North Tilted Towers (D-5)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 8, Send, *We're dropping in* **Snobby Shores**_, boys{!}{_} {Enter}
    ifequal WAWDB, 9, Send, *We're dropping in* **Dusty Depot**_, boys{!}{_} {Enter}
    ifequal WAWDB, 10, Send, *We're dropping in* **Lonely Lodge**_, boys{!}{_} {Enter}
    ifequal WAWDB, 11, Send, *We're dropping in* **Retail Row**_, boys{!}{_} {Enter}
    ifequal WAWDB, 12, Send, *We're dropping in* **Greasy Grove**_, boys{!}{_} {Enter}
    ifequal WAWDB, 13, Send, *We're dropping in* **Shifty Shafts**_, boys{!}{_} {Enter}
    ifequal WAWDB, 14, Send, *We're dropping in* **Salty Springs**_, boys{!}{_} {Enter}
    ifequal WAWDB, 15, Send, *We're dropping in* **Moisty Mire**_, boys{!}{_} {Enter}
    ifequal WAWDB, 16, Send, *We're dropping in* **Fatal Fields**_, boys{!}{_} {Enter}
    ifequal WAWDB, 17, Send, *We're dropping in* **Flush Factory**_, boys{!}{_} {Enter}
    ifequal WAWDB, 18, Send, *We're dropping in* **Lucky Landing**_, boys{!}{_} {Enter}
    ifequal WAWDB, 19, Send, *We're dropping in* **North of Tomato Town (G-2/G-3)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 20, Send, *We're dropping in* **West of Anarchy Acres (D-2)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 21, Send, *We're dropping in* **West of Tilted Towers (C-5)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 22, Send, *We're dropping in* **West of Retail Row (G-6)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 23, Send, *We're dropping in* **North of Retail Row (H-4/H-5)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 24, Send, *We're dropping in* **North-West of Fatal Fields (E-8/F-8)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 25, Send, *We're dropping in* **North-East of Flush Factory (E-9)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 26, Send, *We're dropping in* **North-West of Moisty Mire (H-8)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 27, Send, *We're dropping in* **North of Moisty Mire (I-7)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 28, Send, *We're dropping in* **North of Wailing Woods (I-2)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 29, Send, *We're dropping in* **North of Flush Factory (D-8)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 30, Send, *We're dropping in* **North of Pleasant Park (C-2)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 31, Send, *We're dropping in* **South Tilted Towers (D-6)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 32, Send, *We're dropping in* **South of Snobby Shores (A-6)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 33, Send, *We're dropping in* **South Anarchy Acres (F-3)**_, boys{!}{_} {Enter}
    ifequal WAWDB, 34, Send, *We're dropping in* **East Loot Lake (E-4)**_, boys{!}{_} {Enter}
    Sleep, 1000

} Else {

    Random, WAWDBLetter, 65, 74
    WAWDBLetter:= Chr(WAWDBLetter)
    Random, WAWDB, 1, 10

    Send, *We're dropping at* **(%WAWDBLetter%{-}%WAWDB%)**_, boys{!}{_} {Enter}
    Sleep, 1000

}
return
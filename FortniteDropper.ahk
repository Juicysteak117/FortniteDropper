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

    WAWDBList:= Object()
    WAWDBList.Push("Junk Junction", "Haunted Hills", "Pleasant Park", "North Anarchy Acres (F-2)", "Wailing Woods", "Tomato Town", "North of Tomato Town (G-3)", "West Loot Lake (D-4)", "North Tilted Towers (D-5)", "Snobby Shores", "Dusty Divot", "Lonely Lodge", "Retail Row", "Greasy Grove", "Shifty Shafts", "Salty Springs", "Moisty Mire", "Fatal Fields", "Flush Factory", "Lucky Landing", "Risky Reels", "West of Anarchy Acres (D-2)", "West of Tilted Towers (C-5)", "North of Retail Row (H-4/H-5)", "North-West of Fatal Fields (E-8/F-8)", "North-East of Flush Factory (E-9)", "North-West of Moisty Mire (H-8)", "North of Moisty Mire (I-7)", "North of Wailing Woods (I-2)", "North of Flush Factory (D-8)", "North of Pleasant Park (C-2)", "South Tilted Towers (D-6)", "South of Snobby Shores (A-6)", "South Anarchy Acres (F-3)", "East Loot Lake (E-4)", "West of Dusty Divot (F-5)", "West of Risky Reels (G-2)", "Risky Reels")
    Random, WAWDB, 1, % WAWDBList.MaxIndex()
    Send, % "_We're dropping at_ **" WAWDBList[WAWDB] "**_, boys{!}_ {Enter}"
    Sleep, 1000

} Else {

    Random, WAWDBLetter, 65, 74
    WAWDBLetter:= Chr(WAWDBLetter)
    Random, WAWDB, 1, 10

    Send, _We're dropping at_ **(%WAWDBLetter%{-}%WAWDB%)**_, boys{!}_ {Enter}
    Sleep, 1000

}
return

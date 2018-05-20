#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#NoTrayIcon
#SingleInstance Force

WAWDBtoggle:=True
WAWDBList:=Object()
URLDownloadToFile, https://raw.githubusercontent.com/Juicysteak117/FortniteDropper/master/DropList.txt, WAWDBLocationsList.txt
Loop, Read, WAWDBLocationsList.txt
	{
	WAWDBList.Push(A_LoopReadLine)
	}
FileDelete, WAWDBLocationsList.txt

^<+#D::
WAWDBtoggle:=!WAWDBtoggle

<+#D::
Send, *Where are we dropping, boys?*{Enter}
Sleep, 1000
if WAWDBtoggle {
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
Random, WAWDBNewSeed, 1, 2147483647
Random, , %WAWDBNewSeed%
return

^<+#S::
WAWDBtoggle:=!WAWDBtoggle

<+#S::
if WAWDBtoggle {
    Random, WAWDB, 1, % WAWDBList.MaxIndex()
    MsgBox, 0, Where are you dropping?, % "You're dropping at " WAWDBList[WAWDB] "!"
    Sleep, 1000
} Else {
    Random, WAWDBLetter, 65, 74
    WAWDBLetter:= Chr(WAWDBLetter)
    Random, WAWDB, 1, 10
    MsgBox, 0, Where are you dropping?, You're dropping at (%WAWDBLetter%-%WAWDB%)!
    Sleep, 1000
}
Random, WAWDBNewSeed, 1, 2147483647
Random, , %WAWDBNewSeed%
return

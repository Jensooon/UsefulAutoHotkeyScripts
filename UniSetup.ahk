#Requires AutoHotkey v2.0
#SingleInstance
#Include filePaths.ahk

; Function to launch VS Code
LaunchOneNote() {
    if FileExist(oneNotePath) {
        Run(oneNotePath)
    } else {
        MsgBox("One note executable not found. Please check the path.")
    }
}

; Function to open GitHub in the default browser
OpenGitHub() {
    Run githubUrl
}

; Main function to launch both
LaunchVSCodeAndGitHub() {
    LaunchOneNote()
    Sleep 1000  ; Wait for 1 seconds
    OpenGitHub()
}

; Hotkey to trigger the script (Ctrl+Alt+Shift+U)
^!+u:: LaunchVSCodeAndGitHub()
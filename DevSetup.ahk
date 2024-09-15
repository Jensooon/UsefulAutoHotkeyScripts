#Requires AutoHotkey v2.0
#SingleInstance

; Define the paths (modify these as needed)
vsCodePath := "C:\Users\YourUsername\AppData\Local\Programs\Microsoft VS Code"
githubUrl := "https://github.com/"

; Function to launch VS Code
LaunchVSCode() {
    if FileExist(vsCodePath) {
        Run(vsCodePath)
    } else {
        MsgBox("VS Code executable not found. Please check the path.")
    }
}

; Function to open GitHub in the default browser
OpenGitHub() {
    Run githubUrl
}

; Main function to launch both
LaunchVSCodeAndGitHub() {
    LaunchVSCode()
    Sleep 1000  ; Wait for 1 seconds
    OpenGitHub()
}

; Hotkey to trigger the script (Ctrl+Alt+Shift+G)
^!+g:: LaunchVSCodeAndGitHub()
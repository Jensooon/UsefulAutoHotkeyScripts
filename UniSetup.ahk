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
OpenWebsites() {
    Run moodleUrl
    Run officeUrl
}

; Main function to launch both
LaunchUniSetup() {
    LaunchOneNote()
    Sleep 1000  ; Wait for 1 seconds
    OpenWebsites()
}

; Hotkey to trigger the script (Ctrl+Alt+Shift+U)
^!+u:: LaunchUniSetup()
### [Windows Terminal](https://github.com/microsoft/terminal)

#### Install

Download using the [GitHub .zip download](https://github.com/dracula/windows-terminal/archive/master.zip) option

In the `profile.json` settings file for Windows Terminal, find the `schemes` section and add the the following to the list:

```json
{
    "background" : "#282A36",
    "black" : "#21222C",
    "blue" : "#BD93F9",
    "brightBlack" : "#6272A4",
    "brightBlue" : "#D6ACFF",
    "brightCyan" : "#A4FFFF",
    "brightGreen" : "#69FF94",
    "brightPurple" : "#FF92DF",
    "brightRed" : "#FF6E6E",
    "brightWhite" : "#FFFFFF",
    "brightYellow" : "#FFFFA5",
    "cyan" : "#8BE9FD",
    "foreground" : "#F8F8F2",
    "green" : "#50FA7B",
    "name" : "Dracula",
    "purple" : "#FF79C6",
    "red" : "#FF5555",
    "white" : "#F8F8F2",
    "yellow" : "#F1FA8C"
}
```

Example:

```json
    "schemes" : 
    [
        {
            "background" : "#282A36",
            "black" : "#21222C",
            "blue" : "#BD93F9",
            "brightBlack" : "#6272A4",
            "brightBlue" : "#D6ACFF",
            "brightCyan" : "#A4FFFF",
            "brightGreen" : "#69FF94",
            "brightPurple" : "#FF92DF",
            "brightRed" : "#FF6E6E",
            "brightWhite" : "#FFFFFF",
            "brightYellow" : "#FFFFA5",
            "cyan" : "#8BE9FD",
            "foreground" : "#F8F8F2",
            "green" : "#50FA7B",
            "name" : "Dracula",
            "purple" : "#FF79C6",
            "red" : "#FF5555",
            "white" : "#F8F8F2",
            "yellow" : "#F1FA8C"
        },
        {
            ...
        }
    ]
```

## Result Configuration File With Enabled Profile

```json
        {
            ...
        }
    "profiles" : 
    [
        {
            "acrylicOpacity" : 0.5,
            "closeOnExit" : true,
            "colorScheme" : "Dracula",
            "commandline" : "powershell.exe",
            "cursorColor" : "#FFFFFF",
            "cursorShape" : "bar",
            "fontFace" : "Consolas",
            "fontSize" : 10,
            "guid" : "{61c54bbd-c2c6-5271-96e7-009a87ff44bf}",
            "historySize" : 9001,
            "icon" : "ms-appx:///ProfileIcons/{61c54bbd-c2c6-5271-96e7-009a87ff44bf}.png",
            "name" : "Windows PowerShell",
            "padding" : "0, 0, 0, 0",
            "snapOnInput" : true,
            "startingDirectory" : "%USERPROFILE%",
            "useAcrylic" : false
        },
        {
            "acrylicOpacity" : 0.75,
            "closeOnExit" : true,
            "colorScheme" : "Campbell",
            "commandline" : "cmd.exe",
            "cursorColor" : "#FFFFFF",
            "cursorShape" : "bar",
            "fontFace" : "Consolas",
            "fontSize" : 10,
            "guid" : "{0caa0dad-35be-5f56-a8ff-afceeeaa6101}",
            "historySize" : 9001,
            "icon" : "ms-appx:///ProfileIcons/{0caa0dad-35be-5f56-a8ff-afceeeaa6101}.png",
            "name" : "cmd",
            "padding" : "0, 0, 0, 0",
            "snapOnInput" : true,
            "startingDirectory" : "%USERPROFILE%",
            "useAcrylic" : true
        }
    ],
    "schemes" : 
    [
        {
            "background" : "#282A36",
            "black" : "#21222C",
            "blue" : "#BD93F9",
            "brightBlack" : "#6272A4",
            "brightBlue" : "#D6ACFF",
            "brightCyan" : "#A4FFFF",
            "brightGreen" : "#69FF94",
            "brightPurple" : "#FF92DF",
            "brightRed" : "#FF6E6E",
            "brightWhite" : "#FFFFFF",
            "brightYellow" : "#FFFFA5",
            "cyan" : "#8BE9FD",
            "foreground" : "#F8F8F2",
            "green" : "#50FA7B",
            "name" : "Dracula",
            "purple" : "#FF79C6",
            "red" : "#FF5555",
            "white" : "#F8F8F2",
            "yellow" : "#F1FA8C"
        },
        {
            ...
        }
```
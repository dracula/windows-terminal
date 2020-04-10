### [Windows Terminal](https://github.com/microsoft/terminal)

#### Download

Download using the [GitHub .zip download](https://github.com/dracula/windows-terminal/archive/master.zip) option

#### Install

Start Windows Terminal and click on the down arrow symbol `˅` from menu bar. This will open a drop down menu from which select Settings option. Alternatively use `Ctrl + ,` to open Settings directly.

In the `profile.json` settings file for Windows Terminal, find the `schemes` section and paste the content of `dracula.json`.

Example:

```json
"schemes": [
    {
        "name" : "Dracula",
        "background" : "#272935",
        "black" : "#21222C",
        "blue" : "#BD93F9",
        "cyan" : "#8BE9FD",
        "foreground" : "#F8F8F2",
        "green" : "#50FA7B",
        "purple" : "#FF79C6",
        "red" : "#FF5555",
        "white" : "#F8F8F2",
        "yellow" : "#FFB86C",
        "brightBlack" : "#6272A4",
        "brightBlue" : "#D6ACFF",
        "brightCyan" : "#A4FFFF",
        "brightGreen" : "#69FF94",
        "brightPurple" : "#FF92DF",
        "brightRed" : "#FF6E6E",
        "brightWhite" : "#F8F8F2",
        "brightYellow" : "#FFFFA5"
    }
]
```

#### Activate

Once the color scheme has been defined, it's time to enable it. Find the `profiles` section and add a `colorScheme` value to the default profile.

Example:

```json
"profiles": {
    "defaults": {
        "colorScheme" : "Dracula"
    }
}
```
### [Windows Terminal](https://github.com/microsoft/terminal)

#### Download

Download using the [GitHub `.zip` download](https://github.com/dracula/windows-terminal/archive/master.zip) option.

#### Install
##### Easy Install
Run the `Add-TerminalProfileDracula.ps1` PowerShell script to install the colorscheme via [Windows Terminal JSON Fragments](https://docs.microsoft.com/en-us/windows/terminal/json-fragment-extensions#where-to-place-the-json-fragment-files)

> **Note**  
> To allow the execution of the installation script without having to relax the [Execution Policy][ps-execpolicy] of the entire system, you can unblock the `Add-TerminalProfileDracula.ps1` file using the [Unblock-File][ps-unblockfile] PowerShell cmdlet.
>
> ```powershell
> Unblock-File .\Add-TerminalProfileDracula.ps1
> ```

[ps-execpolicy]: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.security/set-executionpolicy?view=powershell-7.2
[ps-unblockfile]: https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.utility/unblock-file?view=powershell-7.2

##### Manual Install

Start Windows Terminal and click on the down arrow symbol `˅` from menu bar. This will open a drop down menu from which select Settings option. Alternatively use `Ctrl + ,` to open Settings directly.

In the bottom left click `Open JSON Settings`

![image](https://github.com/user-attachments/assets/1fef6e24-ea28-4f06-8bb1-06e32294d9f1)

In the `settings.json` settings file for Windows Terminal, find the `schemes` section and paste the content of `dracula.json`.

Example:

```json
"schemes": [
    {
        "name": "Dracula",
        "cursorColor": "#F8F8F2",
        "selectionBackground": "#44475A",
        "background": "#282A36",
        "foreground": "#F8F8F2",
        "black": "#21222C",
        "blue": "#BD93F9",
        "cyan": "#8BE9FD",
        "green": "#50FA7B",
        "purple": "#FF79C6",
        "red": "#FF5555",
        "white": "#F8F8F2",
        "yellow": "#F1FA8C",
        "brightBlack": "#6272A4",
        "brightBlue": "#D6ACFF",
        "brightCyan": "#A4FFFF",
        "brightGreen": "#69FF94",
        "brightPurple": "#FF92DF",
        "brightRed": "#FF6E6E",
        "brightWhite": "#FFFFFF",
        "brightYellow": "#FFFFA5"
    }
]
```

##### Activate

Once the color scheme has been defined, it's time to enable it. Find the `profiles` section and add a `colorScheme` value to the default profile.

Example:

```json
"profiles": {
    "defaults": {
        "colorScheme" : "Dracula"
    }
}
```

If the profiles are listed as below:

```jsonc
"profiles": [
    // list of profiles
]
```

Change it to:

```jsonc
"profiles": {
    "defaults": {
      "colorScheme": "Dracula"
    },
    "list": [
      // list of profiles
    ]
  },
```

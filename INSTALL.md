### [Windows Terminal](https://github.com/microsoft/terminal)

#### Download

Download using the [GitHub `.zip` download](https://github.com/dracula/windows-terminal/archive/master.zip) option.

#### Install

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

#### Download, Install and Activate with PowerShell
Open PowerShell and run the following command
```
# Function to customize Terminal with Dracula theme and font
function Update-Terminal {
    # Get the settings.json path
    $settingsPath = "$env:LOCALAPPDATA\Packages\Microsoft.WindowsTerminal_8wekyb3d8bbwe\LocalState\settings.json"

    # Read the current settings
    $settings = Get-Content -Path $settingsPath -Raw | ConvertFrom-Json

    # Download and parse the Dracula color scheme
    try {
        $draculaScheme = Invoke-RestMethod -Uri "https://raw.githubusercontent.com/dracula/windows-terminal/refs/heads/master/dracula.json"
        Write-Host "Successfully downloaded Dracula color scheme"
    } catch {
        Write-Error "Failed to download Dracula color scheme: $_"
        exit 1
    }

    # Check if schemes property exists, if not create it
    if (-not $settings.schemes) {
        $settings | Add-Member -Type NoteProperty -Name "schemes" -Value @()
    }

    # Check if Dracula scheme already exists
    $draculaExists = $settings.schemes | Where-Object { $_.name -eq "Dracula" }

    if (-not $draculaExists) {
        # Add Dracula scheme
        $settings.schemes += $draculaScheme
        Write-Host "Added Dracula color scheme"
    } else {
        Write-Host "Dracula color scheme already exists"
    }

    # Check if profiles.defaults exists, if not create it
    if (-not $settings.profiles.defaults) {
        $settings.profiles | Add-Member -Type NoteProperty -Name "defaults" -Value @{}
    }
   
    # Set Dracula as the default color scheme
    $settings.profiles.defaults.colorScheme = "Dracula"
    Write-Host "Set Dracula as default color scheme"

    # Convert back to JSON and save
    $settings | ConvertTo-Json -Depth 32 | Set-Content -Path $settingsPath

    Write-Host "Settings have been updated successfully"
}
Update-Terminal
```

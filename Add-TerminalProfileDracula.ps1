<#
.SYNOPSIS
    Installs the Dracula theme Fragment for Windows Terminal.

.DESCRIPTION
    This function downloads the Dracula color scheme and creates a fragment file for Windows Terminal.
    The fragment file sets the Dracula color scheme as the default color scheme.

.EXAMPLE
    Add-TerminalProfileDracula

    This command installs the Dracula theme Fragment for Windows Terminal.

.NOTES
    The fragment file is created in the LocalAppData directory for Windows Terminal.
    After running this function, restart Windows Terminal and select or set the theme in your profile.
#>
function Add-TerminalProfileDracula {
    # Define the path for the fragment file
    $fragmentPath = "$env:LOCALAPPDATA\Microsoft\Windows Terminal\Fragments\Dracula\dracula.json"

    # Ensure the directory exists
    $fragmentDir = [System.IO.Path]::GetDirectoryName($fragmentPath)
    if (-not (Test-Path -Path $fragmentDir)) {
        New-Item -ItemType Directory -Path $fragmentDir -Force
    }

    # Download and parse the Dracula color scheme
    try {
        $draculaScheme = Invoke-RestMethod -Uri "https://raw.githubusercontent.com/dracula/windows-terminal/refs/heads/master/dracula.json"
        Write-Host "Successfully downloaded Dracula color scheme"
    } catch {
        Write-Error "Failed to download Dracula color scheme: $_"
        exit 1
    }

    # Create the fragment JSON content
    $fragmentContent = @{
        schemes = @($draculaScheme)
        profiles = @{
            defaults = @{
                colorScheme = "Dracula"
            }
        }
    }

    # Convert to JSON and save to the fragment file
    $fragmentContent | ConvertTo-Json -Depth 32 | Set-Content -Path $fragmentPath

    Write-Output "Fragment has been created successfully at $fragmentPath"
    Write-Output "Restart Windows Terminal and then select or set the theme in your profile"
}

# Call the function to install the Dracula theme Fragment
Add-TerminalProfileDracula

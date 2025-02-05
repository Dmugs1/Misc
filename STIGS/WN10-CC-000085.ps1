<#
.SYNOPSIS
    This PowerShell script sets a registry key to ensure ELAM is configured to prevent boot drivers.

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 02-04-2025
    Last Modified   : 02-04-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000085

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-CC-000085.ps1 
#>

# Ensure ELAM is configured to prevent boot drivers
function Ensure-RegistryKeyExists {
    param ([string]$Path, [string]$Name, [object]$Value)
    if (-Not (Test-Path $Path)) {
        New-Item -Path $Path -Force
    }
    if (-Not (Get-ItemProperty -Path $Path -Name $Name -ErrorAction SilentlyContinue)) {
        New-ItemProperty -Path $Path -Name $Name -Value $Value -PropertyType String -Force
    } else {
        Set-ItemProperty -Path $Path -Name $Name -Value $Value
    }
}

Ensure-RegistryKeyExists -Path "HKLM:\SYSTEM\CurrentControlSet\Policies\EarlyLaunch" -Name "DriverLoadPolicy" -Value 3

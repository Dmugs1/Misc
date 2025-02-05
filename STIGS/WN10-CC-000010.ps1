<#
.SYNOPSIS
    This PowerShell script sets a registry key to disable slide shows on the lock screen..

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 02-04-2025
    Last Modified   : 02-04-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000010

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-CC-000010.ps1 
#>

# WN10-CC-000010 - Disable slide shows on lock screen
# Ensure display of slide shows on lock screen is disabled
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

Ensure-RegistryKeyExists -Path "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Personalization" -Name "NoLockScreenSlideshow" -Value 1

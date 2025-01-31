<#
.SYNOPSIS
    This PowerShell script enables Structured Exception Handling Overwrite Protection (SEHOP) .

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-31-2025
    Last Modified   : 01-31-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000150

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-00-000150.ps1 
#>

# WN10-00-000150 - Enable SEHOP
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

Ensure-RegistryKeyExists -Path "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager\kernel" -Name "DisableExceptionChainValidation" -Value 0

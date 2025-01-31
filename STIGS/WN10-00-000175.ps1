<#
.SYNOPSIS
    This PowerShell script disables the Secondary Logon service on Windows 10

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-31-2025
    Last Modified   : 01-31-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000175

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE

    PS C:\> .\STIG-ID-WN10-00-000175.ps1 
#>

# Disable Secondary Logon service
Set-Service -Name "seclogon" -StartupType Disabled
Stop-Service -Name "seclogon"

<#
.SYNOPSIS
    This PowerShell script sets the period before the bad logon counter is reset to 15 minutes

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-31-2025
    Last Modified   : 01-31-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000015

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE

    PS C:\> .\STIG-ID-WN10-AC-000015.ps1 
#>

# Configure period before the bad logon counter is reset to 15 minutes
net accounts /lockoutwindow:15

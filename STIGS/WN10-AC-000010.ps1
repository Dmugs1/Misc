<#
.SYNOPSIS
    This PowerShell script sets the number of allowed bad logon attempts to 3

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-31-2025
    Last Modified   : 01-31-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AC-000010

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE

    PS C:\> .\STIG-ID-WN10-AC-000010.ps1 
#>

# Configure allowed bad logon attempts to 3 or less
net accounts /lockoutthreshold:3

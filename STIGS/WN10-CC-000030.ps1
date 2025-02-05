<#
.SYNOPSIS
    This PowerShell script sets a registry key to configure system to Prevent ICMP redirects
.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 02-04-2025
    Last Modified   : 02-04-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000030

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-CC-000030.ps1 
#>

# Ensure system is configured to prevent ICMP redirects
function Ensure-RegistryKeyExists {
    param ([string]$Path, [string]$Name, [object]$Value)
    if (-Not (Test-Path $Path)) {
        New-Item -Path $Path -Force
    }
    if (-Not

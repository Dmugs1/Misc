<#
.SYNOPSIS
    This PowerShell script disables the Windows PowerShell 2.0 feature.

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-31-2025
    Last Modified   : 01-31-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-00-000155

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-00-000155.ps1 
#>
# Disable PowerShell 2.0 feature
Disable-WindowsOptionalFeature -Online -FeatureName MicrosoftWindowsPowerShellV2Root

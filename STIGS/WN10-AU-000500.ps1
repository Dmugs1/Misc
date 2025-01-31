<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB).

.NOTES
    Author          : Daniel Muguercia
    LinkedIn        : linkedin.com/in/danielmug/
    GitHub          : github.com/Dmugs1
    Date Created    : 01-30-2025
    Last Modified   : 01-30-2025
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000500

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : 
    PowerShell Ver. : 

.USAGE
  
    PS C:\> .\STIG-ID-WN10-AU-000500.ps1 
#>


# Define the registry path and value
$registryPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\EventLog\Application"
$propertyName = "MaxSize"
$propertyValue = 0x8000  # 32768 in decimal

# Check if the registry path exists, create it if it doesn't
if (-not (Test-Path $registryPath)) {
    Write-Output "Registry path not found. Creating: $registryPath"
    New-Item -Path $registryPath -Force | Out-Null
}

# Check if the registry value exists
$currentValue = Get-ItemProperty -Path $registryPath -Name $propertyName -ErrorAction SilentlyContinue

if ($null -eq $currentValue) {
    Write-Output "Registry value not found. Setting $propertyName to $propertyValue."
} else {
    Write-Output "Registry value exists. Updating $propertyName to $propertyValue."
}

# Set the registry value
Set-ItemProperty -Path $registryPath -Name $propertyName -Value $propertyValue -Type DWord

# Confirm the change
Write-Output "Registry value set: $registryPath\$propertyName = $propertyValue"

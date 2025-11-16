if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) {  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force -ea SilentlyContinue };
#Create Directory
if (-not (Test-Path "C:\Temp\StartMenuLeft"))
{
    Mkdir "C:\Temp\StartMenuLeft" -Force
}

#Create Tag file for Detection
Set-Content -Path "C:\Temp\StartMenuLeft\StartMenuLeft.ps1.tag" -Value "Installed"

# Reg2CI (c) 2022 by Roger Zander
if((Test-Path -LiteralPath "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced") -ne $true) 
{  New-Item "HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced" -force -ea SilentlyContinue };
New-ItemProperty -LiteralPath 'HKCU:\Software\Microsoft\Windows\CurrentVersion\Explorer\Advanced' -Name 'TaskbarAl' -Value "0x00000000" -PropertyType DWord -Force -ea SilentlyContinue;
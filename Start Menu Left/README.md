# Windows 11 Start Menu Left side
This script is designed to ease your users transition over to windows 11 giving them a familiar location to find the start menu on the bottom left of the taskbar instead of the default centre location.
Package the script using the Intune Content Prep Tool and deploy as a win32 application.

### Install Execution 
powershell.exe install.ps1

### Detection:
File or Folder exists
Path: C:\Temp\StartMenuLeft\
File: StartMenuLeft.ps1.tag

### Assignments
This script is designed to be assigned at the user level. however, this can be assigned at the device level and any user logging into the device will have the script executed.
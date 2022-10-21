#Registry :

Registry is also exposed as drive.
The Windows Registry stores much of the settings and information for hardware devices,
software programs, user preferences, and operating-system configurations.

main classes and sub keys and subkeys

HKCU :
#lass object to associate pdf file extensions

######################################################
HKCU & H_users:

which stores the current user information.
also we can change sytem personolize information.
Execution Policy: CurrentUser – SAVED in HKCU registry

##################################
HKLM:

all application related
need to stop all autostarting application

Computer\HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Run


############################################
how to create registry ?

regedit -> click on any class ->choose path -> click new

 cd HKLM:

 Get-ChildItem HKLM:
 New-Item -Path HKLM:\SOFTWARE -Name "devopstraining"
 Get-Item -Path HKLM:\SOFTWARE\7-zip
 Remove-Item -Path HKLM:\SOFTWARE\7-zip
 Rename-Item -Path HKLM\software\test -NewName test2

 To create new item property :

 New-ItemProperty -Path HKLM:\SOFTWARE\devopstraining -Name "Trainer" -Value "indu" -PropertyType string
 Set-ItemProperty
 Clear-ItemProperty
 Remove-ItemProperty
 Rename-ItemProperty

 #always take back up and make any changes.




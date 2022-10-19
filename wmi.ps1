##wmi: windows managment instrumentaion is a framework built in to the windows oS

#Its like application tow rite Infra automation scripts.

## To get machine data and to gather some information we use WMI.

#WMi Folder structure is like
#root ->namesapces(cim2,ccm,rsop,security) -> classes(windows_logicaldisk,win32_operatingsystem)

#at end of the day we use only clasess

#Windows Management Instrumentation (WMI)
#PowerShell can tap in to the WMI classes of another computer as well your own, given you are using administrative credentials
Ex. Get-WmiObject Win32_OperatingSystem will list all details of the OS on your machine
#List all Namespaces : gwmi -namespace "root" -class "__Namespace" | Select Name 
#List all classes :  Get-WmiObject -Namespace root\cimv2 -list 

#Pull computer serial number
Gwmi Win32_Bios | select SerialNumber
#Reboot a machine
(Gwmi win32_OperatingSystem –comp | server).reboot()
#Gather Logical Disk Space information
#Gwmi Win32_LogicalDisk
#Show running processes
Gwmi Win32_Process


#To list all namespaces :

Get-WmiObject -Namespace "root"  -Class "__Namespace" |select Name


#to list all classes under that namespace:
Get-WmiObject -Namespace  'root\cimv2' -list

Win32_SystemTrace                   {}                   {SECURITY_DESCRIPTO...
Win32_ProcessTrace                  {}                   {ParentProcessID, P...
Win32_ProcessStartTrace             {}                   {ParentProcessID, P...
Win32_ProcessStopTrace              {}                   {ExitStatus, Parent...
Win32_ThreadTrace                   {}                   {ProcessID, SECURIT...
Win32_ThreadStartTrace              {}                   {ProcessID, SECURIT...
Win32_ThreadStopTrace               {}                   {ProcessID, SECURIT...
Win32_ModuleTrace                   {}                   {SECURITY_DESCRIPTO...
Win32_ModuleLoadTrace               {}                   {DefaultBase, FileN...
Win32_PowerManagementEvent          {}                   {EventType, OEMEven...
Win32_ComputerSystemEvent           {}                   {MachineName, SECUR...
Win32_ComputerShutdownEvent         {}                   {MachineName, SECUR...




#to query class information ::

Get-WmiObject -Class win32_logicaldisk -Namespace 'root\cimv2'

Get-WmiObject -Class Win32_ModuleTrace -Namespace 'root\cim2'

Get-WmiObject -Class win32_computersystem |fl *



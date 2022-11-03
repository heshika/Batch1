#remotemgmt :

#ipaddress
#userid
#password
# enable-psremoting -force
# winrm enumerate winrm/config/listener 

$remoteip="54.197.21.196"
Test-NetConnection -ComputerName $remoteip
Test-WSMan -ComputerName $remoteip
Test-NetConnection -ComputerName $remoteip -Port 135
Enable-PSRemoting -Force

#credential object
$cred=Get-Credential

################################################
#WMI-Remote

#get-wmiobject

Get-WmiObject -Class win32_service -ComputerName $remoteip -Credential $cred

#get-ciminstance
#create a session object
$remoteip="100.26.224.114"

$cimobject = New-CimSession -ComputerName $remoteip -Credential $cred

#use session object query

$service=Get-CimInstance -CimSession $cimobject -ClassName win32_service
$os=Get-CimInstance -CimSession $cimobject -ClassName win32_operatingsystem
$patch=Get-CimInstance -CimSession $cimobjectq -ClassName win32_quickfixengineering
$bios =Get-CimInstance -CimSession $cimobject -ClassName win32_bios

####################################################

# PSSESSION

# which create a remote shell on machine
# No need to take RDP
# console will be on remote session
# Exit : To come out from session
# get session and remove sessions
# Its just interactive console
$pssessionobj= New-PSSession -ComputerName $remoteip -Credential $cred
Enter-PSSession $pssessionobj

 or

Enter-PSSession -ComputerName $remoteip -Credential $cred

# get session
Get-PSSession

#remove -pssession by Id or by sessionobject
Remove-PSSession -Session $pssessionobj
Remove-PSSession -id 3

####################################################


# Invoke-command

# To gather data from remote machines
# To run multiple lines of code
# we need scrpit block
# to locally execute .$codetoexecute
# code only runs on remote machine and nothing comes back
# To bring back the results need to use return and only can retrun one item



$codetoexecute= {
  $os=Get-WmiObject -Class win32_operatingsystem
  get-service | export-csv c:\services.csv  -NoTypeInformation

}

# locally
.$codetoexecute
Invoke-Command -ScriptBlock $codetoexecute

#remotely

Invoke-Command -ComputerName $remoteip -Credential $cred -ScriptBlock $codetoexecute

# Using return :

$codetoexecute= {
  $os2=Get-WmiObject -Class win32_operatingsystem
  get-service | export-csv c:\services.csv  -NoTypeInformation
  return $os2

}

Invoke-Command -ComputerName $remoteip -Credential $cred -ScriptBlock $codetoexecute




assigment ?

write script to create new directory and files  and zip it remote machine?

Create newlocal account and add to administartors group


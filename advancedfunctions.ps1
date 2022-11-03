# advanced function
# cmdletbinidng to add parameters in function or automatically displayed under paramters.

function get-appdata{
[cmdletbinding()]
param(
  [string]$hostname,
  [pscredential]$remotecreds
  )
$osinfo =Get-CimInstance Win32_OperatingSystem
$version= $osinfo.Version
$serialnumber=$osinfo.SerialNumber
$biosinfo=(Get-CimInstance -ClassName win32_bios).manufacturer
$patch=(Get-CimInstance -ClassName win32_quickfixengineering |Sort-Object -Property InstalledOn |Select-Object -Last 1).Installedon

# PScustomobject
 $object=[pscustomobject]@{
 Name= $hostname
 version =$version
 serialnumber =$serialnumber
 biosinfo=$biosinfo
 patchstatus=$patch
}
return $object
}
get-appdata -hostname 34.224.95.98 -remotecreds $creds

#to create Pscredentials in cmd prompt

$pwd= ConvertTo-SecureString "YOUR PASSWORD" -AsPlainText -Force
$credObj= New-Object System.Management.Automation.PSCredential ("YOUR USERNAME", $secpasswd)




#mandatory parameter :
#parameter block
## It asks you to supply credentials

function get-appdata{
[cmdletbinding()]
param(
  [string][parameter(mandatory=$true)]$hostname,
  [pscredential][parameter(mandatory=$true)]$remotecreds
  )
$osinfo =Get-CimInstance Win32_OperatingSystem
$version= $osinfo.Version
$serialnumber=$osinfo.SerialNumber
$biosinfo=(Get-CimInstance -ClassName win32_bios).manufacturer
$patch=(Get-CimInstance -ClassName win32_quickfixengineering |Sort-Object -Property InstalledOn |Select-Object -Last 1).Installedon

# PScustomobject
 $object=[pscustomobject]@{
 Name= $hostname
 version =$version
 serialnumber =$serialnumber
 biosinfo=$biosinfo
 patchstatus=$patch
}
return $object
}
get-appdata


#verbose
# To print what happening in the background while running function,whcih is useful for debugging
# To print messages

function get-appdata{
[cmdletbinding()]
param(
  [string][parameter(mandatory=$true)]$hostname,
  [pscredential][parameter(mandatory=$true)]$remotecreds
  )
  Write-Verbose "machine to query :$hostname"
$osinfo =Get-CimInstance Win32_OperatingSystem
$version= $osinfo.Version
$serialnumber=$osinfo.SerialNumber
$biosinfo=(Get-CimInstance -ClassName win32_bios).manufacturer
$patch=(Get-CimInstance -ClassName win32_quickfixengineering |Sort-Object -Property InstalledOn |Select-Object -Last 1).Installedon

# PScustomobject
 $object=[pscustomobject]@{
 Name= $hostname
 version =$version
 serialnumber =$serialnumber
 biosinfo=$biosinfo
 patchstatus=$patch
}
return $object
}
$hostname="34.224.95.98"
get-appdata -hostname $hostname -remotecreds $creds -Verbose



#parameter validation
#

function get-vmdetails{

[cmdletbinding()]
param(
   [string][parameter(mandatory=$true)][validatelength(10,15)]$vmname,
   [int][validaterange(10,15)]$count,
   [validateset('enable','disable')]$action
   
 )

 write-host "vmname is $vmname" -ForegroundColor green
}

get-vmdetails -vmname 'vmnamenewone' -count 10

for loop 

foreach loop;

$serviclist ="winrm","wmansvc","wscsvc","wscsvc"

foreach($service in $serviclist){ 

$servicestatus =(Get-Service -Name $service).Status
 "servicestatus of $service is $servicestatus"|Out-File "c:\users\Indrani m\samplestatus.txt" -Append
}



how to write data to a file?

"devops class"|Out-File "c:\users\Indrani m\sampletest.txt" -Append


$iplist="192.168.75.1","www.google.com","192.168.88.1","172.20.10.14","192.168.10.37"


foreach($ip in $iplist{
$result=Test-Connection -ComputerName 192.168.75.1 -quiet
write-host "testconnection status of $ip is $result"

}

Test-Connection -ComputerName 192.168.75.1 -quiet

#quiet : used for display command output true or false
Test-Connection -ComputerName www.google.com -quiet
Test-Connection -ComputerName 172.20.10.14 -quiet


switch : similar to if -elseif loop

reach to bangalore

$a =$null
$a=Read-Host -Prompt "enter one number" 
if($a -gt 10){write-host "$a gt than 10"}
elseif($a -gt 20){"$a gt than 20"}
elseif($a -gt 30){"$a gt than 30"}
else{nothing "matched"}


if($a -gt 10)
{
  "hello"
}


$a=5
if($a -gt 10)
{
  "hello"
}

[int]$a=Read-Host -Prompt "enter num"
if($a -gt 10){write-host "$a gt than 10"}
elseif($a -gt 20){"$a gt than 20"}
elseif($a -gt 30){"$a gt than 30"}
else{"nothing matched"}


always takes more time.

[int]$a=Read-Host -Prompt "enter num"
switch($a){
{$a -gt 10}{write-host "$a gt than 10"}
{$a -gt 20}{"$a gt than 20"}
{$a -gt 30}{"$a gt than 30"}
default {"nothing match"}
}

$domain="test"
switch($domain){
"prod"{write-host "my domain is  prod"}
"test"{write-host "my domain is test"}
default {"no domain matched"}
}

installing some application symantec anti virus installing it.

$exitcode=Start-Process .\ntuser.ini
$exitcode=Get-Service -Name "ALG"
switch($exitcode){
   0{Write-Host "install is successfull"}
   1{write-host "installtion failed"}
   3102{write-host "needs reboot"}
   1604{Write-Host "error"}
   default {write-host "unknown error " -force red}
}































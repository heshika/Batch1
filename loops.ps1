for : increment fixed number of times

syntax:
for (<initialization>; < termination cond.>; < count>) {
	<code>
}

basic example: 1
for($i=0;$i -le 10;$i++)
{
write-host "doing something" -ForegroundColor yellow
write-host "$i" -ForegroundColor green
start-sleep -Seconds 3

}

2.


for($i=0;$i -le 10;$i++)
{
write-host "***********" -ForegroundColor yellow
#write-host "$i" -ForegroundColor green
#start-sleep -Seconds 3

}

3.To print some patterns

for($i=0;$i -le 5;$i++)
{
write-host "$a"
$a =$a+ "*"
}

real time examples :

1.Get the files and folders of list of students

$filepath="C:\users\Indrani M\documents\names.txt"
$names=get-content -path $filepath
for($i=0;$i -lt $names.Length;$i++){

Get-Content -Path "c:\users\Indrani M\documents\$($names[$i])\config.txt"
}


assignment : Get all stopped services and loop through all and try to start services

foreach:

Go throug each element

$students="parimla","maruthi","thanuja"

foreach($user in $students){
 write-host "user is $user"

}

1. To check particular machine is online or not

$list=get-content -Path D:\ipaddress.txt
foreach($ip in $iplist){
$test=test-connection -ComputerName $ip -Quiet
if($true){
Write-Host "$ip is online"
}
else 
{
Write-Host "$ip is offline"
}
}

assingment : get all services and display the status and output to file and send me email

$services="wsearch","winrm","BITS","appinfo"
foreach($service in $services)
{

$servicestatus=(get-service -Name "$service" |Select-Object status).status
write-host "servicestatus of the service $service is $servicestatus"
"$service status is $servicestatus" |Out-File "c:\users\Indrani m\sample.txt" -Append
}

switch : similar to if-elseif

$exitcode=0
switch($exitcode){
   0{Write-Host "install is successfull"}
   1{write-host "installtion failed"}
   3102{write-host "needs reboot"}
   1604{Write-Host "error"}
   default {write-host "unknown error " -force red}
}

$a= 20
switch($a){
 0{write-host "a greater than 20"}
 1{write-host "a is graeter than 30"}
 default{"nothing matched"}
}

$a=30
switch($a){
{$a -ge 50} {write-host "hello"}
}


while loop : As long as condition is true it will get executed
non-terminated loop.
1.
$a =10;
while($a -lt 20){
 write-host "$a is less than 20 " -ForegroundColor green
}

realtime:  always make sure service is running

while($(Get-Service -Name BITS).Status -eq "Running")
  {
     write-host "BITS is running as long as service is running"


  }

  2.
  while($true)
  {
   "which always run no terminartion condition an dmake sure you have endinh"
   break;
  }

  note:To stop the execution we always can use break statement

  3

  while((get-date).Minute -eq 50)
  {
   get-date
  }

  example : close the counter for issuing tickets for particular time period
  year end sale ends,after certain time period.


  ######do -while 

 $a=30

  do {
    Write-Output "Hello Devops engineers"
    $a++

  }while($a -lt 30)
  #eexcutes as long as condition is true, which executes atleast once

  ##diff between while and do -while

  ###do-until
$a=29
  do{
   Write-Output "Hello Devops engineers"
    $a--
}until($a -lt 30)

##executes as long as condition is false
## one round of execution is guarantee


exampl: executes until server started.

#break :

##stop execution if something matches
$list=get-content -Path "C:\Users\Indrani M\ipaddress.txt"

foreach($computer in $list){
## stop execution when www string matces
if($computer -like "www*"){ break}
  Write-Host "$computer" -ForegroundColor green
  
}



#continue :
##skips the paritucular iteration



foreach($computer in $list){
## stop execution when www string matces

if($computer -like "www*"){continue}
  Write-Host "$computer" -ForegroundColor green

}






















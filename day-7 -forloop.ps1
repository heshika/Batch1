for loop :

repeation 

for(condition){}

for(intialization;termination condition;<count)
{
  copy file from one location to another location

  c:users\indrani m \test to c:\users\desktop
}





0;0

for($i=10;$i -ge 5;$i++)
{
 write-host "the value of i is $i"
 Start-Sleep -Seconds 3
}




i=0;0 -le 5;1
i=1;1 -le 5;2
i=2;2 -le 5;3
i=3;3 -le 5;4
i=4;4 -le 5;5
i=5;5 -le 5;6
i=6;6 -le 5


$a="*"
$b="*"
$a + $b


$a ="devops"
$b ="training"

$a+$b

$a ="*"
$a++

$a + "*"

$a ="1"

for($i=0;$i -le 10;$i++){
 
#Write-Host "devops training" -ForegroundColor yellow
#write-host "print value of i is $i" -ForegroundColor Green
#Start-Sleep -Seconds  2
##copying file
#write-host " $i attempt of copying file "
#Copy-Item -Path 'C:\Users\Indrani M\test' -Destination 'C:\Users\Indrani m\Documents'
write-host "$a"
$a= $a + "1"

}



how to print pattern 

*
**
***
*****
******
*******


@
@@
@@@
@@@@
@@@@@


$a ="@"

for($i=0;$i -le 10;$i++){
write-host "$a"
$a= $a + "@"

}


how to find given number is even or odd number ?


foreach: array of elements 

$students ="thanuja","parimal","maruthi"
foreach($student in $students)
{
write-host "my student $student got placed in devops job"
start-sleep -Seconds 3
}

$servicenames ="VSS","wcmsvc","wsearch","wlansvc"
foreach($service in $servicenames)
{
$servicestatus=Get-Service -Name $service |Select-Object  status
write-host " $service status is $servicestatus"
}






























































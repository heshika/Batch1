<#
get-date
Get-Service|Where-Object{$_.Name -eq "wsearch"}

IF:

$a =10;

when ever condition true ,if loop will get executed.

example 1:

if($a -gt 5)
{
 write-host " value is greater than 10"

}

example 2:

$servicename =Get-Service|Where-Object{$_.Name -eq "chrome"}

if($servicename.Name -eq "chrome")
{
write-host "service   existis on my machine"
}

example 3:

if($false)
{
 write-host "condition is true"
}


Else :

If condtion is not satificified it will get excuted



$timenew=get
if($timenew)
{
write-host " time is $time"

}
else{

write-host "time is nothing"
}

$a=10
if($a -gt 20)
{
write-host "$a is greater than 20"
}
else{Write-Host "$a is not greater than 20"}

if-else:



$time=$null
$time=get-date
if($time)
{write-host " my time is $time"}
else{write-host "my time is not exuted"}



Read-Host : user can input the values

assigmnet : how to find client entered number is even or odd


10

10/2   =0 (even)

5/2  = 1 (odd)





$num=Read-host -Prompt "enter number"
if($num%2 -eq 0){
write-host "number $num  is even"
}
else {
write-host "number $num is odd"
}


#else-if
#$a =50

900

$a =$null
$a=Read-host -Prompt "enter some value"


if($a -le 60){ write-host "$a is less  than or equals  60"}

elseif($a -ge 60){write-host "$a is less than 60"}

elseif($a -eq 60){write-host "$a is equal to 900"}

elseif($a -lt 60){write-host "$a is graeter than or equakls to 600"}

else{
write-host "nothing matched"
}

#>



for :






















































































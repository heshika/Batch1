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

$servicename =Get-Service|Where-Object{$_.Name -eq "wsearch"}

if($servicename.Name -contains "wsearch")
{
write-host "service $($servicename.name)  existis on my machine"
}

example 3:

if($false){write-host "condition is true"}
else{write-host "Condition is false"}

if($true){write-host "condition is true"}
else{write-host "condition is false"}

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

$time =get-date
If($time){write-host “today time is $time”}
Else{write-host “the command for getting time failed or not executed”}




$num=Read-host -Prompt "enter number"
if($num%2 -eq 0){
write-host "number $num  is even"
}
else {
write-host "number $num is odd"
}


#else-if
#$a =50


$a=99
if($a -le 60){ write-host "$a is less  than or equals  60"}
elseif($a -gt 60){write-host "$a is greater 60"}
elseif($a -eq 60){write-host "$a is equal to 60"}
elseif($a -lt 60){write-host "$a is graeter than or equals to 60"}
else{write-host "nothing matched"}

#>


$a=20;
if($a -gt 10){write-host "$a is greater than 10" -ForegroundColor green}
elseif($a -gt 20){write-host "$a greater than 20" -ForegroundColor green}
elseif($a -gt 30){write-host "$a greater than 30 " -ForegroundColor green}
elseif($a -gt 40){write-host "$a greater than 40" -ForegroundColor green}
else{write-host "nothing matched"}

i


for :






















































































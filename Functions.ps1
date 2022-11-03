# Functions

# Reuse of piece of code
# you can share it as a file or module
# function has two parts
     1.definition/declaration
     2.piece of code to execute
# function call

function test-message {

  write-host "hello devops engineers" -ForegroundColor Blue
  write-host "hello viewers " -ForegroundColor yellow
  Write-Host "well beings" -ForegroundColor Green
}

# Function call

test-message

# functions with parameters

function test-param{

param($message)
   
   write-host $message  -ForegroundColor Blue
  write-host $message -ForegroundColor yellow
  Write-Host $message -ForegroundColor Green
}

test-param -message hello
test-param -message good morning



# fucntion to convert to upper


function convertto-upper{

param($text)

 $res=$text.toupper()
 write-host "$res" -ForegroundColor green
}

convertto-upper -text "hello vallue"

# to return results back

function convertto-upper{

param($text)

 $res=$text.toupper()
 #write-host "$res" -ForegroundColor green
 return $res
}

$result=convertto-upper -text "hello vallue"




# variable scope
# varibles created inside the fuction is availble to only to this function
# by default function inherits the values in parent scope to child scope


 $a =10

 function  test-varscope{
   $a =20

   write-host $a  -ForegroundColor green

}

test-varscope
write-host $a -ForegroundColor yellow


# Inheretence :


 $a =10

 function  test-varscope{
   
   write-host $a  -ForegroundColor green

}
test-varscope


# function to get app data from remote machine

function get-remoteapplist {

param($hostname,$remotecredentials)

$code={
$InstalledSoftware = Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall"
foreach($obj in $InstalledSoftware)
{
write-host $obj.GetValue('DisplayName') -NoNewline; write-host " - " -NoNewline; write-host $obj.GetValue('DisplayVersion')

}
}

$os= Invoke-Command -ComputerName $hostname -Credential $remotecredentials -ScriptBlock $code
return $os
}



#$cred=Get-Credential


get-remoteapplist -hostname 100.24.236.30 -remotecredentials $cred








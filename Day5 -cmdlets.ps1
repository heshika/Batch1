yesterdays class:

1.operators

logical,stiring,arthemetic,assignment

features cmdlets :

smallest piece of code is called cmdlets.
verb-noun format
cmds are complied
cmd are like an order we are passing to an operating system


c,c++,java

code -> compile ->interpret

machine undertsand language ->


scrpting :
python,powershell,linuxscript

those command alreday compiled


(verb-noun)

write-host   -write meassage to a console     
#Write-Output - Write-Output , on the other hand, writes to the pipeline, so the next command can accept it as its input
get-date


Set-Date

  Set-Date 
   [-Date] <datetime> 
  [-DisplayHint {Date | Time | DateTime}] 
   [-WhatIf] 
   [-Confirm]  
   [<CommonParameters>]

 1.get-Date -Date (Get-Date).AddDays(3) -DisplayHint  datetime

New-Item

New-Item 
[-Path] <string[]>

[-ItemType <string>] 
[-Value <Object>]
 [-Force] 
  [-Credential <pscredential>]
   [-WhatIf] 
   [-Confirm] 
   [-UseTransaction]  
   [<CommonParameters>]

Set-Content -Value "test file" -Path .\testfilenew
?example : create log file directory and add any command out put to that log file

Set-Location

set-location is similar to change the current working directory directory


get-location -gets current location


Copy-Item -copy file from one location to another location
example :Copy-Item  -Path .\todaysfile -Destination "C:\users\Indrani M\Desktop"

Move-Item -  moves the file from one path to another path.
delets in one location and moved to other.

remove-item -removes files or directories

Rename-Item -Rename-Item -Path .\todaysfile -NewName "devopspractice.txt"

get-service - to get the service list
Get-ChildItem - get the file or folders under any parent folder

Set-Content - write the content to a file"














































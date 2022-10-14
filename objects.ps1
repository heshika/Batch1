﻿Powershell is Object Oriented language
object - object has some data and ability to something with data
Powershell everything is object
or

object -methods  and properties
Example : CAR

#Properties

Model : SWift
Manufrature : TATA
Fuel : petrorl
Capacity : 4 seater

#methods : something we can do with this object

Start engine
stop Engine
apply Break
Lights off
Lights On

Example: 1
$date=get-date
$date.GetType()

##since it is object it should have some methods and properties

#properties :

$date |format-list
$date |fl

$date.DayOfWeek
$date.Date

#methods: actions we can do
##To list methods :
$date |Get-Member

##there were many actions we can do with system.datetime object
$date |Get-Member
$date.AddDays(-1)
$date.AddHours(2)

###all objects has some common methods like Tobyte,tochar etc
ToInt64              Method         long IConvertible.ToInt64(System.IFormat...
ToLocalTime          Method         datetime ToLocalTime()                     
ToLongDateString     Method         string ToLongDateString()                  
ToLongTimeString     Method         string ToLongTimeString()                  
ToOADate             Method         double ToOADate()                          
ToSByte      



example2 : service

$bits=Get-Service -Name "BITS"
$bits.GetType()
#####How to get  all properties?
$bits | format-list
or
$bits | fl

###To get particular property from all properties use .operator

$bits.Status


#methods
$bits |gm or $bits |Get-Member

InitializeLifetimeService Method        System.Object InitializeLifetimeServ...
Pause                     Method        void Pause()                           
Refresh                   Method        void Refresh()                         
Start                     Method        void Start(), void Start(string[] args)
Stop                      Method        void Stop()                            
WaitForStatus             Method 
GetType                   Method        type GetType() 

##Gettype is default for all objects

### for void methods ,no need to pass anything
$bits.Stop()
$bits.Start()
$bits.Refresh()


##ToString        ScriptMethod  System.Object ToString();              
scriptmethod : whcih is an abstarction whcih is comming on powershell .
usually .net framework methods and proeprties can be seen in servicecontroller class
####
Name              AliasProperty Name = ServiceName                     
RequiredServices   AliasProperty RequiredServices = ServicesDependedOn  

aliasproperties : which were only written for powershell

example: $bits.Name or $bits.ServiceName(##both are same)   



   ####TypeName: System.ServiceProcess.ServiceController

   whcih is class and everything will get it from microsoft docs.


   ####################

   $msg="hello world"

   which has only methods.


######working with objects :


##objects cmdlets :

##actions which we can do
Where-Object
where
Select-Object

$service=Get-Service -Name bits

#The aboev one is only one object and how to delete with multiple objects
$services=Get-Service

##To check count
$services.Count
##there were 306 objects exists

##To show all objects properties
$services |fl *

#which gives all data one after the other.

Name                : 0192651665378639mcinstcleanup
RequiredServices    : {mfevtp}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : McAfee Application Installer Cleanup (0192651665378639)
DependentServices   : {}
MachineName         : .
ServiceName         : 0192651665378639mcinstcleanup
ServicesDependedOn  : {mfevtp}
ServiceHandle       : 
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Automatic
Site                : 
Container           : 

Name                : AarSvc_1b1c40eb
RequiredServices    : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : Agent Activation Runtime_1b1c40eb
DependentServices   : {}
MachineName         : .
ServiceName         : AarSvc_1b1c40eb
ServicesDependedOn  : {}
ServiceHandle       : 
Status              : Stopped
ServiceType         : 224
StartType           : Manual
Site                : 
Container           : 

Name                : AJRouter
RequiredServices    : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : AllJoyn Router Service
DependentServices   : {}
MachineName         : .
ServiceName         : AJRouter
ServicesDependedOn  : {}
ServiceHandle       : 
Status              : Stopped
ServiceType         : Win32ShareProcess
StartType           : Manual
Site                : 
Container           : 

Name                : ALG
RequiredServices    : {}
CanPauseAndContinue : False
CanShutdown         : False
CanStop             : False
DisplayName         : Application Layer Gateway Service
DependentServices   : {}
MachineName         : .
ServiceName         : ALG
ServicesDependedOn  : {}
ServiceHandle       : 
Status              : Stopped
ServiceType         : Win32OwnProcess
StartType           : Manual
Site                : 
Container           : 


###how to manupulate data

##How to find out only running services

##Where-Object or where can be used,main used for filterning

$services |Where-Object {$_.Status -eq "Running"}

#we can save it another varible and manupulate it

$status=$services |Where-Object {$_.Status -eq "Running"}

explanation:
###How pipeline works here?
#left side out put is input to other
#similar to foreach loop ,it assumes $_ is temporary varaible to each service.

or

Where-Object -InputObject $services -FilterScript{$_.Running -eq "Running"}

##pipeline allows to chain objects

#disabled status:

$status=$services |Where-Object {$_.Status -eq "disbaled"}

Select-Object:

#To select only certain properties

$servicelist=$status | Select-Object name,status
$servicelist|fl

#how to use select-object and where-object together

Get-Service |Where-Object{$_.status -eq "running"}|Select-Object name,status,displayname |Where-Object{$_.Displayname -like "windows*"}

#############

#ForEach-Object
#foreach
#%
#select-object -expandproperty

$services =Get-Service 
$services |ForEach-Object {

Write-Host "$($_.displayname)" -ForegroundColor Blue

}

###anything inside a string $() get executed

#foreach and ForEach-Object both for same purpose

#where is filter object
#select to select
## we can also use some methods inside for loop

$services =Get-Service 
$services |ForEach-Object {

Write-Host "$($_.displayname) is $($_.status)" -ForegroundColor green
$_.stop()
$_.refresh()

}


#exampl 3: to start adobe

$services |Where-Object {$_.DisplayName -eq "*adobe"}|ForEach-Object
{
Write-Host "$($_.displayname) is $($_.status)" -ForegroundColor green
$_.stop()
$_.refresh()

}



#assignments ?

Get-CimInstance -ClassName Win32_LogicalDisk

#total free space in gb

#percentage of free space
$freespace =0

$disk=Get-CimInstance -ClassName Win32_LogicalDisk










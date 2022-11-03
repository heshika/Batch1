# Modules

# extend the functionlity of powershell
# by default powershell provides lots of cmdlets
# AWS and Azure platforms also provides some default modules
# suppose we have to wokr with  azure,import azure module and it will give cmdlets
# all you need to import particular platform modules and work onit

#dEfault path where modules are intsalled

#the most important files in module is .psm1 file and which actually contains the code

$env:PSModulePath
$env:PSModulePath.Split(';')

# to get modules
get-module -ListAvailable

Get-Command -Module bitlocker
get-help get-bitlockervolume

#How to install and import module
#which actually download and extarcts to one of the path

https://www.powershellgallery.com/

Install-Module -Name carbon

#import module to use it in script

Import-Module carbon
get-command -Module carbon


#how to create Modules?
# Just need to save as .psm1 file

Import-Module "C:\Users\Indrani M\Desktop\powershellnotes-personal\test.psm1"

convertto-upper -text "test@123"


#ideally right place to put in env path and no need to load

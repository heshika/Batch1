types

1.special types : $null

2. value types -data type :

boolean [bool]
integer -[int]
string-[string]
double-[double]
float-[float]
character -[char]
long -[long]
decimal -[decimal]

Reference types :

arrays,hashtables,

xml data types


xml

regix and script blcok


1.$hello
#creating file
2.new-item -path .\test.ps1 -Itemtype file
#enter data or edit file 
notepad.exe .\test.ps1
#to see the data
get-content -path 'c:\users\Indrani m\test.ps1'

boolean 

true or false

$true=1
$false=0

if(Test-Path .\test10.ps1)
{
#create directory

}






1.badam

price : 345rs 

soap

price : 200 rs 



Typecasting :

$service="something"

[string]$service="something"


$price="99.98"
$price2=100

[decimal]$price+[int]$price2


$a="hello"
$a="100"
$a=200


static data

[string]$a="hello"
[int]$a= 100


array=collection of items,items can be different data types

$array="sreenivas","maruthi","lab",100
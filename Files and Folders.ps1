##Files and folders
#To set location
Set-Location -Path 'C:\users\Indrani M'
cd "C:\users\Indrani M"

###to get files and folders
Get-ChildItem
dir

#to recursive get files
Recurse

Get-ChildItem -Path "C:\users\Indrani M\Desktop\practice-PS" -Recurse

#To list only files:
$file=Get-ChildItem -Path "C:\Users\Indrani M\Desktop\practice-PS" -File -Recurse
$file[0]|fl *

New-Item ##to create file
New-Item -Path "pathof the file" -ItemType file or directory

Copy-Item ##  To copy file
Move-Item  ## To move file
invoke-item ##to open any file or 
ii ## alias of invoke-item

Rename-Item  #To rename file"
Rename-Item -Path "sourcepath" -NewName "destinationfilename"


#assignment  1?
To remove files ,which are older than 30 days?

Compress-Archive -DestinationPath "c:\test\test.zip" -path "","",""
Get-ChildItem -Path "C:\users\Indrani M\Desktop\practice-PS" |Compress-Archive -DestinationPath "C:\users\Indrani M\test.zip"


#asignment -2

# get uniq movie names from directoy

$path="C:\users\Indrani M\Desktop\practice-PS\media"
$media=Get-ChildItem $path
$media |Group-Object -Property name |ForEach-Object{

write-host  "compressing $($_.Name)" -ForegroundColor Cyan
$_.group |Compress-Archive -DestinationPath "$path\$($_.Name).zip" -Force

}


or

$path="C:\users\Indrani M\Desktop\practice-PS\media"
$media=Get-ChildItem $path
$moviename_bmp=($media |Where-Object {$_.name -like  "*.bmp"})|Select-Object -ExpandProperty name
$movienames =$moviename_bmp |%{$_ -replace(".bmp",'')}

foreach($movie in $movienames){

     $set=@();
     $set=Get-ChildItem $path |Where-Object{$_.Name -like "$movie.*"}

     $set|Compress-Archive -DestinationPath "path\$movie_2.zip" -Force

}























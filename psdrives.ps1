#Psdrives
#Apart from filesysystem ,powershell exposed to many other things

PS C:\Users\Indrani M> Get-PSDrive

Name           Used (GB)     Free (GB) Provider      Root                      
----           ---------     --------- --------      ----                      
Alias                                  Alias                                   
C                 126.90        330.67 FileSystem    C:\                       
Cert                                   Certificate   \                         
Env                                    Environment                             
Function                               Function                                
HKCU                                   Registry      HKEY_CURRENT_USER         
HKLM                                   Registry      HKEY_LOCAL_MACHINE        
Variable                               Variable                                
WSMan                                  WSMan                                   

##############################
#lets see alias drive : which has defalut alisase created in powershell and also we can create own aliases
#This alias makes familiority
  cd alias:
 get-alias
  alias    defalut command running in background
  cd       set-location
  sleep    Start-Sleep

# env 
which is most useful drive
most of which are system defined variables
some can be changed that is systempath and some can not be chnaged

#How to call,enviornment varible in script ?
$env:ALLUSERSPROFILE
$env:USERNAME
$env:COMPUTERNAME
$env:LOGONSERVER #to find out your domain computername"


#how to place a file in logged in users profile?

cd env:
#we can create own env variables

#This affects the only for this window

new-item -Name 'currentbarnch' -Value "oct"
$env:currentbarnch
$env:path
$env:path.Split(':')
$newpath=$env:path + "C:\users\Indrani M\Desktop\Mithun"
$env:path = $newpath
$env:path

Set-Item -Path Env:\Path -Value $newpath


#To change existing env varaibles permananetly
[environment]::SetEnvironmentVariable("path",$newpath,"machine")

#variable(drive for all varaibles)

you can checkout default varaibles.
#$newpath is there


#function :
default functions can shown here

#WSMAN
The WSMan module contains cmdlets and providers that manage the WS-Management protocol in PowerShell.


Connect-WSMan	
Connects to the WinRM service on a remote computer.

Disable-WSManCredSSP	
Disables CredSSP authentication on a computer.

Disconnect-WSMan	
Disconnects the client from the WinRM service on a remote computer.

Enable-WSManCredSSP	
Enables Credential Security Support Provider (CredSSP) authentication on a computer.

Get-WSManCredSSP	
Gets the Credential Security Support Provider-related configuration for the client.

Get-WSManInstance	
Displays management information for a resource instance specified by a Resource URI.

Invoke-WSManAction	
Invokes an action on the object that is specified by the Resource URI and by the selectors.

New-WSManInstance	
Creates a new instance of a management resource.

New-WSManSessionOption	
Creates session option hash table to use as input parameters for WS-Management cmdlets.

Remove-WSManInstance	
Deletes a management resource instance.

Set-WSManInstance	
Modifies the management information that is related to a resource.

Set-WSManQuickConfig	
Configures the local computer for remote management.

Test-WSMan	
Tests whether the WinRM service is running on a local or remote computer.


#cert:
Why you need an SSL certificate. 
Websites need SSL certificates to keep user data secure, 
verify ownership of the website, 
prevent attackers from creating a fake version of the site, 
and convey trust to users.

A certificate or digital certificate is a unique, 
digitally signed document which authoritatively identifies the identity of an individual or organization. Using public key cryptography,
 its authenticity can be verified to ensure that the software or website you are using is legitimate


 A public key certificate uses a pair of encryption keys, one public and one private. The public key is made available to anyone who wants to verify the identity of the certificate holder, while the private key is a unique key that is kept secret


 #Get cert

 Get-ChildItem Cert:\CurrentUser -Recurse |Where-Object {$_.NotAfter -le $($(get-date).AddDays(180))}
 Get-ChildItem Cert:\CurrentUser -Recurse |Where-Object{$_.Issuer -like  "Microsoft*"}
 Get-ChildItem Cert:\CurrentUser -Recurse |Where-Object {$_.EnhancedKeyUsageList -like "*code signing"}



 #create self signed certificate

 New-SelfSignedCertificate -DnsName "devops.com" -CertStoreLocation "Cert:\localmachine"`
 -Type CodeSigningCert -Subject "signing code"


 or



 $Params = @{
    "DnsName"           = @("mywebsite.com","www.mywebsite.com")
    "CertStoreLocation" = "Cert:LocalMachineMy"
    "NotAfter"          = (Get-Date).AddMonths(6)
    "KeyAlgorithm"      = "RSA"
  "KeyLength"         = "2048"
}

PS C:> New-SelfSignedCertificate @Params


 #How to sign a script

 $cert=Get-ChildItem -Path "Cert:\LocalMachine\My"

 Set-AuthenticodeSignature -Certificate $cert -FilePath "C:\Users\Indrani M\Desktop\powershellnotes-personal\diskusage.ps1"


 Export-Certificate  -cert $cert -Type CERT -FilePath "C:\Users\Indrani M\Desktop\powershellnotes-personal\test.cert"
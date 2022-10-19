#SMTP server :

#local host,port 25


Send-MailMessage -From "heshikatrainings@gmail.com"`
-Subject "test email"`
-SmtpServer 'localhost'`
-UseSsl
#-Port '587'`
-Body "test email"`
-To "imanjula@sdl.com"






-















































$Bodymsg=@"
<html>
<title>testing an email</title>
<body>
<h3>hello everyone</h3>
</body>
</html>

"@


$emailbody=@"

hi team,

pfa report

kind regards,
team
"@
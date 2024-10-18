#Define programm
$Chrome = "googlechromestandaloneenterprise64.msi"

#Download programm
Invoke-WebRequest -UseBasicParsing -Uri "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BFA13CDB9-33F8-C8AC-367D-C7A94008D40F%7D%26lang%3Den%26browser%3D5%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable-statsdef_0%26brand%3DGCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi" -OutFile $Chrome

#Install 7zip silently
msiexec.exe /i $($Chrome) /qn 

#Remove install file
#Remove-Item $Filename

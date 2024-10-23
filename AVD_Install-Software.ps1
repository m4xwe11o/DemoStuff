#Define programm
$7zip = "7z2407-x64.msi"
$Chrome = "googlechromestandaloneenterprise64.msi"
$NPP = "npp.8.7.Installer.x64.exe"

#Download programm
Invoke-WebRequest -UseBasicParsing -Uri "https://7-zip.org/a/7z2407-x64.msi" -OutFile $7zip
Invoke-WebRequest -UseBasicParsing -Uri "https://dl.google.com/tag/s/appguid%3D%7B8A69D345-D564-463C-AFF1-A69D9E530F96%7D%26iid%3D%7BFA13CDB9-33F8-C8AC-367D-C7A94008D40F%7D%26lang%3Den%26browser%3D5%26usagestats%3D0%26appname%3DGoogle%2520Chrome%26needsadmin%3Dtrue%26ap%3Dx64-stable-statsdef_0%26brand%3DGCEA/dl/chrome/install/googlechromestandaloneenterprise64.msi" -OutFile $Chrome
Invoke-WebRequest -UseBasicParsing -Uri "https://github.com/notepad-plus-plus/notepad-plus-plus/releases/download/v8.7/npp.8.7.Installer.x64.exe" -OutFile $NPP

#Install 7zip silently
Start-Process msiexec.exe -Wait -ArgumentList "/package $($7zip) /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1"
msiexec.exe /i $($Chrome) /qn
Start-Process -Wait -FilePath $NPP -ArgumentList '/S','/v','/qn' -passthru

#Remove install file
#Remove-Item $Filename

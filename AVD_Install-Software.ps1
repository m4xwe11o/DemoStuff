#Download programm
$7zip = "7z2407-x64.msi"
Invoke-WebRequest -UseBasicParsing -Uri "https://7-zip.org/a/7z2407-x64.msi" -OutFile $7zip

#Install 7zip silently
Start-Process msiexec.exe -Wait -ArgumentList "/package $($7zip) /quiet ADD_EXPLORER_CONTEXT_MENU_OPENPOWERSHELL=1 ADD_FILE_CONTEXT_MENU_RUNPOWERSHELL=1 REGISTER_MANIFEST=1 USE_MU=1 ENABLE_MU=1 ADD_PATH=1"

#Remove install file
#Remove-Item $Filename

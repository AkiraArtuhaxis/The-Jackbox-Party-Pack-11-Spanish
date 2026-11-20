@ECHO OFF

set "SEVENZIPDIR=E:\Program Files\7-Zip"

:: Copiar y pegar "ArchivoMS"
xcopy "ArchivoMS" "Main" /s /y
:: Hacer versión Microsoft Store en JPP11-ES-MS.zip
CD "Main"
IF EXIST "..\Zips\JPP11-ES-MS.zip" DEL "..\Zips\JPP11-ES-MS.zip"
"%SEVENZIPDIR%\7z.exe" a -tzip -y -bso0 -bsp0 "..\Zips\JPP11-ES-MS.zip" "..\*"
:: Copiar y pegar "ArchivoSteam"
CD ..
xcopy "ArchivoSteam" "Main" /s /y
:: Hacer versión Steam en JPP11-ES.zip
CD "Main"
IF EXIST ".\Zips\JPP11-ES.zip" DEL "..\Zips\JPP11-ES.zip"
"%SEVENZIPDIR%\7z.exe" a -tzip -y -bso0 -bsp0 "..\Zips\JPP11-ES.zip" "..\*"

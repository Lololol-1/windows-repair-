@echo off
net session >nul 2>&1
if %errorLevel% NEQ 0 (

echo       .o.           .       .                             .    o8o                        
echo      .888.        .o8     .o8                           .o8    `"'                        
echo     .8"888.     .o888oo .o888oo  .ooooo.  ooo. .oo.   .o888oo oooo   .ooooo.  ooo. .oo.   
echo    .8' `888.      888     888   d88' `88b `888P"Y88b    888   `888  d88' `88b `888P"Y88b  
echo   .88ooo8888.     888     888   888ooo888  888   888    888    888  888   888  888   888  
echo  .8'     `888.    888 .   888 . 888    .o  888   888    888 .  888  888   888  888   888  
echo o88o     o8888o   "888"   "888" `Y8bod8P' o888o o888o   "888" o888o `Y8bod8P' o888o o888o 
 
echo this script needs admin privilages
echo please right click on the file and click run as admin and click yes in the UAC prompt
pause
exit /b
)

:menu
cls
echo oooooooooooo  o8o              
echo `888'     `8  `"'              
echo  888         oooo  oooo    ooo 
echo  888oooo8    `888   `88b..8P'  
echo  888    "     888     Y888'    
echo  888          888   .o8"'88b   
echo o888o        o888o o88'   888o 

echo welcome mr ????
echo this script was fully coded by 0xar
echo 1. run SFC (fixes system files)
echo 2. run DISM ( fixes the windows image)
echo 3. run MRT (removes malware)
echo 4. start a process 
echo 5. kill a process
echo 6. view all processes
echo 7.run chkdsk (this will ONLY scan NOT repair. to repair run cmd as admin and type chkdsk /f /r)
echo 8.check if a site is alive
echo ============================
set /p option="option ??: "

if "%option%"=="1" goto sfc
if "%option%"=="2" goto DISM
if "%option%"=="3" goto MRT
if "%option%"=="4" goto start
if "%option%"=="5" goto kill
if "%option%"=="6" goto all
if "%option%"=="7" goto chkdsk
if "%option%"=="8" goto ping
goto menu

:sfc
cls
echo  .oooooo..o oooooooooooo   .oooooo.   
echo d8P'    `Y8 `888'     `8  d8P'  `Y8b  
echo Y88bo.       888         888          
echo  `"Y8888o.   888oooo8    888          
echo      `"Y88b  888    "    888          
echo oo     .d8P  888         `88b    ooo  
echo 8""88888P'  o888o         `Y8bood8P'  
echo DO NOT CLOSE the window or you will have to re-start 
sfc /SCANNOW
pause
goto menu

:DISM
cls
echo oooooooooo.   ooooo  .oooooo..o ooo        ooooo 
echo `888'   `Y8b  `888' d8P'    `Y8 `88.       .888' 
echo  888      888  888  Y88bo.       888b     d'888  
echo  888      888  888   `"Y8888o.   8 Y88. .P  888  
echo  888      888  888       `"Y88b  8  `888'   888  
echo  888     d88'  888  oo     .d8P  8    Y     888  
echo o888bood8P'   o888o 8""88888P'  o8o        o888o
echo DO NOT CLOSE the window or you will have to re-start
DISM /Online /Cleanup-Image /RestoreHealth
pause
goto menu

:MRT
cls
echo ooo        ooooo ooooooooo.   ooooooooooooo 
echo `88.       .888' `888   `Y88. 8'   888   `8 
echo  888b     d'888   888   .d88'      888      
echo  8 Y88. .P  888   888ooo88P'       888      
echo  8  `888'   888   888`88b.         888      
echo  8    Y     888   888  `88b.       888      
echo o8o        o888o o888o  o888o     o888o     
 echo Starting MRT please wait...
start "" "MRT.exe"
pause
goto menu

:start
cls
echo  .oooooo..o     .                          .                      
echo d8P'    `Y8   .o8                        .o8                      
echo Y88bo.      .o888oo  .oooo.   oooo d8b .o888oo  .ooooo.  oooo d8b 
echo  `"Y8888o.    888   `P  )88b  `888""8P   888   d88' `88b `888""8P 
echo      `"Y88b   888    .oP"888   888       888   888ooo888  888     
echo oo     .d8P   888 . d8(  888   888       888 . 888    .o  888     
echo 8""88888P'    "888" `Y888""8o d888b      "888" `Y8bod8P' d888b
set /p process1234="process to start ???: "
start %process1234%
goto menu

:kill
cls
echo   .oooooo.   oooo                               
echo  d8P'  `Y8b  `888                               
echo 888           888   .ooooo.   .oooo.o  .ooooo.  
echo 888           888  d88' `88b d88(  "8 d88' `88b 
echo 888           888  888   888 `"Y88b.  888ooo888 
echo `88b    ooo   888  888   888 o.  )88b 888    .o 
echo  `Y8bood8P'  o888o `Y8bod8P' 8""888P' `Y8bod8P' 
set /p kill12345="process to close ???: "
taskkill /IM %kill12345% /f 
pause
goto menu 

:all
cls
echo ooooo         o8o               .   
echo `888'         `"'             .o8   
echo  888         oooo   .oooo.o .o888oo 
echo  888         `888  d88(  "8   888   
echo  888          888  `"Y88b.    888   
echo  888       o  888  o.  )88b   888 . 
o888ooooood8 o888o 8""888P'   "888" 
tasklist
pause
goto menu

:chkdsk
cls
echo   .oooooo.   oooo                            oooo        
echo  d8P'  `Y8b  `888                            `888        
echo 888           888 .oo.    .ooooo.   .ooooo.   888  oooo  
echo 888           888P"Y88b  d88' `88b d88' `"Y8  888 .8P'   
echo 888           888   888  888ooo888 888        888888.    
echo `88b    ooo   888   888  888    .o 888   .o8  888 `88b.  
echo  `Y8bood8P'  o888o o888o `Y8bod8P' `Y8bod8P' o888o o888o 
chkdsk /scan
pause
goto menu

:ping
cls
echo ooooooooo.    o8o                         
echo `888   `Y88.  `"'                         
echo  888   .d88' oooo  ooo. .oo.    .oooooooo 
echo  888ooo88P'  `888  `888P"Y88b  888' `88b  
echo  888          888   888   888  888   888  
echo  888          888   888   888  `88bod8P'  
echo o888o        o888o o888o o888o `8oooooo.  
echo                                d"     YD  
echo                                "Y88888P'  
set /p ping12="domain or ip to ping ?? : "
ping %ping12%  -t                            

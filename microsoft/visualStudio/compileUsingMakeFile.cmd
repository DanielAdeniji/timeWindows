@echo off

setlocal

call softLinksCreate.cmd

rem we no longer need to reference two levels up
rem as we are using symbolic links
rem set "_folderSource=..\..\"

if %ERRORLEVEL% equ 0 goto compile

echo Error (%ERRORLEVEL%) experienced setting Soft Links

echo Please make sure you are in Administrator Mode

goto end

:compile 

nmake

:end

endlocal
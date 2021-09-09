@echo off

if not exist TimeMem.c   mklink TimeMem.c ..\..\TimeMem.c

if %ERRORLEVEL% neq 0 goto end

if not exist TimeMem.ico mklink TimeMem.ico ..\..\TimeMem.ico

if not exist TimeMem.rc mklink TimeMem.rc ..\..\TimeMem.rc

:end

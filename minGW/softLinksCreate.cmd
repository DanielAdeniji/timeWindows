setlocal

set _folder=..\

if not exist TimeMem.c   mklink TimeMem.c %_folder%\TimeMem.c

if not exist TimeMem.ico mklink TimeMem.ico %_folder%\TimeMem.ico

if not exist TimeMem.rc mklink TimeMem.rc %_folder%\TimeMem.rc

endlocal
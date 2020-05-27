setlocal

rem we no longer need to reference two levels up
rem as we are using symbolic links
rem set "_folderSource=..\..\"

set "_folderSource="

rem staging area
set "_folderStage=_stage"

rem binary area
set "_folderExecutable=bin"

rem name of the source code
set "_sourceCode=TimeMem"

set "_binExecutable=%_folderExecutable%\%_sourceCode%.exe"

set "_resourceFile=%_folderStage%\%_sourceCode%.res"

rem create folders
if not exist %_folderStage% mkdir %_folderStage%

if not exist %_folderExecutable% mkdir %_folderExecutable%

rem cleanup staging and output folders
del %_folderStage% /Q

del %_folderExecutable% /Q

rem compile TimeMem.c into TimeMem.obj
cl /c /W4 %_folderSource%%_sourceCode%.c /Fo:%_folderStage%\

rem Resource File Processing:- TimeMem.rc into TimeMem.res
rc /fo %_resourceFile% %_sourceCode%.rc 

rem Object File + Resource File:- executable
cl %_folderStage%\%_sourceCode%.obj %_resourceFile%  /Fe:%_binExecutable%

endlocal
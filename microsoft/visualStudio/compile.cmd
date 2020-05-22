setlocal

rem set "_folderSource=..\..\"

set "_sourceCode=TimeMem"

set "_folderSource="

set "_folderStage=_stage"

set "_folderExecutable=bin"

set "_binExecutable=%_folderExecutable%\%_sourceCode%.exe"

set "_resourceFile=%_folderStage%\%_sourceCode%.res"

if not exist %_folderStage% mkdir %_folderStage%

if not exist %_folderExecutable% mkdir %_folderExecutable%

del %_folderStage% /Q

rem compile TimeMem.c into TimeMem.obj
cl /c /W4 %_folderSource%%_sourceCode%.c /Fo:%_folderStage%\

rem Resource File Processing:- TimeMem.rc into TimeMem.res
rc /fo %_resourceFile% %_sourceCode%.rc 

rem Object File + Resource File:- executable
cl %_folderStage%\%_sourceCode%.obj %_resourceFile%  /Fe:%_binExecutable%

endlocal
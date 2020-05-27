setlocal


set _compilerFolder=C:\mingw\x86_64\8.1.0\posix\seh\mingw64\bin
set _compilerBinary=gcc.exe
set COMPILER=%_compilerFolder%\%_compilerBinary%

SET LIB_DIR=C:\mingw\x86_64\8.1.0\posix\seh\mingw64\lib

rem dadeniji
set PATH=%PATH%;%_compilerFolder%

rem set source folder
set "_folderSource="

rem staging area
set "_folderStage=_stage"

rem binary area
set "_folderExecutable=bin"

rem name of the source code
set "_sourceCode=TimeMem"

set "_binExecutable=%_folderExecutable%\%_sourceCode%.exe"

set "_objectFile=%_folderStage%\%_sourceCode%.o"

set "_resourceFile=%_folderStage%\%_sourceCode%.res"

rem create folders
if not exist %_folderStage% mkdir %_folderStage%

if not exist %_folderExecutable% mkdir %_folderExecutable%

rem cleanup staging and output folders
del %_folderStage% /Q

del %_folderExecutable% /Q

SET "_COMPILE_OPTIONS_FILE_C=-c  -Wunused " 

SET "_COMPILE_OPTION_FILE_RESOURCE_FORMAT_OUTPUT=coff"

SET "_LINK_LIBARIES=-lpsapi" 
 
rem compile .c to obj (.o)
"%COMPILER%" %_COMPILE_OPTIONS_FILE_C% %_sourceCode%.c -o %_folderStage%\%_sourceCode%.o

rem Resource File Processing:- TimeMem.rc into TimeMem.res
windres --output-format %_COMPILE_OPTION_FILE_RESOURCE_FORMAT_OUTPUT% %_sourceCode%.rc %_resourceFile%  

rem Object File + Resource File:- executable
gcc %_objectFile% %_resourceFile%  -o %_binExecutable% %_LINK_LIBARIES%


:completed

endlocal
#Rem 32 Bit environment options

BIN32=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x86

LIB32="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\lib\x86"

LIB32_WINDOWS_KITS_UCRT="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x86"

LIB32_WINDOWS_KITS_UM="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x86"

#Rem 64 Bit environment options

BIN64=C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\bin\Hostx64\x64

LIB64="C:\Program Files (x86)\Microsoft Visual Studio\2019\Community\VC\Tools\MSVC\14.27.29110\lib\x64"

LIB64_WINDOWS_KITS_UCRT="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\ucrt\x64"

LIB64_WINDOWS_KITS_UM="C:\Program Files (x86)\Windows Kits\10\Lib\10.0.18362.0\um\x64"

T_LIBRARY_kernel32=kernel32.lib

T_LIBRARY_libucrt=libucrt.lib

FOLDER_STAGE=stage\

#BUILD_OPTION=" /DEBUG  /VERBOSE"

build: bin\TimeMem.exe bin\TimeMem_x64.exe

bin\TimeMem.exe: $(FOLDER_STAGE)\TimeMem.obj 
	"$(BIN32)\link.exe" $(FOLDER_STAGE)\TimeMem.obj /MACHINE:X86  $(BUILD_OPTION)  /NODEFAULTLIB:uuid.lib /DEFAULTLIB:$(T_LIBRARY_kernel32)  /DEFAULTLIB:$(T_LIBRARY_libucrt)  /LIBPATH:$(LIB32) /LIBPATH:$(LIB32_WINDOWS_KITS_UCRT)  /LIBPATH:$(LIB32_WINDOWS_KITS_UM)  /OUT:bin\TimeMem.exe

$(FOLDER_STAGE)\TimeMem.obj: TimeMem.c
	"$(BIN32)\cl.exe"  /c /EHsc /Fo"$(FOLDER_STAGE)\TimeMem.obj"  TimeMem.c
	
bin\TimeMem_x64.exe: $(FOLDER_STAGE)\TimeMem_x64.obj 
	"$(BIN64)\link.exe" $(FOLDER_STAGE)\TimeMem_x64.obj /MACHINE:X64 $(BUILD_OPTION) /NODEFAULTLIB:uuid.lib /DEFAULTLIB:$(T_LIBRARY_kernel32)  /DEFAULTLIB:$(T_LIBRARY_libucrt)  /LIBPATH:$(LIB64) /LIBPATH:$(LIB64_WINDOWS_KITS_UCRT)  /LIBPATH:$(LIB64_WINDOWS_KITS_UM) /OUT:bin\TimeMem_x64.exe

$(FOLDER_STAGE)\TimeMem_x64.obj: TimeMem.c
	"$(BIN64)\cl.exe"  /c /EHsc /Fo"$(FOLDER_STAGE)\TimeMem_x64.obj" TimeMem.c

all:bin\TimeMem.exe bin\TimeMem_x64.exe

clean:
   if exist $(FOLDER_STAGE)\*.obj del $(FOLDER_STAGE)\*.obj
   if exist bin\*.exe del bin\*.exe
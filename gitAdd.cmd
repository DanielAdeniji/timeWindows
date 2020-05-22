setlocal

	git add icon.png
	
	git add README.md
	
	git add TimeMem.c
	
	git add Timemem.ico
	
	git add git*.cmd
	
	set _folder=microsoft\visualStudio
	
	git add %_folder%\cleanup.cmd

	git add %_folder%\compile.cmd
	
	git add %_folder%\softLinksCreate.cmd

	git add %_folder%\softLinksRemove.cmd
	
	git add %_folder%\Timemem.rc
	
	git add %_folder%\bin\TimeMem.exe
	
	
endlocal
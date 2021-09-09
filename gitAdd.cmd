setlocal

	git add icon.png
	
	git add README.md
	
	git add TimeMem.c
	
	git add TimeMem.ico

	git add TimeMem.rc
	
	set _folder=microsoft\visualStudio
	
	git add %_folder%\cleanup.cmd

	git add %_folder%\compile.cmd
	
	git add %_folder%\softLinksCreate.cmd

	git add %_folder%\softLinksRemove.cmd
	
	rem git add %_folder%\Timemem.rc
	
	git add %_folder%\bin\TimeMem.exe
	
	
	set "_folder=minGW"
	
	git add %_folder%\cleanup.cmd

	git add %_folder%\compile.cmd
	
	git add %_folder%\softLinksCreate.cmd

	git add %_folder%\softLinksRemove.cmd
	
	rem git add %_folder%\Timemem.rc
	
	git add %_folder%\bin\TimeMem.exe
		
	git add git*.cmd
	
	git add .gitIgnore
	
endlocal
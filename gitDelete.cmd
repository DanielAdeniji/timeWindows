setlocal

	set _folder=microsoft\visualStudio

	rem dir %_folder%\TimeMem.rc
	
	git rm %_folder%\TimeMem.rc
	
	set "_folder=minGW"

	rem dir %_folder%\TimeMem.rc
	
	git rm %_folder%\TimeMem.rc
		
endlocal
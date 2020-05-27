setlocal

	set _folder=microsoft\visualStudio

	dir %_folder%\TimeMem.rc
	
	git rm %_folder%\TimeMem.rc
	
endlocal
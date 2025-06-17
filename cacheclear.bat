:: This file was created by AndersLeet

@echo off
set "folder=%localappdata%\FiveM\FiveM.app\data"
set "backup=%localappdata%\FiveM\FiveM.app\data_backup"

echo This batch file will remove the FiveM cache folder.
echo This folder is located at: %folder%
echo If backup operation is requested, it we be created at: %backup%
echo IF BACKUP OPERATION IS REQUESTED, IT WILL OVERWRITE ANY EXISTING DATA IF "data_backup" EXISTS.
echo:

<nul set /p "=Press any key to proceed with FiveM cache clear . . ."
echo:
pause >nul

echo:

if not exist "%folder%" (
    echo The "data" folder was not found. No files were removed. Exiting.
) else (
	echo Choose a cache clear option:
	echo	1. Delete    With Backup
	echo	2. Delete Without Backup
	echo	3. Exit
	
	choice /C 123 /N /M "Select (1 or 2 or 3):"

	if errorlevel 3 (
		echo No files were removed. Exiting.
	) else if errorlevel 2 (
		echo Please confirm complete removal:
		echo	1. Confirm Delete
		echo	2. Cancel  Delete

		choice /C 12 /N /M "Select (1 or 2):"

		if errorlevel 2 (
			echo Exiting. No files were removed.
		) else (			
			rd /s /q "%folder%"
			echo The "data" folder was removed.
		)
	) else (
		if exist "%backup%" (
			rd /s /q "%backup%"
		)
		robocopy "%folder%" "%backup%" /MIR
		rd /s /q "%folder%"
		echo Folder "data" backed up to "data_backup" and the original folder "data" was removed.
	)
)
echo:
<nul set /p "=Operation complete. Press any key to exit . . ."
pause >nul

:: This file was created by AndersLeet
@echo off
SETLOCAL

echo Directory depth:
set /p input=

set "string=%cd%"
set count=0
set decount=0

:hang
	set "oldstring=%string%"
	set "string=%string:*\=%"
	set /a count+=1
	if not "%string%" == "%oldstring%" goto :hang
	set "cn=%count%"

for /R %%f in (*) do (
	set "string=%%f"
	set count=-1
	call :again "%%f"
	)

ENDLOCAL
goto :eof

:again
	set "oldstring=%string%"
	set "string=%string:*\=%"
	set /a count+=1
	if not "%string%" == "%oldstring%" goto :again
	set /a count-=%cn%
	if %count% equ %input% (
		echo %string%
		set /p boo=
		goto :settle %1
		)

:settle
	if "%boo%" equ "y" (
		code . %1
		exit
		)

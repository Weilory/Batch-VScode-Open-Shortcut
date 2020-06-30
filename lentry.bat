@echo off
SETLOCAL

for %%f in (*) do call :scan %%f

:scan
	echo %1 
	set /p boo=
	if "%boo%" equ "y" (
			code . %1
			goto :eof
		)

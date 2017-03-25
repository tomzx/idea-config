setlocal enabledelayedexpansion

goto :main

:createSymlink
	mklink %TARGET%\codestyles\eXolnet.xml %BASE%\codestyles\eXolnet.xml
	mklink %TARGET%\colors\Tom.icls %BASE%\colors\Tom.icls
	mklink %TARGET%\inspection\eXolnet.xml %BASE%\inspection\eXolnet.xml
	mklink %TARGET%\templates\eXolnet.xml %BASE%\templates\eXolnet.xml
goto :eof

:main
set BASE=%cd%
for %%i in (7 8 9 10) do (
	set TARGET=%USERPROFILE%\.WebIde%%i0\config
	IF EXIST !TARGET! (
		call :createSymlink
	)
)

for %%s in (2016.1 2016.2 2016.3 2017.1) do (
	set TARGET=%USERPROFILE%\.PhpStorm%%s\config
	IF EXIST !TARGET! (
		call :createSymlink
	)
)

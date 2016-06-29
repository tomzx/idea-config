setlocal enabledelayedexpansion

set BASE=%cd%
for %%i in (7 8 9 10) do (
	set TARGET=%USERPROFILE%\.WebIde%%i0\config
	mklink !TARGET!\codestyles\eXolnet.xml %BASE%\codestyles\eXolnet.xml
	mklink !TARGET!\templates\eXolnet.xml %BASE%\templates\eXolnet.xml
)

for %%s in (2016.1) do (
	set TARGET=%USERPROFILE%\.PhpStorm%%s\config
	mklink !TARGET!\codestyles\eXolnet.xml %BASE%\codestyles\eXolnet.xml
	mklink !TARGET!\templates\eXolnet.xml %BASE%\templates\eXolnet.xml
)
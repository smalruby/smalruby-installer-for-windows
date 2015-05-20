@setlocal

@for /F "delims=" %%I in ("%~dp0DevKit200_32") do @set devkit_root=%%~fI
@set PATH=%~dp0Ruby216_32\bin;%devkit_root%\bin;%devkit_root%\mingw\bin;%PATH%

@if not exist "%HOME%" @set HOME=%HOMEDRIVE%%HOMEPATH%
@if not exist "%HOME%" @set HOME=%USERPROFILE%

@set PLINK_PROTOCOL=ssh
@if not defined TERM set TERM=msys

@cd /d %~dp0programs
@start %COMSPEC%

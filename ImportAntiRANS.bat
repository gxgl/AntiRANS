@echo off
REM ==================================================
REM ==================================================
REM ==                                              ==
REM ==                  @16.09.2016                 ==
REM ==                                              ==
REM ==      Created by GxGL (George Stamate)        ==
REM ==                                              ==
REM ==    The contents of this file is free to use  ==
REM == and distribute.                              ==
REM ==    This script was created for sysusers to   ==
REM == be able to easily import extentions added to ==
REM == FSRM service with a sigle click.             ==
REM ==    With this idea in mind comes more good!   ==
REM ==                                              ==
REM ==    As a note: You need to run this file as   ==
REM == administrator if you want to get all done.   ==
REM ==                                              ==
REM ==================================================
REM ==================================================

setlocal
cd /d %~dp0
cls
echo[
echo Detecting if you run this script as admin...
REM We use an alternative PAUSE since this is not recognized on some windows versions
ping 127.0.0.1 -n 5 -w 1000 >nul

NET SESSION >nul 2>&1
IF %ERRORLEVEL% EQU 0 (
    ECHO Administrator PRIVILEGES Detected!
	ping 127.0.0.1 -n 5 -w 1000 >nul
	IF EXIST "C:\Windows\system32\fsrm.msc" (goto Installed) else (goto NotInstalled)
) ELSE (
    ECHO NOT AN ADMIN! Please run this script as administrator.
	ping 127.0.0.1 -n 5 -w 1000 >nul && GOTO END
)

:Installed
echo File Server Resource Manager is installed
echo we will install or update the rules...
echo[
filescrn filegroup import /file:AntiRANS.xml /filegroup:"AntiRANS" /overwrite
echo[
filescrn template import /file:AntiRANS_Template.xml /template:"AntiRANS_Template" /overwrite
echo[
for /f "skip=1" %%x in ('wmic logicaldisk get caption') do filescrn screen add /path:%%x\ /sourcetemplate:"AntiRANS_Template" /overwrite /type:active
echo[
goto END

:NotInstalled
echo File Server Resource Manager is not installed
echo Please install it and rerun this script! We'll now exit...
ping 127.0.0.1 -n 5 -w 3000 >nul
goto END

:END
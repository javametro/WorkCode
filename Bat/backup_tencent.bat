@echo off 
:: clear git 
git clean -f -d -x 

pause 
:: clear temp files 
if exist TencentFile.zip (
	del TencentFile.zip
)

if exist WechatFiles.zip (
	del WechatFiles.zip
)

if exist "%userprofile%\Documents\Tencent Files" (
	echo QQ/Tim files exist
)

if exist "%userprofile%\Documents\WeChat Files" (
	echo Wechat files exist
)

:: close process before running this 
tasklist | findstr /i "TIM.exe"
if %errorlevel% == 0 (
	echo Tim.exe running
	taskkill /im TIM.exe /f 
)

tasklist | findstr /i "QQ.exe"
if %errorlevel% == 0 (
	echo QQ.exe running
	taskkill /im QQ.exe /f
)

tasklist | findstr /i "Wechat.exe"
if %errorlevel% == 0 (
	echo Wechat.exe running
	Taskkill /im Wechat.exe /f
)

:: backup tencent files
7za a -o{.} -p{dq0xav} TencentFile.zip "C:\Users\stephen\Documents\Tencent Files"  
7za a -o{.} -p{dq0xav} WechatFiles.zip "C:\Users\stephen\Documents\WeChat Files"  
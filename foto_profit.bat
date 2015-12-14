@echo off
Set $SRC=c:\ovp\foto_profit\*.*
Set $DST=%date:~6,4%%date:~3,2%%date:~0,2%
Set $Host=192.168.12.32
Set $User=copr
Set $Pass=5dfgT5E3
Set $log="c:\foto_profit\log\%date:~6,4%%date:~3,2%%date:~0,2%-%time:~0,2%%time:~3,2%".txt
Set $prog=c:\foto_profit\ncftp\ncftpput.exe

%$prog% -u %$User% -p %$Pass% -m -R -DD -E %$Host% Copr1\%$DST% "%$SRC%" 
echo.%errorlevel% >"%$log%"

:: траляля
Findstr /B /L "0" "%$log%" & for /D %%a in (%$SRC%) do rmdir /q /s "%%a"



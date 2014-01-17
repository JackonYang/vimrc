@echo off
mklink /D %HOMEDRIVE%\%HOMEPATH%\vimfiles %~dp0
mklink %HOMEDRIVE%\%HOMEPATH%\_vimrc %~dp0\_vimrc

pause

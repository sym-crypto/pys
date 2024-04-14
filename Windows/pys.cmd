echo off
title PYS
cls

set sd=C:\Users
set apphome=%sd%\%USERNAME%\pys
set dsrv=%sd%\%USERNAME%\www\scarica


cls
type %apphome%\title-pys
echo python3 web server
echo ...
echo all ip...
ipconfig | findstr IPv4
echo wlan:
netsh wlan show all | findstr Driver
C:
cd %dsrv%
py -m http.server 1212 | echo server_online http://0.0.0.0:1212 ... %dsrv%
pause

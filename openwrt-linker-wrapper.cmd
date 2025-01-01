@echo off
call set "sysroot=%~dp0.."
call ld.lld --sysroot=%sysroot% %*

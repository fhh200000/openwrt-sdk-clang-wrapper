@echo off
for %%a in ("%0") do set me=%%~na
:: OpenWrt target "triple" contains exact 4 parts.
for /f "tokens=1,2,3,4 delims=-" %%a in ("%me%") do set target=%%a-%%b-%%c-%%d
call set "real_exe=%%me:%target%-=%%"
call set "sysroot=%~dp0.."
call %real_exe% --target=%target% -fuse-ld=lld --sysroot=%sysroot% %*
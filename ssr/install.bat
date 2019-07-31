@echo off
rem Install Upstream Machine Agent Service using srvany.exe from the Windows Resource Kit
echo Installing AppDynamics Machine Agent Service into the Service Manager
sc create "SSR Service" binPath= c:\ssr\srvany.exe start=auto depend=TCPIP
echo done.
echo Setting Registry settings for Upstream Machine Agent Service
regedit /S c:\ssr\ssr.reg
echo done.
echo Starting Service
sc start "SSR Service"
pause

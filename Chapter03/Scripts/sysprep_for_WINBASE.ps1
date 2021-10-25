Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask
Get-ScheduledTask -TaskName "Scheduled Start" | Disable-ScheduledTask
Get-ScheduledTask -TaskName StartComponentCleanUp | Disable-ScheduledTask
Get-Service -Name wuauserv | Set-Service -StartupType Disabled -Confirm:$false
Stop-Service wuauserv -Force
cmd /k %WINDIR%\System32\sysprep\sysprep.exe /oobe /generalize /shutdown

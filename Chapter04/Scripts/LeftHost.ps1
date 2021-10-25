Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask -Verbose
Rename-Computer -NewName LeftHost
New-NetIPAddress -IPAddress 10.10.10.10 -DefaultGateway 10.10.10.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Get-ScheduledTask -TaskName Scheduled Start | Disable-ScheduledTask  -Verbose
Get-ScheduledTask -TaskName StartComponentCleanUp | Disable-ScheduledTask  -Verbose
Set-Service wuauserv -Startup Disabled
Stop-Service wuauserv -Force
Restart-Computer

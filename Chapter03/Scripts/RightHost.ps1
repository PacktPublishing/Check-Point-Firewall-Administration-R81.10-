#Caution!!! This script disables the Windows Update Services.
#It is intended for the use in isolated lab environments for space saving purposes only.
#If you do not have space constraints, comment-out five lines before the last one and save the script!!! 
Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask -Verbose
Rename-Computer -NewName RightHost
New-NetIPAddress -IPAddress 172.16.16.10 -DefaultGateway 172.16.16.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
$WindowsUpdate = "Scheduled Start"
Get-ScheduledTask -TaskName $WindowsUpdate | Disable-ScheduledTask  -Verbose
Get-ScheduledTask -TaskName StartComponentCleanUp | Disable-ScheduledTask  -Verbose
Set-Service wuauserv -Startup Disabled
Stop-Service wuauserv -Force
Restart-Computer

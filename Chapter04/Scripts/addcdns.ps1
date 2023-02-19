Get-ScheduledTask -TaskName ServerManager | Disable-ScheduledTask -Verbose
$WindowsUpdate = "Scheduled Start"
Get-ScheduledTask -TaskName $WindowsUpdate | Disable-ScheduledTask  -Verbose
Get-ScheduledTask -TaskName StartComponentCleanUp | Disable-ScheduledTask  -Verbose
Get-Service -Name wuauserv | set-service -StartupType  Disabled -Confirm:$false
Get-Service -Name MapsBroker | set-service -StartupType  Disabled -Confirm:$false
Get-Service -Name gupdate | set-service -StartupType  Disabled -Confirm:$false
Stop-Service wuauserv -Force
New-NetIPAddress -IPAddress 10.20.20.10 -DefaultGateway 10.20.20.1 -PrefixLength 24 -InterfaceIndex (Get-NetAdapter).InterfaceIndex
Set-DNSClientServerAddress -InterfaceIndex (Get-NetAdapter).InterfaceIndex -ServerAddresses 10.20.20.10
Install-WindowsFeature -name AD-Domain-Services -IncludeManagementTools
Install-ADDSForest -DomainName mycp.lab -DomainNetBIOSName AD -InstallDNS

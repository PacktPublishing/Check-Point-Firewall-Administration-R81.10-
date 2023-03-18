New-ADReplicationSubnet -Name "192.168.254.0/24"
Add-DnsServerPrimaryZone -NetworkID "192.168.254.0/24" -ReplicationScope "Forest"
Add-DhcpServerv4Scope -Name 'CP_RA_Hosts' -StartRange 192.168.254.100 -EndRange 192.168.254.150 -SubnetMask 255.255.255.0
Set-DhcpServerv4OptionValue -ScopeId 192.168.254.0 -DnsServer 10.20.20.10 -DnsDomain "mycp.lab"

Import-Module ActiveDirectory
New-ADReplicationSubnet -Name "10.0.0.0/24"
New-ADReplicationSubnet -Name "10.10.10.0/24"
New-ADReplicationSubnet -Name "10.20.20.0/24"
New-ADReplicationSubnet -Name "10.30.30.0/24"
Add-DnsServerPrimaryZone -NetworkID "10.0.0.0/24" -ReplicationScope "Forest"
Add-DnsServerPrimaryZone -NetworkID "10.10.10.0/24" -ReplicationScope "Forest"
Add-DnsServerPrimaryZone -NetworkID "10.20.20.0/24" -ReplicationScope "Forest"
Add-DnsServerPrimaryZone -NetworkID "10.30.30.0/24" -ReplicationScope "Forest"
Add-DnsServerForwarder -IPAddress 9.9.9.9 -PassThru
Add-DnsServerResourceRecordA -Name "SmartConsole" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.0.0.20" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "20" -ZoneName "0.0.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "SmartConsole.mycp.lab"
Add-DnsServerResourceRecordA -Name "CPSMS" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.0.0.10" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "10" -ZoneName "0.0.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "CPSMS.mycp.lab"
Add-DnsServerResourceRecordA -Name "CPCM1" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.0.0.2" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "2" -ZoneName "0.0.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "CPCM1.mycp.lab"
Add-DnsServerResourceRecordA -Name "CPCM2" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.0.0.3" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "3" -ZoneName "0.0.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "CPCM2.mycp.lab"
Add-DnsServerResourceRecordA -Name "CPCXL" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.0.0.1" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "1" -ZoneName "0.0.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "CPCXL.mycp.lab"
Add-DnsServerResourceRecordA -Name "LeftHost" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.10.10.10" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "10" -ZoneName "10.10.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "LeftHost.mycp.lab"
Add-DnsServerResourceRecordA -Name "DMZSRV" -ZoneName "mycp.lab" -AllowUpdateAny -IPv4Address "10.30.30.5" -TimeToLive 01:00:00
Add-DnsServerResourceRecordPtr -Name "5" -ZoneName "30.30.10.in-addr.arpa" -AllowUpdateAny -TimeToLive 01:00:00 -AgeRecord -PtrDomainName "DMZSRV.mycp.lab"
ECHO off
REM "This script creating linked clones of CPBASE and WINBASE VMs on LabHost PC."
ECHO Creating linked clones of CPBASE and WINBASE VMs on LabHost PC...
PATH|find /i "Oracle\VirtualBox" >nul || set path=%PATH%;C:\Program Files\Oracle\VirtualBox
VBoxManage clonevm WINBASE --snapshot "Snapshot 1" --options link --name LeftHost --register
VBoxManage modifyvm "LeftHost" --nic1 intnet
VBoxManage modifyvm "LeftHost" --nictype1 82540EM
VBoxManage modifyvm "LeftHost" --macaddress1 auto
VBoxManage modifyvm "LeftHost" --cableconnected1 on
VBoxManage modifyvm "LeftHost" --intnet1 Net_10.10.10.0
VBoxManage clonevm WINBASE --snapshot "Snapshot 1" --options link --name RightHost --register
VBoxManage modifyvm "RightHost" --nic1 intnet
VBoxManage modifyvm "RightHost" --nictype1 82540EM
VBoxManage modifyvm "RightHost" --macaddress1 auto
VBoxManage modifyvm "RightHost" --cableconnected1 on
VBoxManage modifyvm "RightHost" --intnet1 Net_172.16.16.0
VBoxManage clonevm WINBASE --snapshot "Snapshot 1" --options link --name DMZSRV --register
VBoxManage modifyvm "DMZSRV" --nic1 intnet
VBoxManage modifyvm "DMZSRV" --nictype1 82540EM
VBoxManage modifyvm "DMZSRV" --macaddress1 auto
VBoxManage modifyvm "DMZSRV" --cableconnected1 on
VBoxManage modifyvm "DMZSRV" --intnet1 Net_10.30.30.0
VBoxManage clonevm WINBASE --snapshot "Snapshot 1" --options link --name ADDCDNS --register
VBoxManage modifyvm "ADDCDNS" --nic1 intnet
VBoxManage modifyvm "ADDCDNS" --nictype1 82540EM
VBoxManage modifyvm "ADDCDNS" --macaddress1 auto
VBoxManage modifyvm "ADDCDNS" --cableconnected1 on
VBoxManage modifyvm "ADDCDNS" --intnet1 Net_10.20.20.0
VBoxManage clonevm WINBASE --snapshot "Snapshot 1" --options link --name SmartConsole --register
VBoxManage modifyvm "SmartConsole" --memory 4096 --vram 128
VBoxManage modifyvm "SmartConsole" --nic1 intnet
VBoxManage modifyvm "SmartConsole" --nictype1 82540EM
VBoxManage modifyvm "SmartConsole" --macaddress1 auto
VBoxManage modifyvm "SmartConsole" --cableconnected1 on
VBoxManage modifyvm "SmartConsole" --intnet1 Net_10.0.0.0
VBoxManage clonevm CPBASE --snapshot "Snapshot 1" --options link --name CPSMS --register
VBoxManage modifyvm "CPSMS" --memory 6144 --vram 128
VBoxManage modifyvm "CPSMS" --nic1 intnet
VBoxManage modifyvm "CPSMS" --nictype1 82540EM
VBoxManage modifyvm "CPSMS" --macaddress1 auto
VBoxManage modifyvm "CPSMS" --cableconnected1 on
VBoxManage modifyvm "CPSMS" --intnet1 Net_10.0.0.0
VBoxManage clonevm CPBASE --snapshot "Snapshot 1" --options link --name CPCM1 --register
VBoxManage modifyvm "CPCM1" --nic1 intnet
VBoxManage modifyvm "CPCM1" --nictype1 82540EM
VBoxManage modifyvm "CPCM1" --macaddress1 auto
VBoxManage modifyvm "CPCM1" --cableconnected1 on
VBoxManage modifyvm "CPCM1" --intnet1 Net_10.0.0.0
VBoxManage modifyvm "CPCM1" --nic2 intnet
VBoxManage modifyvm "CPCM1" --nictype2 82540EM
VBoxManage modifyvm "CPCM1" --macaddress2 auto
VBoxManage modifyvm "CPCM1" --cableconnected2 on
VBoxManage modifyvm "CPCM1" --intnet2 Net_10.10.10.0
VBoxManage modifyvm "CPCM1" --nic3 intnet
VBoxManage modifyvm "CPCM1" --nictype3 82540EM
VBoxManage modifyvm "CPCM1" --macaddress3 auto
VBoxManage modifyvm "CPCM1" --cableconnected3 on
VBoxManage modifyvm "CPCM1" --intnet3 Net_10.20.20.0
VBoxManage modifyvm "CPCM1" --nic4 intnet
VBoxManage modifyvm "CPCM1" --nictype4 82540EM
VBoxManage modifyvm "CPCM1" --macaddress4 auto
VBoxManage modifyvm "CPCM1" --cableconnected4 on
VBoxManage modifyvm "CPCM1" --intnet4 Net_192.168.255.0
VBoxManage modifyvm "CPCM1" --nic5 intnet
VBoxManage modifyvm "CPCM1" --nictype5 82540EM
VBoxManage modifyvm "CPCM1" --macaddress5 auto
VBoxManage modifyvm "CPCM1" --cableconnected5 on
VBoxManage modifyvm "CPCM1" --intnet5 Net_200.100.0.0
VBoxManage modifyvm "CPCM1" --nic6 intnet
VBoxManage modifyvm "CPCM1" --nictype6 82540EM
VBoxManage modifyvm "CPCM1" --macaddress6 auto
VBoxManage modifyvm "CPCM1" --cableconnected6 on
VBoxManage modifyvm "CPCM1" --intnet6 Net_10.30.30.0
VBoxManage clonevm CPBASE --snapshot "Snapshot 1" --options link --name CPCM2 --register
VBoxManage modifyvm "CPCM2" --nic1 intnet
VBoxManage modifyvm "CPCM2" --nictype1 82540EM
VBoxManage modifyvm "CPCM2" --macaddress1 auto
VBoxManage modifyvm "CPCM2" --cableconnected1 on
VBoxManage modifyvm "CPCM2" --intnet1 Net_10.0.0.0
VBoxManage modifyvm "CPCM2" --nic2 intnet
VBoxManage modifyvm "CPCM2" --nictype2 82540EM
VBoxManage modifyvm "CPCM2" --macaddress2 auto
VBoxManage modifyvm "CPCM2" --cableconnected2 on
VBoxManage modifyvm "CPCM2" --intnet2 Net_10.10.10.0
VBoxManage modifyvm "CPCM2" --nic3 intnet
VBoxManage modifyvm "CPCM2" --nictype3 82540EM
VBoxManage modifyvm "CPCM2" --macaddress3 auto
VBoxManage modifyvm "CPCM2" --cableconnected3 on
VBoxManage modifyvm "CPCM2" --intnet3 Net_10.20.20.0
VBoxManage modifyvm "CPCM2" --nic4 intnet
VBoxManage modifyvm "CPCM2" --nictype4 82540EM
VBoxManage modifyvm "CPCM2" --macaddress4 auto
VBoxManage modifyvm "CPCM2" --cableconnected4 on
VBoxManage modifyvm "CPCM2" --intnet4 Net_192.168.255.0
VBoxManage modifyvm "CPCM2" --nic5 intnet
VBoxManage modifyvm "CPCM2" --nictype5 82540EM
VBoxManage modifyvm "CPCM2" --macaddress5 auto
VBoxManage modifyvm "CPCM2" --cableconnected5 on
VBoxManage modifyvm "CPCM2" --intnet5 Net_200.100.0.0
VBoxManage modifyvm "CPCM2" --nic6 intnet
VBoxManage modifyvm "CPCM2" --nictype6 82540EM
VBoxManage modifyvm "CPCM2" --macaddress6 auto
VBoxManage modifyvm "CPCM2" --cableconnected6 on
VBoxManage modifyvm "CPCM2" --intnet6 Net_10.30.30.0
VBoxManage clonevm CPBASE --snapshot "Snapshot 1" --options link --name CPGW --register
VBoxManage modifyvm "CPGW" --nic1 intnet
VBoxManage modifyvm "CPGW" --nictype1 82540EM
VBoxManage modifyvm "CPGW" --macaddress1 auto
VBoxManage modifyvm "CPGW" --cableconnected1 on
VBoxManage modifyvm "CPGW" --intnet1 Net_200.200.0.0
VBoxManage modifyvm "CPGW" --nic2 intnet
VBoxManage modifyvm "CPGW" --nictype2 82540EM
VBoxManage modifyvm "CPGW" --macaddress2 auto
VBoxManage modifyvm "CPGW" --cableconnected2 on
VBoxManage modifyvm "CPGW" --intnet2 Net_172.16.16.0
VBoxManage list vms





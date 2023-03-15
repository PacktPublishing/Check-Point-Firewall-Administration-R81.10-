REM "This script must be used to create CPBASE VM on AMD-based LabHost PC."
ECHO Creating Check Point CPBASE VM on LabHost with AMD CPU...
PATH|find /i "Oracle\VirtualBox" >nul || set path=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=CPBASE
SET VMFILESPATH=%homedrive%%homepath%\VirtualBox VMs
REN C:\CPBook\LabShare\ISOs_and_OVAs\Check_Point_R81.*.iso CPBASEEVAL.iso
VBoxManage createvm --name %VM% --ostype RedHat_64 --register
CD %VMFILESPATH%\%VM%\
VBoxManage createhd --filename %VM%.vdi --size 81920
VBoxManage storagectl %VM% --name "IDE" --add IDE --controller PIIX4
VBoxManage storageattach %VM% --storagectl "IDE" --port 0 --device 0 --type dvddrive --medium "C:\CPBook\LabShare\ISOs_and_OVAs\CPBASEEVAL.iso"
VBoxManage storagectl %VM% --name "SATA" --add SAS --controller LsiLogicSas
VBoxManage storageattach %VM% --storagectl "SATA" --port 0 --device 0 --type hdd --medium %VM%.vdi
VBoxManage modifyvm %VM%  --boot1 disk --boot2 DVD --boot3 none --boot4 none
VBoxManage modifyvm %VM% --cpus 4
VBoxManage modifyvm %VM% --memory 4096 --vram 128
VBoxManage modifyvm %VM% --hwvirtex on
VBoxManage modifyvm %VM% --nested-hw-virt on
VBoxManage modifyvm %VM% --ioapic on
VBoxManage modifyvm %VM% --pae off
VBoxManage modifyvm %VM% --acpi on
VBoxManage modifyvm %VM% --paravirtprovider none
VBoxManage modifyvm %VM% --nestedpaging on
VBoxManage modifyvm %VM% --keyboard ps2
VBoxManage modifyvm %VM% --uart1 0x03F8 4
VBoxManage modifyvm %VM% --uartmode1 disconnected
VBoxManage modifyvm %VM% --uarttype1 16550A
VBoxManage modifyvm %VM% --nic1 intnet
VBoxManage modifyvm %VM% --nictype1 82540EM
VBoxManage modifyvm %VM% --macaddress1 auto
VBoxManage modifyvm %VM% --cableconnected1 on
VBoxManage modifyvm %VM% --intnet1 Net_DeadEnd
VBoxManage modifyvm %VM% --graphicscontroller vmsvga
VBoxManage startvm %VM% --type gui
CD C:\CPBook\LabShare\Scripts\

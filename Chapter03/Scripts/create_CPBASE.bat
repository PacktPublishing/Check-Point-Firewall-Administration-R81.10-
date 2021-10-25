SET PATH=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=CPBASE
REN C:\CPBook\LabShare\ISOs_and_OVAs\Check_Point_R81.10_*.iso CPBASEEVAL.iso
VBoxManage createhd --filename %VM%.vdi --size 40960
VBoxManage createvm --name %VM% --ostype RedHat_64 --register
VBoxManage storagectl %VM% --name "IDE" --add IDE --controller PIIX4
VBoxManage storageattach %VM% --storagectl "IDE" --port 0 --device 0 --type dvddrive --medium "C:\CPBook\LabShare\ISOs_and_OVAs\CPBASEEVAL.iso"
VBoxManage storagectl %VM% --name "SATA" --add SAS --controller LsiLogicSas
VBoxManage storageattach %VM% --storagectl "SATA" --port 0 --device 0 --type hdd --medium %VM%.vdi
VBoxManage modifyvm %VM% --cpus 4
VBoxManage modifyvm %VM% --ioapic on
VBoxManage modifyvm %VM% --paravirtprovider none
VBoxManage modifyvm %VM% --nestedpaging on
VBoxManage modifyvm %VM%  --boot1 disk --boot2 DVD --boot3 none --boot4 none
VBoxManage modifyvm %VM% --memory 4096 --vram 128
VBoxManage modifyvm %VM% --keyboard ps2
VBoxManage modifyvm %VM% --nic1 intnet
VBoxManage modifyvm %VM% --nictype1 82540EM
VBoxManage modifyvm %VM% --macaddress1 auto
VBoxManage modifyvm %VM% --cableconnected1 on
VBoxManage modifyvm %VM% --intnet1 Net_DeadEnd
VBoxManage modifyvm %VM% --graphicscontroller vmsvga
VBoxManage modifyvm %VM% --acpi on
VBoxManage modifyvm %VM% --pae off
VBoxManage startvm %VM% --type gui

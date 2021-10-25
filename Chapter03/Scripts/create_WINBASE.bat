SET PATH=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=WINBASE
REN C:\CPBook\LabShare\ISOs_and_OVAs\*SERVER_EVAL_x64FRE*.iso WINBASEEVAL.iso
VBoxManage createhd --filename %VM%.vdi --size 40960
VBoxManage createvm --name %VM% --ostype "Windows2019_64" --register
VBoxManage storagectl %VM% --name "SATA Controller" --add sata --controller IntelAHCI
VBoxManage storageattach %VM% --storagectl "SATA Controller" --port 0 --device 0 --type hdd --medium %VM%.vdi
VBoxManage storageattach %VM% --storagectl "SATA Controller" --port 1 --device 0 --type dvddrive --medium emptydrive
VBoxManage modifyvm %VM% --ioapic on
VBoxManage modifyvm %VM%  --boot2 disk --boot1 dvd --boot3 none --boot4 none
VBoxManage modifyvm %VM% --memory 2048 --vram 128
VBoxManage modifyvm %VM% --nic1 intnet
VBoxManage modifyvm %VM% --nictype1 82540EM
VBoxManage modifyvm %VM% --macaddress1 auto
VBoxManage modifyvm %VM% --cableconnected1 on
VBoxManage modifyvm %VM% --intnet1 Net_DeadEnd
VBoxManage modifyvm %VM% --graphicscontroller vboxsvga
VBoxManage modifyvm %VM% --usbxhci on
VBoxManage modifyvm %VM% --mouse usbtablet
VBoxManage sharedfolder add %VM% --name "Labshare" --hostpath "C:\CPBook\LabShare\" --automount --auto-mount-point F:
VBoxManage modifyvm %VM% --clipboard-mode=bidirectional
VBoxManage modifyvm %VM% --draganddrop=bidirectional
VBoxManage modifyvm %VM% --nested-hw-virt on
VBoxManage modifyvm %VM% --pae off
VBoxManage unattended install %VM% --iso=C:\CPBook\LabShare\ISOs_and_OVAs\WINBASEEVAL.iso --image-index=2 --user=Administrator --password=CPL@b8110 --install-additions
VBoxManage startvm %VM% --type gui

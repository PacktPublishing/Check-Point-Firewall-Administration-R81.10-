SET PATH=%PATH%;C:\Program Files\Oracle\VirtualBox
VBoxManage import C:\CPBook\LabShare\ISOs_and_OVAs\vyos-1.1.8-amd64.ova --vsys 0 --vmname Router
VBoxManage modifyvm "Router" --nic2 intnet
VBoxManage modifyvm "Router" --nictype2 82540EM
VBoxManage modifyvm "Router" --macaddress2 auto
VBoxManage modifyvm "Router" --cableconnected2 on
VBoxManage modifyvm "Router" --intnet2 Net_200.100.0.0
VBoxManage modifyvm "Router" --nic3 intnet
VBoxManage modifyvm "Router" --nictype3 82540EM
VBoxManage modifyvm "Router" --macaddress3 auto
VBoxManage modifyvm "Router" --cableconnected3 on
VBoxManage modifyvm "Router" --intnet3 Net_200.200.0.0
VBoxManage modifyvm "Router" --graphicscontroller vmsvga

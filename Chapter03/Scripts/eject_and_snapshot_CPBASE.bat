SET PATH=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=CPBASE1
VBoxManage storageattach %VM% --storagectl "IDE" --port 0 --device 0 --medium emptydrive
VBoxManage snapshot %VM% take "Snapshot 1" --description "Do NOT delete!!! This snapshot is used to spawn the linked clones of all Check Point components in the lab."


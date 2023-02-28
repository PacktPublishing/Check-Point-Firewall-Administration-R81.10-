@ECHO OFF
REM "This script ejecting attached media and creating snapshot of CPBASE VM on LabHost PC."
ECHO Ejecting media and creating snapshot of CPBASE VM on LabHost PC...
PATH|find /i "Oracle\VirtualBox" >nul || set path=%PATH%;C:\Program Files\Oracle\VirtualBox
SET VM=CPBASE
VBoxManage storageattach %VM% --storagectl "IDE" --port 0 --device 0 --medium emptydrive
VBoxManage snapshot %VM% take "Snapshot 1" --description "Do NOT delete!!! This snapshot is used to spawn the linked clones of all Check Point components in the lab."

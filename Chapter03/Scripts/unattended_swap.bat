REM "This script will replace the original unattended installation file with the version modified for evaluation ISO"
RENAME "C:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_nt6_unattended.xml" win_nt6_unattended_backup1.xml
COPY C:\CPBook\LabShare\Scripts\win_nt6_unattended.xml "C:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_nt6_unattended.xml"

 
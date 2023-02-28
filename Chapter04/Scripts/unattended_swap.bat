@ECHO OFF
REM Execute this script from elevated command prompt, i.e. CMD "Run as Administrator"
REM "This script will replace the original unattended installation file with the version modified for evaluation ISO"
ECHO "Replacing the original unattended installation file with the version modified for evaluation ISO..."
@ECHO OFF
net session > NUL 2>&1 
if NOT %ERRORLEVEL% EQU 0 goto NotAdmin 
ECHO Executing from elevated command prompt
RENAME "C:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_nt6_unattended.xml" win_nt6_unattended_backup_%time:~0,2%%time:~3,2%%time:~6,2%_%date:~-10,2%%date:~-7,2%%date:~-4,4%.xml
COPY C:\CPBook\LabShare\Scripts\win_nt6_unattended.xml "C:\Program Files\Oracle\VirtualBox\UnattendedTemplates\win_nt6_unattended.xml" 
goto End 
:NotAdmin 
ECHO !!!This command prompt is NOT ELEVATED!!! 
:End

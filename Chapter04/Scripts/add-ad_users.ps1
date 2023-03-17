New-ADUser -Name "cpauth" -UserPrincipalName "cpauth@mycp.lab" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "itadmin" -UserPrincipalName "itadmin@mycp.lab" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADUser -Name "hruser" -UserPrincipalName "hruser@mycp.lab" -AccountPassword(Read-Host -AsSecureString "Input Password") -Enabled $true
New-ADGroup -Name "IT_Admins" -SamAccountName IT_Admins -GroupCategory Security -GroupScope Global -DisplayName "IT_Admins" -Path "CN=Users,DC=mycp,DC=lab"
New-ADGroup -Name "HR" -SamAccountName HR -GroupCategory Security -GroupScope Global -DisplayName "HR" -Path "CN=Users,DC=mycp,DC=lab"
Add-ADGroupMember -Identity IT_Admins -Members itadmin
add-adgroupMember -Identity HR -Members hruser

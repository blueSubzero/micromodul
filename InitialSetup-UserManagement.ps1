
#Check local user profiles - CimInstance
Get-CimInstance -Class Win32_UserProfile | Select-Object SID,LocalPath


#Delete local user profile - CimInstance
Get-CimInstance -Class Win32_UserProfile | Where-Object { $_.LocalPath.split('\')[-1] -eq 'MarioP' } | Remove-CimInstance

#Check registry key
Get-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\S-1-5-21-2163110324-3583074597-690203490-1004'

#Remove registry key
Remove-Item -Path 'HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\ProfileList\S-1-5-21-2163110324-3583074597-690203490-1008'

#Check all local users
Get-LocalUser

#Check user properties
Get-LocalUser -Name samy | Select-Object *

#Check local groups
Get-LocalGroup

#Check all user in the admin group
Get-LocalGroupMember -Group Administrators

#Check all user in the local admin group
Get-LocalGroupMember -Group Administratoren

#Check all users in the local user group
Get-LocalGroupMember -Group Users

#Add user to the local group
Get-LocalGroupMember -Group Administrators -Member mario | Add-LocalGroupMember -Group users -Verbose

#Remove aacount from the local admin group
Remove-LocalGroupMember -Group Administratoren -Member mario-admin

#Delete user account
Remove-LocalUser -Name MarioP -Verbose

#Disable accout
Disable-LocalUser -Name Gast -Verbose

#Add user to the admin group
Add-LocalGroupMember -Member Sam -Group Administratoren

#List users
Get-WmiObject -class win32_userAccount

#Create user
New-LocalUser -FullName Mr Sam -AccountNeverExpires -NoPassword -Description 'Cleaning purpose'

#Disable built-in accounts
net user
net user DefaultAccount /active:no
net user Administrator /active:no

#Rename user accout
$UserName = "Samy"
$FullName = "Jackson"
Get-LocalUser -Name $UserName | Set-LocalUser -FullName $FullName
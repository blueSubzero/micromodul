Get-LocalUser
Get-LocalUser | Select-Object *
Get-LocalGroup
Get-LocalGroupMember -Group Administrators
Get-LocalGroupMember -Group Users
Get-LocalGroupMember -Group Administrators -Member mario | Add-LocalGroupMember -Group users -Verbose
#Remove-LocalGroupMember -Group Administrators -Member mario
#Disable-LocalUser -Name Administrator -Verbose

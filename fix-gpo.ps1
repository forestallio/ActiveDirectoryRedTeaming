$domain = Get-ADDomain | Select-Object -ExpandProperty ParentDomain
$domain_dn = Get-ADDomain | Select-Object -ExpandProperty DistinguishedName
New-GPLink -Domain $domain -Name "Disable Security Features" -Target $domain_dn
New-GPLink -Domain $domain -Name "Update Local Group Memberships" -Target $domain_dn

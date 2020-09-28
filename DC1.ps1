Add-WindowsFeature AD-Domain-Services
#Set password
$Password= 'asferw;jsdfiweke1_'
#SafeModeAdministratorPassword
$SMAP = ConvertTo-SecureString  $Password -AsPlainText -Force

Install-ADDSForest -DomainName maxxxr.local -InstallDNS -DomainMODE Win2012R2 -ForestMode Win2012R2 -SafeModeAdministratorPassword $SMAP -NoRebootOnCompletion -Confirm -Force

restart-computer

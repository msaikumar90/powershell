param()
$pwdprod = -PWD-PROD

#Define Sitecode Name
$Sitecode = (Read-Host 'Input Sitecode name:') 

#Defining the name of the OU. This needs an administrator’s input.

New-ADGroup -Name $sitecode $pwdprod test1_grp -GroupCategory Security -Path "OU=qlp,OU=aws-site,DC=iatest,DC=com"

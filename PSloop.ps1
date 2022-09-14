$x= (Read-Host "Is the site using Dragon or Batch or None?")

if ($x -eq Dragon) {
	New-ADGroup -Name $Sitecode-PWP-PROD-VD -GroupCategory Security -Path "OU=$Sitecode, OU=qlp,OU=aws-ssite, DC=iatest, DC=com" -GroupScope Global 
	New-ADGroup -Name $Sitecode-PWP-TEST-VD -GroupCategory Security -Path "OU=$Sitecode, OU=qlp,OU=aws-ssite, DC=iatest, DC=com" -GroupScope Global

}
else {
	if ($x -eq Batch) {

	New-ADGroup -Name $Sitecode-PWP-PROD-BAT -GroupCategory Security -Path "OU=$Sitecode, OU=qlp,OU=aws-ssite, DC=iatest, DC=com" -GroupScope Global 

}
	else {
		echo "Thank you! You have a good day."
}
}

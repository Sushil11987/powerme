#$xml=[xml](Get-Content "C:\Users\MSI_Sushil\Downloads\SK2WTQ00000094.xml")



Write-Progress -Status "Scripting..." -Activity "Running.."
$cheader="<h2> Difference value is generated below:</br>"
$xml=[xml](Get-Content "C:\Users\MSI_Sushil\Downloads\diff_qa1_qa5_SK2WTQ00000103_sowXML.xml")
$citems=$xml.xmldiff.node.node.innertext
$clitems=$xml.xmldiff.node.node.innertext.Length
foreach($citem in $citems) 
{
$clines+="</br><p>-> $citem </p>"
}
$clines=$cheader+$clines
$csshead=Get-Content "C:\Users\MSI_Sushil\Downloads\mydiff.txt"
$clinkview="<a href=C:\Users\MSI_Sushil\Downloads\diff_qa1_qa5_SK2WTQ00000103_sowXML.xml> View xml difference.</a>"
ConvertTo-Html -Head $csshead  -Title "Difference xml data" -PostContent $clines -Body $clinkview| Out-File "C:\Users\MSI_Sushil\Downloads\textedmegit.html"
$clines=$null
$end
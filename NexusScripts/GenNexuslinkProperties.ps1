$csv = Import-Csv "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean2.csv" 

foreach ($line in $csv) { 
$output = "repository=burl-broadcast`r`ngroup="
$output += $line.Group
$output += "`r`nartifact="
$output += $line.ArtifactID
$output += "`r`nversion="
$output += $line.Version
$output += "`r`nextension=zip"
$dest = "C:\Dev\WG_Mainline_Git_Clean(2)-Good\WG_Mainline_Git_Clean"
$dest += $line.Path
cd $dest
$output
New-Item -Name "nexuslink.properties" -ItemType file -Value $output -Force
}

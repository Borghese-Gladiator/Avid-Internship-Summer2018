New-Item C:\Users\Administrator\Desktop\NexuslinkPropertiesFiles -Itemtype directory -Force
$dest = "C:\Users\Administrator\Desktop\NexuslinkPropertiesFiles"
$csv = Import-Csv "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean2.csv" 

foreach ($line in $csv) { 
$tempDest
$tempDest = $dest
$tempDest += $line.Path
New-Item -ItemType Directory -Force -Path $tempDest
$tempFrom = "S:"
$tempFrom += $line.Path
$tempFrom += "\*"
Copy-Item $tempFrom -Include "nexuslink.properties" –destination $tempDest -Recurse -Force
}
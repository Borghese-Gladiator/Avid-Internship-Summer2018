#Unpackage nexuslink.properties
$csv = Import-csv "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean2.csv"

foreach ($line in $csv) {
$dest = "C:\Dev\WG_Mainline_Git_Clean"
$dest += $line.Path
$from = "C:\Users\Administrator\Downloads"
$from += $line.Path

Copy-Item $from -Destination $dest -Recurse -Include nexuslink.properties
}
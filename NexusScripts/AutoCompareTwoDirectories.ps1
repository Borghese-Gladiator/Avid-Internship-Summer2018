#Steps to Use
#1. Input path of .csv file with files you want to check
#2. Input working source tree in $p2
#3. Choose output to console or to file (path required)

#Clear-Content -Path C:\Users\Administrator\Desktop\debug.txt
$csv = Import-Csv "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean2.csv"
foreach ($line in $csv) {
$p1 = "S:" 
$p1 += $line.Path 
$p2 = "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean"
$p2 += $line.Path

$SourceDocs = Get-ChildItem –Path $p1 -recurse| where {! $_.PSIsContainer}
$DestDocs = Get-ChildItem –Path $p2  -recurse | where {! $_.PSIsContainer}

$p1Output = "p1 = "
$p1Output += $p1
$p1Output += " ====="
$p2Output = "p2 = "
$p2Output += $p2
$p2Output += " ====="

#Output to file should u choose
$p1Output #| Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p2Output #| Out-File C:\Users\Administrator\Desktop\debug.txt -append
Compare-Object -ReferenceObject $SourceDocs -DifferenceObject $DestDocs #| Out-File C:\Users\Administrator\Desktop\debug.txt -append
}
Import-Csv "C:\Users\Administrator\Desktop\test.csv" -Header One,Two,Three |  ForEach-Object {
Write-Host $_.One
"Hello World"
}

Write-Host "Timmy"

$csv = Import-Csv "C:\Users\Administrator\Desktop\test.csv"
foreach ($line in $csv) { 
Write-Host $line.One
"Hello World"
}
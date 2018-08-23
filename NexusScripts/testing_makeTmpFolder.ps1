$p2 = "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean"
$p2 += "\doc\InterplayPortal"

$test = Get-ChildItem $p2 -File
Write-Host "Test = " $test " ======="

$test2 = Get-ChildItem "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean\doc\Help"
Write-Host $test2

$test3 = Get-ChildItem "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean\doc\InterplayPortal" -Recurse -Force
Write-Host $test3
#Loop through each file
$files = get-childitem  "C:\Users\Administrator\Desktop\temp\WG_Mainline_Git_Clean\doc\InterplayPortal" -recurse | where {! $_.PSIsContainer}
foreach ($file in $files) {
 Write-Host $file.Name
}

<#$test2 = $p2 
$test2 += "\*"
$test2 = Get-Content $test2
Write-Host "Test2 = " $test2 " ======"

foreach($item in $p2) {
Write-Host $item 
}

$DestDocs = Get-ChildItem $p2 
Write-Host "DestDocs = " $DestDocs " ======"

$files = $DestDocs| foreach  {Get-FileHash –Path $_.FullName}
Write-Host "DestDocs = " $DestDocs " ======"
Write-host "Files = " $files " ====="

Get-ChildItem $p2 | Foreach-Object -Filter *.pdf{
    $content = Get-Content $_.FullName
    Write-Host $content
}

$prev = $p2
while ($p2 -eq "Directory") {
$p2 += 
}

#Get Foldernames into Variable for ForEach Loop
$DFSFolders = get-childitem -path "c:\temp\dfs" | where-object {$_.Psiscontainer -eq "True"} |select-object name

#Loop through folders in Directory
foreach ($DFSfolder in $DFSfolders)
{
#For Each Folder obtain objects in a specified directory, recurse then filter for .sft file type, obtain the filename, then group, sort and eventually show the file name and total incidences of it.
get-childitem -path "c:\temp\dfs\$($DFSfolder.name)\Apps" -recurse -filter *.sft | select-object name | group {$_.name} | sort name | select-object name,count | export-csv c:\top50.csv

}
#>
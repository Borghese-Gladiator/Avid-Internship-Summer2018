Clear-Content -Path C:\Users\Administrator\Desktop\debug.txt
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jdk\1.8u102\OpenJDK-jdk-1.8u102_mac_x64"
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jdk\1.8u102\OpenJDK-jdk-1.8u102_mac_x64"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jdk\1.8u102\OpenJDK-jdk-1.8u102_win_x64\"
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jdk\1.8u102\OpenJDK-jdk-1.8u102_win_x64\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2| Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.7u80\OpenJDK-jre-1.7u80_mac_x64\"
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.7u80\OpenJDK-jre-1.7u80_mac_x64\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2| Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.7u80\OpenJDK-jre-1.7u80_win_x64\"
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.7u80\OpenJDK-jre-1.7u80_win_x64\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.8u102\OpenJDK-jre-1.8u102_mac_x64\"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.8u102\OpenJDK-jre-1.8u102_mac_x64\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.8u102\OpenJDK-jre-1.8u102_win_x64\"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\jre\1.8u102\OpenJDK-jre-1.8u102_win_x64\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\bootstrap\OpenJDK\src\1.8u102\OpenJDK-src-1.8u102\"
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\bootstrap\OpenJDK\src\1.8u102\OpenJDK-src-1.8u102\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\Apache-Commons"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\Apache-Commons"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\Apache-Xerces-J"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\Apache-Xerces-J"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\boost"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\boost"
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\CodePlex\VisualLeakDetector"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\CodePlex\VisualLeakDetector"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\cppunit"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\cppunit"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\log4cplus-1.1.1\"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\log4cplus-1.1.1\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\sourceforge\findbugs"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\sourceforge\findbugs"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\external\xerces-c-3.1.1"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\external\xerces-c-3.1.1"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\IPC\RemoteNewsCutter\external\Apache"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\IPC\RemoteNewsCutter\external\Apache"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\IPC\RemoteNewsCutter\stage"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\IPC\RemoteNewsCutter\stage"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\transfer_tool\TransferManagerUI\java\images"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\transfer_tool\TransferManagerUI\java\images"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\twk_sharedbuilds\mac\xerces-c-3.1.1\xcode"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\twk_sharedbuilds\mac\xerces-c-3.1.1\xcode"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\twk_sharedbuilds\win\Xerces-c-3.1.1\x64_vc141"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\twk_sharedbuilds\win\Xerces-c-3.1.1\x64_vc141"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\twk_sharedbuilds\win\Xerces-c-3.1.1\x64_vc141_wchar_t"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\twk_sharedbuilds\win\Xerces-c-3.1.1\x64_vc141_wchar_t"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\projects\BrokerLauncher"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\projects\BrokerLauncher"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\support\AvidEditorBroker\HSQL_db"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\support\AvidEditorBroker\HSQL_db"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\support\AvidEditorBroker\MacOSX\HSQL_db"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\support\AvidEditorBroker\MacOSX\HSQL_db"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\support\images"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\support\images"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\support\InterplaySphere\HSQL_db"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\support\InterplaySphere\HSQL_db"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\dms\broker\support\InterplaySphere\MacOSX\HSQL_db\"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\dms\broker\support\InterplaySphere\MacOSX\HSQL_db\"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\Tools\CheckCopyRight\dist"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\Tools\CheckCopyRight\dist"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\Tools\corruptMXFScanner"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\Tools\corruptMXFScanner"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
$p1 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean\workgroups\Tools\DnxDecoder"	
$p2 = Get-ChildItem -Recurse -path "\WG_Mainline_Git_Clean(2)\WG_Mainline_Git_Clean\workgroups\Tools\DnxDecoder"
Compare-Object -ReferenceObject $p1 -DifferenceObject $p2 | Out-File C:\Users\Administrator\Desktop\debug.txt -append
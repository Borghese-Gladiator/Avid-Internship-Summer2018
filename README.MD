Repository Contains Two Projects
1. Powershell scripts to recursively search a directory and package files with certain extensions
2. Profile Manager written with MongoDB
-Allows people to enter information through a REST client

Motivation
1. Created for GitLab migration from ACCUREV and to upload binaries to nexus (and generate nexuslink.properties files)
Tech/framework used:  Powershell ISE
How to use?
1. Configure .ps1 files to meet your needs
2. Run scripts


2. Enable clients to enter their information and retrieve it

Tech/framework used:   Tomcat, Gradle, Java 8, MongoDB

How to use?
1. Start up Tomcat
2. Call functions with URL http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService
  -Add http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/add
  -Retrieve http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/get
  -List All http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/list
  -Delete http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/delete
  -Modify http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/modify
  -Search http://localhost:8080/ProfileManagerMongoDB/rest/ProfileService/search

Timothy_Shee

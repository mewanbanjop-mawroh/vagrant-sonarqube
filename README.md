# Vagrant-Sonarqube
##About
Vagrant script to install SonarQube in Ubuntu/Trusty64

##Minimum Requirements
*"The SonarQube server requires at least 2GB of RAM to run efficiently and 1GB of free RAM for the OS."*
-[*SonarQube*](http://docs.sonarqube.org/display/SONAR/Requirements)

Atleast 4 GB of RAM is required. 
- I am able to run it in a Surface pro 4 (m3 processor with 4 GB ram)

##Installation

* Install virtualbox [https://www.virtualbox.org/wiki/Downloads]
* Install vagrant [https://www.vagrantup.com/downloads.html]
* Clone the repository 
```shell
$ git clone https://github.com/mewanbanjop-mawroh/vagrant-sonarqube.git
```
* Go inside the folder and run vagrant up
```shell
$ cd vagrant-sonarqube
$ vagrant up
```
* Once the virtual machine is done setting up, go to http:\\localhost:9000

##Importing your project

* Download [SonarQube Runner](https://sonarsource.bintray.com/Distribution/sonar-scanner-cli/sonar-scanner-2.6.1.zip)
* Add the `sonar-scanner-<version>/bin` directory to your path.
* Create a properties file with name **sonar-project.properties** in the roor folder of project
* **For different language properties file please refer this link:(https://github.com/SonarSource/sonar-examples/tree/master/projects/languages) and look for sonar-project.properties file.** 
```bash
# must be unique in a given SonarQube instance
sonar.projectKey=<key>:<project_name>
# this is the name displayed in the SonarQube UI
sonar.projectName=<project_name>
sonar.projectVersion=1.0
 
# Path is relative to the sonar-project.properties file. Replace "\" by "/" on Windows.
# Since SonarQube 4.2, this property is optional if sonar.modules is set. 
# If not set, SonarQube starts looking for source code from the directory containing 
# the sonar-project.properties file.
sonar.sources=<src_folder>
 
# Encoding of the source code. Default is default system encoding
#sonar.sourceEncoding=UTF-8
```
 
* After, creating the properties file in root folder run the command below in the root directory
```
$ sonar-scanner
```
##Example *sonar-project.properties* file of a node-js project
```bash
# required metadata
sonar.projectKey=project:node-application
sonar.projectName=Node Application
sonar.projectVersion=1.0.0

# optional description
sonar.projectDescription=This project is a simple node application

# path to source directories (required)
sonar.projectBaseDir=.
sonar.sources=src/js
sonar.exclusions=src/bower_components/*.js

# The value of the property must be the key of the language.
sonar.language=js

# Encoding of the source code
sonar.sourceEncoding=UTF-8

# Coverage
sonar.javascript.lcov.reportPath=reports/lcov.info
sonar.javascript.jstest.reportsPath=reports/PhantomJS_2.1.1_(Windows_8_0.0.0)/JSTEST-units.xml
sonar.tests=test
```

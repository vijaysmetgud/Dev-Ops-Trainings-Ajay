
# Installation Jenkins and Java:-


### How to install java on Centos:-

- yum update
- yum list java*

- From the above list needs to choose below package:-
- java-11-openjdk.x86_64
- java-11-openjdk-devel.x86_64
- sudo alternatives --config java --> to check java version and change it
- Note:- java version should be -11

- yum install java-11-openjdk.x86_64   java-11-openjdk-devel.x86_64
- java , javac 
- java --version

--- 

# How to install jenkins on Centos:-
> Note:- in aws cloud should check under security groups 8080 http port number is enabled or not
if not then we need to enable to work with jenkins UI while checking the ip address with port number

> Note:- should enable port number 80 and 8080 and 443 for ssl 


1. ## [Click Here To Installation Jenkins](https://www.jenkins.io/download/)

- **To download wget command**
- yum install wget

- This below command will download the jenkins repo into below mentioned path 
- -O is mentioned to tel jenkins to download to particular path
- wget -O /etc/yum.repos.d/jenkins.repo https://pkg.jenkins.io/redhat/jenkins.repo

- check whether it is downloaded then out put it will show the jenkins repo details
- ls /etc/yum.repos.d

**import some jenkins packages:-**
- rpm --import https://pkg.jenkins.io/redhat/jenkins.io.key

**now install jenkins:-**
- yum install jenkins

**check jenkins installed and its status by using below command:-**
- #service jenkins status
- #service jenkins start
- #service jenkins stop
- #systemctl status jenkins
- #systemctl start jenkins
- #systemctl stop jenkins

**command to change java version:-** 
- sudo alternatives --config java

**now check with ip address and port number:-**
- eg- http://54.218.53.97:8080/

**when jenkins is working it will ask password should copy from below location:-**
- /var/lib/jenkins/secrets

**copy passowrd and paste into the jenkins url** 

- then click on suggested  plugin

- if needed then we needs to create admin and user name or skip and continue 

- after skip and continue our default user name will admin and password also will be admin

- then click and finish.

--- 


### How to install jenkins on Ubuntu:-
- **Note:-**  in aws cloud should check under security groups 8080 http port number is enabled or not
- if not then we need to enable to work with jenkins UI while checking the ip address with port number

- **Note:-** should enable port number 80 and 8080 and 443 for ssl 

### command to check installed packages on ubuntu
- apt list --installed
- apt search jdk 

### install java package
- apt-get install fontconfig openjdk-11-jre


### First, add the repository key to your system:

- wget -q -O - https://pkg.jenkins.io/debian-stable/jenkins.io.key |sudo gpg --dearmor -o /usr/share/keyrings/jenkins.gpg


- Next, let’s append the Debian package repository address to the server’s sources.list:

- sh -c 'echo deb [signed-by=/usr/share/keyrings/jenkins.gpg] http://pkg.jenkins.io/debian-stable binary/ > /etc/apt/sources.list.d/jenkins.list'


### update ubuntu repo
- apt update 

### Finally install jenkins
- apt install jenkins

### check jenkins installed and its status by using below command
- #service jenkins status
- #service jenkins start
- #service jenkins stop
- #systemctl status jenkins
- #systemctl start jenkins
- #systemctl stop jenkins

### now check with ip address and port number
- eg- http://34.212.133.76:8080/

- when jenkins is working it will ask password should copy from below location
- /var/lib/jenkins/secrets

- copy password and paste into the jenkins url 

- then click on suggested  plugin 

- if needed then we needs to create admin and user name or skip and continue 

- after skip and continue our default user name will admin and password also will be admin

then click and finish.

- command to auto reboot the jenkins when our machine reboots
sudo chkconfig jenkins on

--- 


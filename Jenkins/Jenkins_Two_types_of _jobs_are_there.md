# Jenkins Two types of jobs are there
1. **Free-style** -----> UI interface
2. **Pipeline**		-------> by using script only,we can use.
		
### Here two types of scripts
	1. **declarative** 
	2. **scripted**

---

## 1. Free-style
6 **steps are there:-**
1. **General** - information about job
2. **SCM** - git or any other tool
3. **Build Triggers** - this job is used to set the cron to trigger 
automatically with out button press for build 
build periodically, poll scm and build after other projects are built
4. **Build Env** - 
5. **Build steps** - this is very important all automate build scripts for Linux or windows needs to write here or put there to build it 
6. **post Build** - this is to trigger the alert through E-mail or slack or any other alert mechanism 

---


### Default Jenkins directory which consist all the files and folder its like a heart of the Jenkins software:-
- Jenkins home dir ----> /var/lib/Jenkins

---


### Under manage jenkins below are options available:-

1. configure system
2. global tool configuration
3. manage plugins 
4. manage nodes and clouds 
5. configure global security 
6. manage credentials
8. manage users
9. manage and assign roles 


## Global Tool Configuration:-

  * this is useful to integrate with any tools like maven, git, ant, docker, kubernetes sonar qube


## System Configurations:- 

* this is useful to configure with in the system like E-mal alert and slack alert configuration 

## Manage Plugin:-

* this is useful to install external plugin to support users to work on, to makes users comfort using jenkins UI
* for an Example :- 

    * if we want use git to clone the repo in the jenkins UI under scm
then we need git plugin ...


## Manage Nodes:-

this is useful for manage jenkins jobs to execute on different server called as nodes or slaves


## Configure Global Security:-

* this is useful for security purpose whom should access the jenkins or whom should not access the jenkins and many more:-

  * Role-Base-Strategy plugin 
   * Active Directory plugin 

* will be installing under manage plugins so later when we want manage users and roles their access
we needs to select RBS and AD under configure global security 

## Manage Credentials:-

* here it will be manage and stored all passwords and ssh credentials 

## Manage Users:-

* here we use add or remove new users 

## Manage and Assign Roles

* here we use to create roles for users and assign the roles for users 
also we can create project based roles for users 

---

## To manage users in jenkins RBAC needs to install below plugins:-

1. ### Role-base authorization - plugin 
   * after installing RBA plugin then go to --> global security --> under Authorization select RBAS.
   then on manage jenkins you will get under global security --> manage users and assign roles --> there you can manage and assign the roles also we can create project based role too
   * before that create users in the manage user section under manage plugins   

2. ### Active directory - plugin 
          
   ### Implementing Active Directory:-

* As our organization expands usage of Jenkins, 
we need to implement security and restrictions around your Jenkins 

* AD Integration, allow users to login with their Domain accounts, and manage permissions using the Role Based Security plugin.

## Installing the needed Plugins.
* The first thing you need to do is install the plugins that will be needed to complete this configuration.
The two plugins we are going to use are
    1. ### The Active Directory Plugin
    2. ### The Role-based Authorization Strategy Plugin


## Configure AD Integration:-

* => navigate to the Configure Global Security page under Manage Jenkins
* => Under Security Realm, select the Active Directory radio button
* => then click the Add Domain button which appears to reveal the configuration options pertinent to AD.
* => enter details of users and domain
* => click save
* => test the configuration 
* => then manage and assign roles 
* =>  create roles and assign the roles even we can create project based roles and assign roles 
---


- ## [Jenkins Active Directory Concept click here to know more about](https://www.google.com/search?client=firefox-b-d&q=jnekins+ad+bind)

---


- ## Some Important Details Below Go Through Before Stating Installation:-


> - **BlueOcean:-** this is plugin in jenkins it is very use to see different stages of our jobs running/building, also we can start only the particular stage if we need, so its good plugin, we want to see this then please install blueocean plugin and run your jobs/build using blueocean plugin....

---


> - ## [To much important details are  there like jenkins environment variable - jenkins on all cloud platform dont forget to click this link for more information on jenkins](https://www.jenkins.io/doc/pipeline/tour/environment/)

---

## Jenkins file:-

it is a text file which is consists all our pipeline script which needs to be executed with different stages
like build, test, deploy,

* Jenkins supports entering Pipeline script directly into the classic UI, under build steps 
or we can define our pipeline script in jenkins file and store it in scm/git hub so that add jenkins file name and git url under scm then while building our jobs jenkins will directley load jenkins file from scm and build the job


* if we want to build the code or jobs in multi branch 
then under scm ---> click add and provide multiple branch so that jenkins file will build ur job in multiple branch

---
## Parameters used in pipeline or script:-

* ### any:-
Execute the Pipeline, or stage, on any available agent. For example: agent any
agent any {

}

* ### none:-
 When applied at the top-level of the pipeline block no global agent will be allocated for the entire Pipeline run and each stage section will need to contain its own agent section. For example: agent none
agent none {
	
}

* ### label
Execute the Pipeline, or stage, on an agent available in the Jenkins environment with the provided label. For example: agent { label 'my-defined-label' }

agent {label 'tomcat'}

* ### node
    agent { node { label 'labelName' } } behaves the same as agent { label 'labelName' }, but node allows for additional options (such as customWorkspace).

---	

### Jenkins configuration file location:-

* /etc/sysconfig/jenkins
* incase if we want to change anything like jenkins path or port number, or jenkins home directory --> here we can change it ....
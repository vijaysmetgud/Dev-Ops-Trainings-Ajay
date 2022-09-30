# Groovy Jenkins Pipeline :-


**Jenkins Two types of jobs are there:**

1. *Free-style* -----> UI interface
2. *Pipeline*	-------> by using script only, we can use.
		
**here two types of scripts:**

1. *declarative*
2. *scripted*


## 1. declarative means below example:-
```sh
pipeline{
    agent any
	stages{
	stage('git checkout'){
	steps{
	   git url link

	}//steps
	}/stage 
	}//stages
}//pipeline
```
---

```sh
pipeline{
    agent{label 'Tomcat'}
    tools {
        maven "maven-3.8.6"
        //jdk "openjdk 11.0.16 "
    }
    stages{
        stage('checkout'){
            steps{
                git 'https://github.com/Ajayshady/mvn_shoppingcart.git'
                
            }//steps
        }//stage
        stage('inisttilaise'){
        steps{
            echo "PATH=/opt/apache-maven-3.8.6/bin:$PATH"
        }//steps

        }//stage
        stage('build project'){ 
            steps{ 
               dir("/home/centos/workspace/shoppingcart") {
                sh "mvn clean package"
                }//block
            }//steps
        }//stage
        stage('copy war file to tomcat server'){
            steps{
                sh 'sudo cp  target/*.war  /opt/tomcat-9.0/webapps/'
            }//steps
        }//stage
        
    }
}
```
---


## 2. scripted means below example:-
```sh
     node {
  stage('SCM Checkout'){
    git "https://github.com/Ajayshady/mvn_shoppingcart"
  }
  stage('Complie-Package'){
     def mvnHome = tool name: 'maven-3.8.6', type: 'maven'
     sh "${mvnHome}/bin/mvn clean package"
  }
  stage('Deploy To Tomcat'){
    sshagent(['tomcat-server1']) {
    sh'scp -o StrictHostKeyChecking=no target/* .war centos@52.41.108.254:/opt/tomcat-9.0/webapps/'
    } 
}
  stage('Email-Notification'){
  mail bcc: '', body: '''hi this is jenkins jobs 
  thanks 
  ajay kumar r''', cc: '', from: '', replyTo: '', subject: 'Jenkins Build job', to: 'ajaykumar.matters@gmail.com'
    
  }
  stage('slack-Notification'){
      slackSend channel: 'jenkins jobs alert ', color: 'good ', message: 'jenkins jobs alert', teamDomain: 'jenkins-jobs-demo'
  }
  
}
```
--- 


# Declarative pipeline below example:-

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
        stage('Email-Notification'){
           steps{
            mail bcc: '', body: '''hi this is jenkins jobs 
            thanks 
            ajay kumar r''', cc: '', from: '', replyTo: '', subject: 'Jenkins Build job', to: 'ajaykumar.matters@gmail.com'
           }//steps
        }//stage

        stage('Slack-Notication'){
           steps{
             slackSend channel: 'jenkins jobs alert ', color: 'good ', message: 'jenkins jobs alert', teamDomain: 'jenkins-jobs-demo'
        }//steps
        }//stage
        
    }//stages
}pipeline
```
---






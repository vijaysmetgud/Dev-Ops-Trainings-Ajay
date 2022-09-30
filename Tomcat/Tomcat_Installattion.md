# Tomcat Installattion:-

## 1. Java installation is need
- yum install java
- yum list java*
- yum install java-11-openjdk java-11-openjdk-devel
- Note:- java version should be 11
- sudo alternatives --config java --> command to check

### 2. [Click here to Download Tomcat](https://tomcat.apache.org/download-90.cgi)
   
   - cd /opt
   - wget https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.65/bin/- apache-tomcat-9.0.65.tar.gz
   - tar -zxvf apache-tomcat-9.0.65.tar.gz
   - rm -rf apache-tomcat-9.0.65.tar.gz --->> to save the space i am deleting it 
   - mv apache-tomcat-9.0.65  tomcat-9.0 --> to reconise easy since it is too long name 
   - ./startup.sh --> to start tomcat
   - ./shutdown.sh --> to stop tomcat
   - ./catalina.sh stop/start --> above two commands and this command are same 



3. **needs to give users roles, user id and user password under   conf/ tomcat-users.xml:**
```xml
<role rolename="manager-gui"/>
<user username="admin" password="admin" roles="manager-gui,manager-script,manager-jmx,manager-status"/>
```


4. **needs to add comments to below 4 lines under /opt/tomcat-9.0/webapps/manager/META-INF. context.xml file:**  
```xml
<!--
 <CookieProcessor className="org.apache.tomcat.util.http.Rfc6265CookieProcessor"
                   sameSiteCookies="strict" />
  <Valve className="org.apache.catalina.valves.RemoteAddrValve"
         allow="127\.\d+\.\d+\.\d+|::1|0:0:0:0:0:0:0:1" />
-->
```

5.  **then click on manager App and enter user name and password
    admin and admin:** 

6. **create node for tomcat and configure in jenkins 
   run the job and deploy the war file in tom cat webapss location:** 

   

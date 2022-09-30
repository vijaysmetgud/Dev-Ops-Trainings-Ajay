# Maven Installation in Centos

### 1. [Click here to Download latest maven](https://maven.apache.org/download.cgi)


- $ cd /opt/
- $ wget https://mirrors.estointernet.in/apache/maven/maven-3/3.8.1/-  binaries/apache-maven-3.8.1-bin.tar.gz
- $ tar -zxvf apache-maven-3.8.6-bin.tar.gz

---

### 2. Set the PATH for Maven

- $ cd /etc/profile.d
- $ vi maven.sh
-    export M2_HOME=/opt/apache-maven-3.8.6
-    export PATH=${M2_HOME}/bin:${PATH}

 **Update maven.sh file to kernal:**

- $ cd /etc/profile.d
- $ source maven.sh


### 4. to check environment variable
- echo $M2_HOME
- export PATH=/opt/apache-maven-3.8.6/bin:$PATH
- source .bashrc 

## 5. Build Lifecycle Basics or Maven Goals List
 
      **A Build Lifecycle is Made Up of Phases:**

> Each of these build life cycles is defined by a different list of 
 build phases,wherein a build phase represents a stage in the lifecycle.
> 
>> For example, the default lifecycle comprises of the following phases (for a complete list of the lifecycle phases, refer to the Lifecycle Reference):

    1. validate - validate the project is correct and all necessary information is available
    2. compile - compile the source code of the project
    3. test - test the compiled source code using a suitable unit testing framework. These tests should not require the code be packaged or deployed
    4. package - take the compiled code and package it in its distributable format, such as a JAR.
    5. verify - run any checks on results of integration tests to ensure quality criteria are met
    6. install - install the package into the local repository, for use as a dependency in other projects locally
    7. deploy - done in the build environment, copies the final package to the remote repository for sharing with other developers and projects.

 

 ### 6. [Click here to know Introduction to the Build Lifecycle](https://maven.apache.org/guides/introduction/introduction-to-the-lifecycle.html)

 
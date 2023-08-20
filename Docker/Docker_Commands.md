
# Docker Commands:

## Docker Information Commands:

* command to check docker is install
    
       docker 

* command to check docker version 
    
       docker version or docker --version

* command to check information about docker 
    
       docker info - will print all the system information

* command to clean docker system
    
       docker system prune 
       
       To clean all resources which are dangling or not associated with any docker containers

* command To Log in to a Docker Hub registry 
    
        docker login

* command To logout from Docker Hub Registry
    
           docker logout

### Daemon: 
  * service or system that runs background always 
  * Run the persistent process that manages containers, it runs background always
       * var/log/docker.log 


* All the files will store in this location called: 

   `/var/lib/docker/`   

## Run Commands:

**Synatx:-**

    docker run -itd --name <container_name> <image_name:version> 

* command to run the images in the ibmcloud registry
   
       docker run --name airflow-test -ti -d us.icr.io/map-dev-namespace/airflow:latest tail -f /dev/null

* command to run docker images
   
       docker run --name postgres-test -ti -d localhost/postgres:latest tail -f /dev/null

## Pull Commands:

* command pull the images from docker hub/registry/  or private registry 

       docker pull <registry/repository/domain_name and image_name>

* command to pull the images from the ibmcloud  container registry
   
       docker pull us.icr.io/map-dev-namespace/airflow:latest

## Push Commands:

* command to push the image into registry/repository 
   
       docker push <registry/repository/domain_name and image_name:verion/tag
   
       docker push mmumshad/my-custom-app 

* command to push the docker images ibmcloud registry 

       docker push us.icr.io/map-dev-namespace/postgres:latest

## Container or Image List Commands:

* command to List the docker images
   
       docker images 

* command to list the images externally means in registry/repository/docker hub
   
       docker search <images_name>
 
* command to list top process of the container
    
       docker top ContainerName/ID

* command to give list of images id which is stopped
   
       docker images -q 

* command to search image list of top 10
   
       docker search <image_Name> | head -10

* command to give full details with out terminating
    
         docker search --no-trunc <image_name>


## Docker  build commands:

* command to build docker image
   
       docker build -t localhost/postgres -f DockerfilePostgres .

       docker build -t [username/registory/repositry_name]<image-name>[:tag/version] -f  <dockerfile_name><dockerfile_path>

## Network Command:

* command to create docker network 
    
        docker create network <network_name>
    
        docker create network mongo-network 

* command to list of docker network
    
        docker network ls  

* command to check docker network configuration/network build details
   
       docker network inspect <network_name>
        docker network inspect bridge

* command to list all possible way for network
   
       docker network connect --help

* command to remove the network 
    
       docker network rm <network_Name>

* command to remove all unused docker network
    
       docker network prune network name

* docker network create -d bridge --subnet 10.1.0.0/24 mybridge

```
Here, docker network create is the command to create a network. mybridge is the network name.-d is to specify the type of driver we want to use for this network. bridge is the type of driver. --subnet 10.1.0.0/24 is the CIDR range. So 2 power 32-24 = 254 containers can be connected to this network.
```

* command to assign network to image which is created already

       docker network connect mango-network jenkins-test

       docker network <network_name><image_container_name>

* command to assign network while running image

       docker run -itd --name alpine-test --network=mango-network alpine:latest

## Port Commands:

* docker run -itd --name nginx-test -p 8081:8080 nginx:latest
   
       8081 - on left side port is for host 
   
       8080 - on right side port is for container 


* docker run -p 8080:8080 -p 50000:50000 jenkins:alpine: Starting docker on the port number 8080. here -p indicates assigning host OS port-number to docker container(jenkins)
   Here left side 8080 is host OS port number, right side 8080 is container port number.
   Here we are assigning 8080 port number of Host OS to 8080 of container port number.
   Same for 50000 as well, which is for jenkins API.
   When you click Enter, it will start jenkins with the port number 8080. 
   However, with this command, the data or the jenkins directory, jenkins jobs and all the information of jenkins stored will be deleted when you delete the container.
> 
---
## Logs Commands:-

1.  command to check container logs
    
        docker logs <conatiner_name> or <container_id>

---
## -it and Exec Commands:-


1.  command to execute inside the container
    
        docker exec -it <container_Id>/<container_name> /bin/bash 
    
         docker exec -it postgres-test /bin/bash

2.  command to create the docker container and gets in to that docker container.
    
     docker run -it  nginx:1.23.1 /bin/bash

3.  command to get inside the container and executed some command 
    
        docker exec -it <container_id><container_name> ls /var/jenkins_home

        docker exec -it jenkins-test ls /var/jenkins_home

---
## Tag Commands:-

1.  command to rename image tag with repository/registry 
   
          docker tag 
          [<old_registry_name><image_name_version>]
          [<new_registry_name><image_name_version>]
    
          docker tag localhost/postgres:latest us.icr.io/map-dev-namespace/postgres:latest

2.  command to add just tag to docker image 
    
        docker tag [<registtory_name><image_name_version>]

        docker tag Ajayloacalhost/jenkins:latest

---

## History Commands:- 

1. command to check history of image
   
       docker history <image_name or image_Id>

         docker history nginx:1.23.1
---
## PS Commands:- 

1. command to check running container
   
   docker ps

2. command to check stopped and running container
   
   docker ps -a
---

## Pause and Un pause Commands:-

1. command to pause the container
   
        docker pause <container_name or container_id>

        docker pause nginx

2. command to unpause the container
   
       docker unpause <container_name or container_id>

         docker unpause nginx

3. command to stop, start and restart container 
   
        docker stop,start and restart <container_name or container_id>

        docker stop nginx-test
        docker start nginx-test
         docker restart nginx-test


4. command to Stop a container (timeout = 1 second)
   
       docker stop -t1 <container_name or container_id>

       docker stop -t1 nginx

       only for stop this command will work 
       not for start 
---


## RM Commands:-

1.  command to remove all containers running and stopped by forcefully 
    
        docker rm -f $(docker ps-aq)

        docker rm --force or -f <container_name or container_id>
 
2.  command to remove all stopped container 
    
        docker rm $(docker ps -q -f “status=exited”)

3. command to remove container
    
        docker rm <container_name or container_id> 


4. command to remove docker image
    
       docker rmi <image_name or image_id>

5. command to remove image forcefully 

       docker rmi -f <imageName/imageId>
  

6. command to remove all the images at one time running/stopped images
   
       docker rmi -f $(docker images -q)
   
         podman rm -f $(podman ps -q)
---

## Attach Commands:-

1.  command to work inside the docker container
    
        docker attach <container_name or container_id>

---
## Rename Commands:-

1.  command to rename the container
    
        docker rename [<old_container_name or container_id>][new_container_name or container_id]
---

## Inspect Commands:-

1.  command to show complete information of container in json formate
    
        docker inspect <container_name or container_id>

2.  command to show complete information of image in json formate
    
        docker inspect <image_Name or image_Id> 

---

## Volume Commands:-

1. command to create volume 
   
       docker volume create <volume_name>

2. command to inspect volume
    
        docker volume inspect <volume_name>

3. command to remove volume
    
        docker volume rm <volume_name>

4. command to list the volume
   
        docker volume ls


> 5. ## Volumes definition:-

  Volumes are the preferred mechanism for persisting data generated by and used by Docker containers
   >> - Volumes are used to persist docker container data on Host OS, so we can have the data even if the container is deleted.
   If we don’t provide the physical location for persisting the data, then data will be stored inside the container and data will be deleted when we delete the container...

   ## Volumes can be created in 3 ways:-

   1) **Host volume:** Here we persist the data in a physical location of Host OS/location. So, data will not be deleted when we delete the container...
   
          ex:$ docker run -v /home/mount/data:/var/lib/mysql/data --name postgres-test postgres:latest

          docker run < options -v addressing volume> <Localshost_Path>:<Contianer_Path> <container_name><image_name_version>

   2) **Anonymous/Container volume:** Here we persist the data inside the container. But data will be deleted when we delete the container...
     
          ex: docker run -v /var/lib/mysql/data --name postgres-test postgres

   3) Own Name Volume: in this we are going to give reference the volume by our own name so that it will be easy to remember it..
     
           ex: docker run -v name:/var/lib/mysql/data --name postgres-test postgres
         
          docker run -v Data-DB:/var/lib/mysql/data --name postgres-test postgres 


6. command to give volume possible way/to take help command
     
     docker volume  --help

7. command remove all unused docker volumes
    
           docker volume prune 



**Here we persist the data inside the container. But data will not be deleted when we delete the container:-**

## Bind Mount:-

> 1. docker run --name MyJenkins -p 8080:8080 -p 50000:50000 -v /Users/Mylocation/Desktop/Jenkins_Home:/var/jenkins_home jenkins:alpine
   --name MyJenkins  --> Indicates custom name for the jenkins container.
   If we want to persist the data, then we can use -v option, so that the data will be stored on HOST OS. 
   This data will not be removed, even if you remove the container. 
   After -v the path we have on left side  is: indicates the local path of user HOST OS.
   Right side of path after : indicates the Jenkins path on docker container.

   >>If you run the above command, then it will create a Jenkins_Home directory on your host OS.
   It will write down all the Jenkins related data to Jenkins_Home directory
   Now Jenkins will be up and running. From browser you can access Jenkins with http://localhost:8080

> 2. **Bind Mount:-** A file or directory on the host machine is mounted into a container.
   It means, instead of using volumes we use physical location to persist container data.
   Use below command to use Bind Mount:
   docker run --name MyJenkins3 -v /Users/MyLocation /Desktop/Jenkins_Home:/var/jenkins_home -p 9191:8080 -p 40000:50000 jenkins
>

---

## Creating Links Commands:-

> 1. command to to create link between two containers
   
     docker run --name some-wordpress --link some-mysql:mysql -p 8080:80 -d wordpress
   
    To find these commands, you can search in docker hub With --link we are creating link between wordpress and mysql container
    Verify both the containers are running or not, then Now try to access wordpress with 8080 port number. Here we created dependency/communication/link between 2 containers.
---

## Filter Commands:-

1. using --filter command to containers only many option is there we have used only few below.
   
        docker ps -a --filter “name=jenkins-test”
        
       docker ps -a --filter "name=<container_id_container_name>"

        docker ps -a --filter ‘exited=0’

        this above command is container which is stopped or exited status=0

        docker ps --filter status=running

        this above command is containers which is running 

---

## Dangling images Commands:-

1. Dangling images: Images which are not associated or used by at least 1 running container. 
   
       Dangling images are layers that have no relationship to any tagged images. They no longer serve a purpose and consume disk space.

2. command to check non dangling image
   
       docker images -f “dangling=false”

3. command to check dangling image
   
       docker images -f “dangling=true”

4. command to remove Dangling Docker images
    
         docker image prune 

---

## Import and Export:-

1. command to save or export docker image

       docker save -o nginx.tar nginx

       docker save nginx > nginx.tar

2. command to import or load docker image

       docker load -i nginx.tar

       docker load < nginx.tar

* then we can run the image again to see running container
* we want send to another machine or copy then we can use scp command 

---

### how to enable IPv6 support in docker?
edit /etc/docker/daemon.json and set the ipv6 key to true.
{
"ipv6": true 
}

---
## Quit Command:-

1. command to come out of container id
   
   Ctrl+P+Q
---


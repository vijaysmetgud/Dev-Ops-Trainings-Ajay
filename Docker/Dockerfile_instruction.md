# Dockerfile instruction arguments:-



## FROM:- 
  * this is for on which OS our application should run or Application name 

## MAINTAINER:-
  * Sets the author field of the generated images

## ENV:- 
  * Sets an environment variable means we can define our user id or password or any environmental variables

*  ENV statement sets the environment variables both during the build and when running the result.

* For example, ENV PATH=/usr/local/nginx/bin:$PATH
to set Environmental we can use

## RUN:-
  * To execute any linux command 
  * to create directory inside the container too

## COPY:-
 * Copy any files or directories from our local system into the filesystem of the container 
 * COPY doesn't support URLs as a <src> argument so it can't be used to download files from remote locations.
 * Anything that you want to COPY into the container must be present in the local system.
 * COPY doesn't give any special treatment to archives
 If you COPY an archive file like (tar,zip etc)it will land in the container exactly as it appears in the local system without any attempting to unpack it.

## CMD:- 
* [this means Entry point ]Allowed only once (if many then last one takes effect) so in this case we need to choose option Entrypoint,run as an executable. 

## LABEL:-
  * Labels are key-value pairs and simply adds custom metadata to your Docker Images


## EXPOSE:-
 * Informs container runtime that the container listens on the specified network ports at runtime. but it doesn't mean that docker image will expose 
         the port, while running docker image we need give -p to publish the port to docker image run  

## ADD:-
* if we want to copy some files from the urls to the destiny of ur docker image, then we can use it.
* Example Below:-

   * ADD http://foo.com/bar.go /tmp/main.go
 
     * The file above will be downloaded from the specified URL and added to the container's filesystem at /tmp/main.go.

  * ADD http://foo.com/bar.go /tmp/    

    * The file above will be downloaded from the specified URL and added to the container's filesystem at /tmp/main.go. Another form allows you to simply specify the destination directory for the downloaded file:

* Another feature of ADD is the ability to automatically unpack compressed files.

    * a local file in a recognized compression format (tar, gzip, bzip2, etc) then it is unpacked at the specified <dest> in the container's filesystem.

* Interestingly, the URL download and archive unpacking features cannot be used together. Any archives copied via URL will NOT be automatically unpacked.    


## ENTRYPOINT:-
* we use entrypoint to execute multiple commands inside the container 
*  Allows you to configure a container that will run as an executable
* ENTRYPOINT - ENTRYPOINT has two forms:
* The exec form, which is the preferred form --  ENTRYPOINT ["executable", "param1", "param2"]
* The shell form - ENTRYPOINT command param1 param2
         
## VOLUME:-  
* Creates a mount point and marks it as holding externally mounted volumes from native host or other containers, to store the data 

## USER:-
 * creating new user or group
* The default user in a Dockerfile is the user of the parent image
* For example,
    
    * if your image is derived from an image that uses a non-root user example: swuser

    * then RUN command in your Dockerfile will run as swuser so to overcome this we will use our own root user or any other user by using **USER INSTRUCTION IN Dockerfile**


## WORKDIR:- 

* The WORKDIR command is used to define the working directory of a Docker container at any given time. The command is specified in the Dockerfile.
* Any RUN, CMD, ADD, COPY, or ENTRYPOINT command will be executed in the specified working directory.
* incase we dint specify any WORKDIR then it will take default as / 

##  ARG:- 
[click here for ARG details](https://devops4solutions.com/docker-difference-between-arg-and-env/)


## ONBUILD:-
 * Adds an instruction to be executed later, when the image is used as the base for another build

## STOPSIGNAL:-
 Sets the system call signal that will be sent to the container to exit, SIG<NAME>, SIGTERM 


---

## Below are small Exmaple:-

## FROM: node.js

## MAINTAINER: ajay kumar

## ENV: 
- MONGO_INITDB_ROOT_USERNAME=admin
- MONGO_INITDB_ROOT_PASSWORD=password
 
## RUN: mkdir -p /home/app

## COPY: . /home/app

## CMD: ["node", server.js"]

---
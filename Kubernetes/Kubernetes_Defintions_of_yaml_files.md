# Kubernetes Definitions or  kinds of yaml files definitions:-


# Pod:-

* Pod is ephemeral and light wait or smallest unit.

* Pod has container inside 
* ephemeral means short time or temporarily

* Pod should have one container inside since pod uses ip address to communicate, since it advised to have one container inside the pod, otherwise it will be messed 

* Pod means there wont be any replicas or cluster environment, also not required any one to access the pod outside the world or users from internet 

---

# Replication Controller:- 

* RC means instead of creating pod we will use RC so that it will contain extra features like replicas means it will create pods as many we mention replicas=3 etc:- 

* In pos we cannot do any cluster environment so instead of pod we are creating another yaml file called replication controller in that we mention 3 replicas, selector label so it will create 3 pods with mentioned label then we can use in cluster environment

* RC- disadvantages is we cannot enhance or upgrade the application version and also we can mention only one label not more


---

# ReplicaSet:-

* Replica set means will have extra features like below, we can have multiple labels for one RS.

* Example:- 
      Selector :
        Matchlables :
We can use multiple app-name means multiple labels we can use like app-nginx, app-jenkins so on  

* Even in RS we can use for cluster environment 

* RC- disadvantages is we cannot enhance or upgrade the application version

 
---

## Services:-

* service is responsible to expose our application to outside the world means it will allow our pods to access from internet or out side of our cluster environment.

* service ip address which will never change and also it is stored in etcd, still control plane is up service will not go down

* service is layer 4 load balancer it knows only about ip address or node ports  

* When pod dead and recreated another pod then that ip address will be changed so for that reason we will create one service to use with in the cluster to communicate each other.

* A Service that identifies a set of Pods by using label selectors. 
   
* Example:- if i mention label selector  in the service yml file so that when pod dies and recreate new pods then to it  will identify pod by using  label selector.

* to over come Node port and load balancer issue in the service yml file we can use something called ingress without charging for Load balancer or without any issue of ip address and node port.


## Three Types or Values Of Services Available in service yml file:-

1. **Cluster ip:-**
   
   * It is very important since if pod want to communicate each other then will use this service cluster ip address it is only for internal commutation purpose.
   
   * ClusterIP Exposes the Service on a cluster-internal IP. Choosing this value makes the Service only reachable from within the cluster. This is the default ServiceType.   

2. **node port:-** 

   * Node port – for external communication 
   
   * node port this is to expose our application from  internet outside communication here problem is we needs to remember or give our end users <NodeIP>:<NodePort> this is not so good concept.
   
   * **Example:-** 
   ``` 
   So I have mentioned in the service yml file type as node port so when ever I want to access the pod which is running in my worker node or cluster  I need to hit that public ip address with node port number, but this is disadvantage since I cannot issue different public ip address to users to access the pod always since public ip address 
	will be changing it.
   ```

   * NodePort Exposes the Service on each Node's IP at a static port. 
   
   
3. **LoadBalancer:-** 
 
   * LoadBalancer Exposes the Service through external IP using a cloud provider's load balancer. and also its too costly.  

   * Here the problem is if we have one service then we can give our load balancer name  or  dns name created with route 53

   * but if we 10 service then we needs to create 10 load balancer and 10 route 53 dns  and then we needs to give to our end users which is not possible and also it not good concept. 
---

# Deployment:-

* Deployments means we can create all the options or features in one yaml file that is deployment.yaml file, like below
replicas,template,selector label,strategy,pod spec. many more etc:- 

* in case in the deployment.yml file if we dint mention any details for strategy type then it will take default strategy as Rolling Update.

* main Advantages of deployment is even we can upgrade our applications version when developers release new build by just giving few option like below:-
   
   * Example:- 
           
           strategy:
             type: Recreate/Rolling update/Blue-Green

## Three types strategy or updating the applications in deployment.yml file are below follow:-

* **Recreate:-** 
  ```
  Recreate means for an example we have 4 apps running in our environment.it will destroy at a time all 4 apps and it will recreate new app/with new version at a time so here is we will have some time as down time for our application --- so this is not advisable in real time nor good concept. 
  ```
  
* **Rolling Update:-** 
```
Rolling Update means our apps will destroy simultaneously like one by one at all at one time so in this way there wont be any down time for our application also it will upgrade the new version for our app --- it is advise to do in real time
```

* **Blue-Green:-**
```
Blue-Green means our old apps considering as Blue and our new apps which is going to upgrade is considering as Green.so until completing the process of new version to our applications all the request will be routing to Blue apps.so when new version updating process as completed then we need to change in the service.yaml files our apps version and route the request to updated service.yml file, that is updated version for apps which is created newly apps called Green
```
```
or another process is that we should create new service.yml file and route our request to pods from newly created service.yml file then later we need to decommission the old apps which is known as Blue apps 
```
```
this is not advisable since we have down time to route our old service.yml file update the new apps/version 
or creating the new service.yml file and route all new request to newly created apps/version 
```
---

## Ingress:-

* ingress is layer 7 applications load-balancer so that we can write rules on it 

* we use ingress to overcome service expose pods to internet issue with service type of node-port and load-balancer

* typically uses a service type is Service.Type=NodePort or Service.Type=LoadBalancer.

* Ingress exposes HTTP and HTTPS routes from outside the cluster to services within the cluster. 
Traffic routing is controlled by rules defined on the Ingress file.

**Important Prerequisites:-**

* we must have an Ingress controller to satisfy an Ingress. Only creating an Ingress resource has no effect.

* we will need to make sure your Ingress targets exactly one Ingress controller by specifying the ingress.class annotation,and that you have an ingress controller running in your cluster.

* In order for the Ingress resource to work. the cluster must have an ingress controller running.


**Request Flow Of Ingress:-**
```
users or clients hit DNS (Route 53) it will direct to load balancer.
then here Ingress Controller will handle request and route to Ingress.
and here ingress will act like load balancer all the request will route to service and traffic is controlled by mentioning the rules in the ingress file then from service request will forward to particular pod to access our applications by using certain urls or path  
```
* Ingress Flow of Images click here below:-
![Ingress images flow](./images/Ingress.png)

**Notes:-**

* [Ingress.Class Example click here](https://github.com/kubernetes/ingress-nginx/blob/main/docs/user-guide/multiple-ingress.md)

* [Rewrite Examples click here](https://github.com/kubernetes/ingress-nginx/blob/main/docs/examples/rewrite/README.md)
       
* [Ingress Documents](https://kubernetes.io/docs/concepts/services-networking/ingress/)  

---

# PVC:-

## Types of volumes in kubernetes:-


* Volume - this is for temporary purpose only for some time this will create volume  in each pod level and when pod dies we will lose this volume too.

* storage volume - we can create one common volume and store all the data of each pod which is running on different worker node for that particular cluster

* Persistence volumes:- very popular in k8s and all cloud environment is providing this option and using it. like EBS or IBM Volumes so to claim this volume we need to create pvc so that pods can use or access volume  


## Two Types Volumes:-

**Static volumes:-** 

* static volume means we  have to create volume manually and also we to have create pvc or mount that volume to claim that created volumes.
    
* if we create volume with 3gb and 8gb and if we create pvc and asks for volumes then k8s will search where volumes is available so from there it  will check and assign the volumes.

* Example:- 
  ```
  if we request 2gb  of volumes then it will check near by volumes what is the availability 
   in this case we have only above mentioned 3gb and 8gb so our request is only 2gb so what it will do is, it will assign near to our requested volume but not exactly so near availability volume is how much 3gb so then it will assign only 3gb of volumes so in this case 1gb volume will be wasted 
   ```


**Dynamic volume:-**


* Dynamic volume we don't have to create any volume manually, we need to use storage class, like storageClassName: ibmc-file-gold and storageclass volume 40gb and just we will create pvc file for pod to claim that volume 
  

**Rules of persistence volume claim are below:-

* it provide access level to pod like access mod
   
* access mode = readwriteonce, means a pod will  access only once 

* access mode=readwritemany means a pod will access  as times it needs it.. 

---

# NameSpaces:-

* we create namespace in our environment to identify the types of services is belongs to which environment.

* Example:- 

     * we have 3 master nodes and 9 worker nodes so in this case we are creating the name space as below:-

      
        * Dev name space so all the yaml files and other services which is related to dev name space we can move or modify in the that particular name space 


        * like wise Test name space 

        * Prod name space 

---


# Secret:-

* will contains things like credential like our password and certificates and also it will not store like plain text formate, 

* it will store in base64 encoded formate, to store sensitive data we use secrete 
              
---

## ConfigMaps:-

* A ConfigMap is an API object used to store non-confidential or non sensitive data in key-value pairs. 

* we use configmaps to our conf files like ansible.cfg or tomcat.conf files or applications app.properties files etc:-

* for example we have some java applications so for that we have app.properties file so for this app.properties files we will keep configmaps
so each time we add some new configuration to our java application or for each new build for our java applications , our configuration 
files will have some changes that changes will take place by default through configmaps to our applications 

* we can store our applications config files in docker image in the docker file but when we want to change some config files then we have to rebuild the image every time this is not good concept. 

* we can even store our application config files  in the pod by giving environment variables but when ever we have to change our application configuration files then we need to delete old pod and re-create new pod so this is not possible or good concept 

---


## Daemon Set:- 
       daemon set means if we want to create same copy of a pod on every node when we required we do that using that daemon set 
---    


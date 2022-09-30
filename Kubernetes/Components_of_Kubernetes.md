
# Components of Kubernetes:- 

**2 cpus and 4 gb ram for master:-** 

**totally 1 master or 2 worker nodes to practice purpose:-**

## Kubernetes Control Plane:- 
**we will call for entire Master Node components**

---


# Master Node components are:-


## apiserver :- 

- apiserver is responsible for initial talk when we want to do it.. or any command we do it. it is responsible for our request 

- apiserver will talk to all the components in the master nodes like- scheduler, etcd, controller manager.
- all yaml files will connect to apiserver and apiserver will read all the yaml files and store it in the etcd and tells etcd  to prepare the configuration.
- only apiserver will talk to etcd no else components will talk.
- also apiserver will validate our request or yaml files which we created 
- in one word if we say the apiserver is a gateway for our starting point of request          

---


## scheduler:-

- scheduler is responsible for creation pod 

-  scheduler work is to check always with apiserver any pod request we got or any pod i need to schedule it, it will be keep checking it with apiserver.
-  scheduler will see the pod configuration which is got from apiserver and it will decide that so many pods need to go to particular node .
- scheduler will tells apiserver about the pods information since apiserver will not have any node information
-  scheduler will checks nodes availability and loads of nodes and then it will decide that how many pods to need create on this so on so nodes and 
      then pass the information to apiserver

---


## Controller-manager:- 

- controller is responsible for maintaining  state what we asked for the count like 3 nginx or pod  or killing also

-  Controller manager Responsible for noticing and responding when nodes go down.
-  it will take the responsibility of checking the nodes incase if nodes goes down and if pod dies inside the node then it will inform to apiserver 
      even if the replicas goes down also it will noticed and observe it..... 
-  Watches for Job objects that represent one-off tasks, then creates Pods to run those tasks to completion.
-  Populates the Endpoints object (that is, joins Services & Pods).

---
 

## etcd:- 

- etc everything in master it store , it has all the master information 

-  it is a database for all master node components 
-   it will store all our yaml files or our commands which we send to master kubernetes 

      
---


# Worker Node Components are:-


##  Kubelet:-

- kubelet will update the master saying the status pods is so on so
  
-  An agent that runs on each node in the cluster. It makes sure that containers are running in a Pod.
-  kubelet will be asking the apiserver that i am working on this node like node1 and node2 so is there any work me like is there any pod for me.
-  after taking pod information from apiserver, kubelet will deploy the pod to the particular node which communicated by apiserver .

---


## Kube-Proxy

- kubeproxy all about networks  responsible for networking of pod 
it is responsibility to speak each other pods inside the container


-  Manages the network and assign the ip address to the pod to communicate each other.
-  it will forward the requests from service to pods to communicate each.
-  it will take the responsibility of opening the port  between service and containers to talk to our application for users 
-  kube-proxy is a network proxy that runs on each node in your cluster, implementing part of the Kubernetes Service concept.
-  kube-proxy maintains network rules on nodes. These network rules allow network communication to your Pods from network sessions inside or outside of your
         cluster.
    
---


## Container runtime:- 

* Docker

---


## kubectl 

  * is command line tool for kubernetes cluster to communicate with apiserver.
  
   ---

   












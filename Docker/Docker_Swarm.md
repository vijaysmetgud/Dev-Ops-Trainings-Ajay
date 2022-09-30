# Docker Swarm :-

## docker swarm -means it cluster concept:-

**one cluster acts as master manager/swarm manager :-**

*and rest all worker node/worker slave*


**command to create worker node/slave**

**docker service create --replicas=3 my-webserver - it will create 3 worker node with same application and deploy to that**  


**this above command should run docker on master manager node not on worker node** 





# VPC Peering:-

* vpc peering will helps to connect 2 network in the private subnet across different region
* if we want to do vpc peering then 2 network or vpc should be in same cloud not two different cloud  

### Rules of VPC:-
* CIDR range should be different if they needs to talk each other VPC from different network across different region 

* when one vpc sends the vpc peering request to another vpc that vpc should approve the request, then they can communicate 

* is there approve cycle here in vpc peering 

* when we want to do vpc peering then we needs to 2 Rules:-
  
  * needs to modify RT since we needs to allow all traffic 
  * security groups we needs to allow all traffic since we wrote our security in bound rules something different
  * also we needs to modify NACL rules even allow all traffic 



# VPN (virtual private network)

 * when we want to connect one network from our office and another network from may be any cloud then we can use vpn that is know as site to site vpn 

* again here CIDR ranges should be different 

* when we want to connect one from our laptop to vpc network is called point to site vpn 

* all this we are doing is for private network to work

## Steps to  create vpc peering:-

* create 2 vpc and subnets from different regions 
* got peering connection under vpc 
* provide name of vpc peering 
* vpc requester who is request peering in our case example - vpc-A
* same account user or different account
* same region or different region 
* who is vpc acceptor means accepting this vpc peering give vpc id 
* then create peering 
* then after creating vpc peering right click on peering connection and select accept or reject 
* go to RT and edit the subnet saying when ever so and so CIDR ranges comes to this subnet please froward to vpc peering 
this RT update should done in two regions of subnet also 
* thats it we done !




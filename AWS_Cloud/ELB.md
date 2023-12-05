# Types of ELB(elastic load balancer):-

 ### classic load balancer 
 * its both option is available 

 ### application load balancer
 * it supports http/https
 * EG:- below
      * http://ibm.com/dev
      * https://amazon.com/test
 * it doesn't know anything about tcp/ip protocol    
 * path base routing and host base routing   
 
 ### network load balancer
 * it support tcp/ip address 
 * http://ibm.com/8080
 * https://amazon.com/6060 

* Sticky session - means when ever request comes and forwards to same server but request must have handled before.      


* EBL we configure with http/https/tcp/ip

* what is path to ping when user hit ur url /info.html or /info.anything

### Configuration details in EL health check    

* ur home page response time - 5 or 10 seconds
* time interval to pass the request to a server one after another to same server5 to 10 seconds which shows healthy
* when i sent 2 request 2 also failed then i will called unhealthy
* past 3 or 5 request is success we will call server as healthy 


### 2 things in ELB:-
* if want to attached the ELB to ur server then it is known as static ELB so that particular server only it will load balance it
* it want to do load balancing to ur autoscaling then dont add or attach the server because we dont know which server it will create it 


 ## [categories of ELB click here](https://docs.aws.amazon.com/elasticloadbalancing/latest/userguide/what-is-load-balancing.html)
---

# Route 53

* its DNS - domain naming system.
* why we go for Route 53 because we want to host our domain in route 53 which amazon is giving as service, 
* bcoz our load balancer or ip address: node port is not good concept to give our users.
* it should look something good for all the application only one domain .

### steps:-
* click on create hosted zone
* needs to put or paste ur domain name - like www.ibm.com 
* click on create it 
* will get some records or name servers after creating it 
* needs to paste this name server where we purchased our domain under name server details 
* click on create record set 
* type A record means domain name or ipaddress.
* type C record means alias name like our load balancer name
* should select routing policy so that it will act accordingly, i had just an simple routing policy ..  

### work flow of Route53:-

* when ever user hit the ur url www.ibm.com
* it will route our loadbalancer and ELB will forwards that request to our applications to access our application 



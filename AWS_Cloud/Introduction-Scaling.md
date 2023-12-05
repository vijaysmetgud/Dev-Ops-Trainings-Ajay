# Vertical Scaling:-

- which means we are increasing our instance type to higher resources usage since we have lots of users so traffic is more and this current instance resource which is not supporting or not sufficient for my users

- so in this case we will have the downtime for our instance while when we change the instance type.

**Steps:-**

 - stop the running current instance
 - click on action 
 - go instance settings and select change instance type
 - in the drop down select which ever instance type we need for our application traffic to control




 # Horizontal Scaling:-

  - which means we will be adding another extra instance for our application to control the traffic so that our users will not have any down time.

  - but here there is some changes we needs to take care we go option of horizontal scaling are below:-

  **Steps:-**

- **three Concepts in Horizontal are below:-**
 
  - auto scaling, load balancer and target groups
   - we need to add extra load balancer to route our request to residing our 2 instance as per their load 

   - we need to take care application should store in some come place since it should return the value for both instance 

   - here we have option in aws to create load balancer under load balancer section 

  - also we option called auto scaling for that we need to give some metric based on our metric it will auto scaling when have to much load by using our application by our users then it will auto scale to 2 instance when there is no traffic then it will scale to 1

  - also target group 


---

  ## Other Areas:-

  - **Every EC2 machine has an ip address called below:-**

  - **private ip address:-**
       - Used for communicating within your private network, with other devices in your home or office. 

  - **public ip addres:-** 
  
  - A public IP address is an IP address that can be accessed directly over the internet. 
  
  - when we stop and start the instance of public ip address will change so that to over come this issue another option called.

  - Elastic ip address which will not change ip address when you stop and start application ..



  # Network Address Translation(NAT):-

  - for an EG:- scenario - in our office we will be using the private ip address so this private ip address use to communicate internal purpose only for networks which is related to our office campus.

  - but here is issue so when our private ip address network needs to connect to internet means how we can .

  - so that is why this NAT concept came inside like when we have one server for an eg:- for that one server needs to connect to internet means our request from server it will reach to our (ISP) router so through router it will connect (NAT) so from nat this read our request then sends to internet and again our request will come from internet to this (ISP) router from router it will again transfer to NAT then this nat will provide response to our private ip server or network ...

- ### NAT:-

  - **NAT-Instance:-**

  - what NAT tells:-
  - create ec2 instance with NAT AMI(amazon machine image)
  - but instance should be present in public subnet 
  - and it should be static ip it means (Elastic ip)


- **NAT-Gatway:-**

  - so what Amazon said is ill be giving NAT as a Service:-
  - and this is what we call as NAT-Gateway
  - in NAT-Gateway nothing as required above said NAT-Instance 
   - NAT-Gateway is chargeable service so should not use more then 1 hours 
   after use immediately delete it..

   **Steps:-**

  -  create NAT-Gateway
  - assign to public subnet
  - go to route table assign private subnet to Nat-Gateway
  - then start ping from your private ec2 machine it will start ping...


  
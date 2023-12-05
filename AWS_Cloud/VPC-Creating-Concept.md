# VPC Creating Concept:-

**Steps:-**

1. Create VPC

2. Create Subnet

3. Create Internet Gateway and Attach to VPC

4. Create Route Tables 

5. Create Security Groups 
 - with Route Table same name and same VPC.

 6. Create Key Pair.
  - when we create key pair it will create two key one is private key and another one is public key so ..

  - private key we will have and we will download and kept it safe in some folder and under driver

  - public key AWS will have ..

  - the logic is when we want to connect AWS EC2 instance then we needs to use that private key to login for authentication purpose with public which AWS will have, it will be authenticate if both mathes 


  7. Create a EC2 instance and connect to EC2 AWS instance with .pem file since it doesn't have any user id and password so hence have only one option to connect AWS instance is .pem file ..

  - we can connect in multiple ways through putty or mobaxtream or git bash or ubuntu or visual code studio..


  - but when we want to connect from one EC2 instance to another EC2 instance means then we need to convert that .pem file into .ppk file 


  - **how to convert .pem file to .ppk file**

       - download genputty and click on generate the .ppk file and browse the .pem file location so it ask setting for user id and password that is our choice ,, in case if we want we can do it if not no.. then give ok to download .ppk file

       - later that .ppk file needs to copy that private key cert and create file called any name with .pem file and save it then give permission 400 and then you can connect to using this file to from one server to another server...   

**steps:-**

1. download putty
 - load the username@ipaddress or hostnanme
- then user save and load it, 
- select ssh under select auth give ppk file location 
- then putty will open our session

2. download puttygen
    
    - load the .pem file and click generate
     - then save the file only name by default it will save the file like .ppk 
---


## To Connect From One Server To Another Server:-

- **Steps:-**
- **Noraml terminal or putty any one same procedure:-**

 - **This Below Steps For Pulic to Public or public to private both Network:-**
   
   Steps:-

   - we should create a file after login into  public network 
   - vi ajay.pem 
   - and the copy the private key which is store in our local machine to this ajay,pem  and wq!, then use below command...
   -  ssh -i ajay.pem ec2-user@172-31-1-42
   -  ssh -i pem file name username@ip address

  
           **OR**
- Steps:-
    - here first we should copy ajay.pem to from our local system to public network below is command    
   - scp <source> <destination>
   - scp -i ajay.pem   ajay.pem  ec2-user@public ip address:/home/ec2user
   - and then below command to login into private network
   - ssh -i ajay.pem ec2-user@private ip address 

   ---


**bastion host means:-**

- one instance should be private and another server should be public
   and public machine will help to connect private machine....

---


### NAT:-

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

---

## Security:-

## Two Types of Security:-

1. security around interface - is called as security group 
2. security around subnet - is called as layered security Network ACL (network around controlled layered - NACL)

3. first when request comes to private subnet it will hit NACL and it goes to inside subnet security group

4. when request goes out it will hit fist to security group 

5. **in security groups:-**
    
    - we write rules to allow
    - if we dint write the rules to denied 
    - we can attach multiple security groups to network interface


 6. **NACL:-**   

      - we will write rules to allow/deny
      - we have priority:-

          - priority means number, lower the number higher the priority 


      - **StateLess:-**

      - which means 
           
           - we have to write both rules
              
               - inbound rules traffic which comes in
               - outbound rules traffic which comes out

7. Allow/Deny Rules on CIDR Ranges
    
    - all allow - 0.0.0.0/0
    - only particular - x.x.x.0/32
    - restrict all x.x.x.0/16/24


- **Layered Security:-**
     
     - layered means we will get security layer around private subnet.


### Two Types Of Protocol:-

  1. TCP - transmission control protocol 
  2. UDP - user datagram protocol 



  













































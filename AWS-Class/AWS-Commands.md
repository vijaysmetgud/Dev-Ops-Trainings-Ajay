


# Commands to copy .pem file from public to public or public to private


- **Steps:-**

   - we should create a file after login into  public network 
   - vi ajay.pem 
   - and the copy the private key which is store in our local machine to this ajay,pem  and wq!, then use below command...
   -  ssh -i ajay.pem ec2-user@172-31-1-42
   -  ssh -i pem file name username@ip address


**OR**

- **Steps:-**
    - here first we should copy ajay.pem to from our local system to public network below is command    
   - scp <source> <destination>
   - scp -i ajay.pem   ajay.pem  ec2-user@public ip address:/home/ec2user
   - and then below command to login into private network
   - ssh -i ajay.pem ec2-user@private ip address 

   ---

# Ways to Login AWS:-

- **ssh username@ip address/dns** 

- *but this above command will ask for password so in this case we dont have password.*


- *when we dont have password then follow below command:-*

- **ssh -i <path_of_pemfile> username@ip address/dns**


## Way To Login AWS Instance:-

- **[Download Git For Windows Click Here](https://git-scm.com/downloads)**

- **then click on download for windows**

- **then click on to download for our comparability OS**
 - **64-bit Git for Windows Setup**

 - **once software is downloaded then double click on that and start using it to connect Aws instance**

 ---


 # Command to connect AWS Cloud login:-

```
 $ aws configure
AWS Access Key ID [None]: AKIAIOSFODNN7EXAMPLE
AWS Secret Access Key [None]: wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
Default region name [None]: us-west-2
Default output format [None]: json
```
---


* Command to login AWS ECR(elastic container registry)

   aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com

---

* ## for windows machines pem file will not accept for password authentication.
* ## so we need to create password by keeping pem
* ## like on connect on ec2 machine so there will option called get password, give ur pem file it convert to password..

---


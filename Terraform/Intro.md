# Terraform Installation:-
###  [Terraform installation click here](https://www.terraform.io/downloads)
###  Install Terraform extension in VSCode
###  Terraform Language:- 
  * Declarative configuration language(DCL) known as HashiCorp Configuration Language (HCL), or optionally JSON.
---

# Steps To Use Terraform:-

* ###  Download the repo from github into our local by creating some directory 
* ### initialize terraform by using command 
   
      terraform init

* ###  To Check our terraform code and what is the plan to  execute or deploy the resource in the cloud 

       terraform plan  
       
        or 

      terraform plan terraform.tfvars / --var-file fterraform.tfvars

* ### To execute terraform below command 

      terraform apply  
    
       or

      terraform apply terraform.tfvars / --var-file fterraform.tfvars 

* ### To delete the resources created in any cloud 

      terraform destroy 
      
      or

      terraform destroy  terraform.tfvars / --var-file 
     
      fterraform.tfvars

* ### To list resources which all are deployed in the  cloud below command

       terraform state list 
    
       terraform show 

* ### To create workspace in terraform, this is because if we want to run our terraform code in different environment     

  * terraform workspace, - new,list,show,select and delete the terraform workspace

  * EG:- terraform workspace new prod/dev/test

* ### Backend
   * to store terraform state file in the local or remote since our env should not get duplicate 



  * should add the code for backend in the directory like backend.tf then below command and also if it gives error then we needs to configure aws below command 

    * aws configure - give all the details 
    * terraform init - since we add some new file like backend.tf so again terraform should initialize it. 

* ### Backend Types
  * Local — where the state file is stored on the local filesystem.
  * Remote — where the state file is stored in some remote filesystem or database.

* ### Element Functions in Terraform
* if we want to deploy multiple resources in the cloud then we can use this functions 

       element(list, index)

* ### Lookup Function in Terraform
  *  means for options to pick up the resource we mentioned in main.tf and options is available in variables.tf to pick  

* ### Conditional Terraform
    * A conditional expression uses the value of a boolean expression to select one of two values

    * means if statement if prod env then create 2 ec2 machine, else dev env create 1 ec2 machine 

* ### Taint Terraform    
    * means if we already created resource in the cloud needs to run again it will not run since terraform is idempotent in such case we can use taint then that particular block of resources which is mentioned as taint will or we can run again and change it. 
   * The terraform taint command informs Terraform that a particular object has become degraded or damaged. Terraform represents this by marking the object as "tainted" in the Terraform state, and Terraform will propose to replace it in the next plan you create.

* ### Local-exec Provisioner in Terraform  
   * means if want to get details of the resources created in the cloud to our local where terraform is running 
   * EG:- vpc_id, ec2_ipaddress etc. 

* ###  File Provisioner in Terraform
   * to copy some files or directories from our local where terraform is running to remote machine/ec2 which is running in the cloud 

* ### Remote-exec in Terraform
   * to run or execute some commands or scripts on remote resources which is already created or after creating it in the cloud 
   * EG:- ec2 machine 

* ### Null-Resource in Terraform
  * does nothing means if we want to run some commands or scripts on remote resource which is already created in the cloud which missing some block codes to add that we will use this null-resources   
  * EG:- local-exec, remote-exec, file

* ### For_Each() in Terraform
  * This is For Loop Concept 
  * to create multiple resources we can use this for each concept

* ### Locals in Terraform:-
  * When you use Locals in the code, since you are reducing duplication of the same value
  * you also increase the readability of the code
  * local in Terraform doesn’t change its value once assigned.

* ### Depends_On in Terraform
    * it is a tag which allow us to use dependencies between resource and module 
    
* ### Count in Terraform
   ```
   When you define a resource block in Terraform, by default, this specifies one resource that will be created. To manage several of the same resources, you can use either count or for_each, which removes the need to write a separate block of code for each one. Using these options reduces overhead and makes your code neater.
   ```
```
For example, instead of defining 3 virtual machines all with their own separate resource blocks, you could define one and add the count = 3 ‘meta-argument’ into the resource block, it will create 3 virtual machine
```


* ### Run-Triggers in Terraform
   * run-triggers allows you to connect one or more workspace, these connections will allow to run in a queue in the workspace on successful apply on runs in any workspace 

* ### Modules in Terraform
   * means we can use modules for deploying infrastructure  with multiple env, keeping source file same location nor in different location just specifying source - location of .tf files in modules  and also multiple .tf files 

* ### LifeCycle in Terraform
   * lifecycle means already created resources needs to do some changes or is there some mistake in created resource, we use below options like.

* ### create_before_destroy:-
   * if we adopt this option before destroying the resources, it will create and then it will destroy, without creating it will not destroy it.

* ### prevent_destroy:-
   * using this option we safe guard our resources already created cannot do any changes or destroy to our created resources.

* ### ignore_changes:-
   * using this option we can ignore any changes we have done to our existing or created resources by done in manually in aws web ui and again if we run the terraform it will ignore all the changes what we have done it.

* ### Import in Terraform 
   * Use the terraform import command to import existing infrastructure to Terraform state
   * The terraform import command can only import one resource at a time. It cannot simultaneously import an entire collection of resources, like an AWS VPC.
   * using this option we can import the resource which is already created in the cloud env to our local terraform installed it will import to state file ..

* ### State Lock in Terraform
  ```
  If supported by your backend, Terraform will lock your state for all operations that could write state. This prevents others from acquiring the lock and potentially corrupting your state. State locking happens automatically on all operations that could write state.
  ```

* ### Cloud in Terraform
  
  ```
  Terraform Cloud is HashiCorp's managed service offering. It eliminates the need for unnecessary tooling and documentation for practitioners, teams, and organizations to use Terraform in production. Provision infrastructure in a remote environment that is optimized for the Terraform workflow.
  ```
* means we can create account in the app/terraform.io/app, and we create all codes there only and plan, apply and destroy in the terraform app itself not required do it locally 
---

# Please Note Points:-

* Please Note:- in case our variable file is not name is not defined as original name like terraform.tfvars 

    * then while running terraform we needs to give or define our variable file name like --var-file fterraform.tfvars 

* while running terraform in between anything you want to give yes for some action then we needs to give atlast of executing terraform code is like below

    * --auto-approve

      * terraform plan terraform.tfvars / --var-file fterraform.tfvars --auto -approve


* after applying terraform code , when it is created all resources in the cloud as mentioned in the terraform code, it will create **terraform.tfstate** will be created and all the resources created information will be available in the that file so needs to keep safe also if we change anything again that terraform.tfstate file will get updated and refresh itself 
---

# Aws About Provider:-

* In AWS to use terraform provider is access key and secrete key 
---

# Azure About Provider:-

* In Azure to use terraform provider, needs to go > 
``Active Directory`` > ``App Registrations`` > ``New Registration`` > ``Give_Name_Of_Registration`` 

   * After created Registrations we will get below details like :-

      * Display Name
      * Application client id
      * Directory tenant id
      

* Then needs to take details from subscription 
> ``Click Subscription Tab`` > ``Take Subscription Id``        

* Finally needs to create certificate and secrets 

    * create secrets

* Should go into > ``IAM`` and selected created azure subscription and give access to terraform.

* Finally copy all above details and put in the provides block to know terraform that we are creating or deploying the resources for Azure..
---




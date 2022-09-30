# System Manager:-

* system manager - means we can do any maintenance or upgradation or administration activities with out opening a port or taking support of another machine or bastion host 

* without logging into machine we can do maintenance but for we to have agent in that machine where we needs to do maintenance 

---

* ## [Systems Manager click here](https://docs.aws.amazon.com/systems-manager/latest/userguide/what-is-systems-manager.html)


* ## [Setting up AWS Systems Manager click here](https://docs.aws.amazon.com/systems-manager/latest/userguide/systems-manager-setting-up.html)

* ## [Working with SSM Agent click here](https://docs.aws.amazon.com/systems-manager/latest/userguide/ssm-agent.html)

## Systems Manager:-
* first should install ssm agent on every ec2 instance if we want to use system manger 
* second needs to create user in IAM and assign the SSMfull access or admin role access or create policy or attach existing policy to use or speak with system manager then create role for ec2 machine 
* create ec2 machine and while creating please select the role which we created this is very important
if not also no problem since we attach in ec2 machine option 
* install ssm agent blindly follow aws document for different flavours of ssm agent installation 
* then go to system manger and select Run command 
execute default what ever available command 
* thats it we are done 

* ## On premise servers:-
* access or authorization
* installation
* activation 
* [Activation click here](https://docs.aws.amazon.com/systems-manager/latest/userguide/sysman-managed-instance-activation.html)

* ## Administration activities :-
* commands
* patching or upgradation 


* ## using system manager we can work with Run Command 

* ### Managed instance :- 
 * any machine who can speaks with systems manger is known.


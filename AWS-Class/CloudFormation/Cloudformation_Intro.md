# Cloud Formation Template:-

* why template.?

  * to reusability for again and again
  *  portability means any one can use this above template
   * Dry (dont repeat yourself) means dont copy the code just do it ourself

 ## AWS has it own templating system:-
 * this is called as cloudformation
 * cloudformation can be written in json/yaml 


 ## Diff Between Terraform and Cloudformation 
 * terraform we can use in any cloud formation
 * cloudformation is only for aws   


### Building blocks
* AWSTemplateFormatVersion: 
```
{
    "AWSTemplateFormatVersion": "2010-09-09"
    # This describes the version of schema of CF
}
```
* Description: This is just a field to add som  info
```
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Learning Cloudformation"
}
```
* Resources: 
    * Everything for CF to be create in AWS is a Resource
    * This section is collection of resources to be created
```
{
    "AWSTemplateFormatVersion": "2010-09-09",
    "Description": "Learing Cloudformation"
    "Resources": {
        "<yournameforresource>" :{
            "Type": "<from aws documentation>"
            "Properties" : {

            }
        }
    }
}

* Outputs: The stuff which you want to display after successful creation of stack
```

* Every Resource has inputs & outputs
* Resource inputs are properties
* Resource outputs are Return Values

### Softwares Required
* AWS CLI installed
* Visual Studio Code with Cloudformation extension


### Terms
* Template: Json/Yaml file written
* Stack: Execution of Template creates stack only in one region

* StackSet: Execution of same template across regions at one shot

## steps to execute cloud formation:
* after create CF template
* got aws CF
* create stack 
* while creating stack it will ask to select the template or upload the template
select which ever we want 
* provide stack name
* click next for all
* then you can go and check ur resources has created
* we are all done !

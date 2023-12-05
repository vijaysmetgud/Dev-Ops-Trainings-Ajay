# DiskStorages for instance:-

- ## Hardisk
   
   - **Two Kinds Of Hard Disk:-**

      - **EBS**
       
         - no mater what instance we create root volume is EBS (means like our local system c:drive)
         - it is non-ephemeral means our machine dies our hardisk will not die like google drive


     - **Hardisk by Hardware:-**
         
          - magnetic - A magnetic disk is a storage device that uses a magnetization process to write, rewrite and access data. 
          - HDD - HDD stands for Hard Disk Drive. HDD is also known as Hard disk, Hard drive, or Fixed disk.

          - SSD - What Is an SSD? SSDs got their name—solid state—because they use solid state devices under the hood. In an SSD, all data is stored in integrated circuits.

        **HardDisk by Speed:-**

        - IOPS
        - 1 IOPS = 256 kib/s read or write 
        - more IOPS more cost and speed

        ### Volume Types In AWS:-

          - general purpose SSD
          - provisioned IOPS SSD  - 50:1
          - throughput optimize (more storage and cheaper rate but costlier then cold HDD)
          - cold  HDD (minimum 500gb more storage and cheaper rate)
          - magnetic 

      **EBS volume can be attached to only one machine at any given point of time**


     ### Backup:-

        - **snapshot** 
          
           - full and incremental snapshot 

            - From Snapshot:-

                 - create EBS volumes
                 - create AMI    
    ## instance-store

         - it is secondary for some machine types
          - it is called as ephemeral means when machine dies our storage will also die like our laptop

- Network Drives/Shared Folder like (SAN,NAS)

  - Network-attached storage (NAS) is dedicated file storage that enables multiple users and heterogeneous client devices to retrieve data from centralized disk capacity

  -  SANs are primarily used to access data storage devices, such as disk arrays and tape libraries from servers so that the devices appear to the operating system as direct-attached storage. A SAN typically is a dedicated network of storage devices not accessible through the local area network (LAN).




 - 1 KB = 1024 Bytes
 - 1 KB = 1000 Bytes
 - 1 KB = 1024 Bytes

- **can i change hardisk while machine is running.?
   
    - few years before no
    - but now yes since aws consider as (elastic volumes)
     - when we change 
          
          - to reflect this it will take time 
          - if we want to see reflect immediately then restart your machine.



# EFS (Elastic File System):-

 - works with linux 
 - not directley with windows 
 - EFS--> make solution for a region wise
     
     - for every Availability zone a shared network storage is created  
     - sync the data between availability zone 

 # BLOB / Block Storage:- (not file system storage)

   -     for an Eg:- google drive 

   - BS - is called as simple storage service (S3)

   - upload files to S3
   - restriction :- individual file size cannot be a greater then 5TB
   s3 cannot handle is individual file size is above 

   ### S3 use cases:-
            
        - streaming 
        - alternate to FTP
        - backup and archival solutions

- Cost is two Folder
    
     - cost for storage 
     - access through https - access cost 


- AWS has storages classes:-
               
      - standard, more storage and less access
      - infrequent access, pay more for access and less for storage 
      - reduce redundancy , 
      - glacier (archival)


- ## S3 Life Cycle Transition:-


- first 30 days put it in standard
- 30-60 - IA
- 60-90 - Archive
- 120 - expire/delete


# S3 versioning:-

- like box folder
- when we upload files for first time it is v1
- when we upload same files with changing content then we will loose the data and version will change to v2


- Enable versioning in s3 - will not loose data we will have both file
- suspend versioning in s3 - we will loose data only new version file will be available 

# S3 Policy 
* setting this bucket policy we can restrict the users to access our s3 bucket for object or data.

    * effect - allow/deny
    * principle - all
    * action - readonly/write only












             





























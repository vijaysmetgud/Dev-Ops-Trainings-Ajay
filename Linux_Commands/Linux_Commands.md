# Top Commands:-

- **command is used to know the cpu utilization in Linux**
   
       top
```
q   = ‘q‘ to quit window
z   = Highlight Running Process in Top
c   = Press ‘c‘ option in running top command, it will display absolute path of running process.
U   = use top command with ‘u‘ option will display specific User process details
```

---


# PS Commands:-

```
ps = process status
e = to display all the processes
f = to display full format listing
```

- **How to list all the running java processes**

      ps –ef | grep java  


- **How to check process running with particular users**

            Ps-u username 
    
- **Command to find memory leak**

       ps aux --sort pmem 

- **How to list top ‘5’ cpu utilization processes**

         ps –auxf | sort –nr –k 3 | head –5
         ps u | sort –k 1 –r | head –5

- **How to run a process in the back ground**
  
        Put  “& “ at the end of the command
        <complete command>  &

- **How to bring the process to fore ground**

       fg  <pid>
      

- **Command to check total cpu is running on the system/CPU information**

         lscpu

---

# LS Commands:-

```
ls -ld Display Directory Information 
ls -lt Order Files Based on Last Modified Time Using	
ls -R Display Files Recursively 
```

- **List all the hidden files in a directory**

	   ls  –a

- **How to list all the files in ling list format**

             ls  –lrt  
          It gives the files and directories list with permissions
          first character ‘–‘ indicates files,  ‘d’  indicates directory




- **Files to display recursively**

          Ls –r

- **What is the use of lsof command**

            lsof 
      stands for list the open files, which will list all the open files in the system
      The open files include network connection, devices and directories



- **Command to get all the same file name**

       ls -l ServiceLayerREST*

      ServiceLayerREST* when we mention * means list of all files with mentioned name


- **Command to list all the log file in the folder**

        ls -lrt *.log


- **Command to check files or folder in human readable formate**

        ls -lah

---

# Netstat Commands:-

       ```
       netstat= network statistics it display both incoming and outgoing
       internet is open pubic space

       intranet is designed to be a private space but it is accessible from the internet  but as a rule



- **To list All Ports both listening and non listening ports**

          netstat -a | more 

- **To list all tcp ports Transmission Control Protocol**

          netstat -at 


- ** To list all udp port**

        netstat -au 

- **Show the statistics for each protocol**

       netstat -s 

- **Find the non supportive Address families in your system**

          netstat --verbose 

 - **Display extended information on the interfaces similar to ifconfig**

           netstat -ie       

- **How to list all the listening ports**

            netstat –a

- **How to know the port number based on process id<PID>**
            
            	netstat  –antp | grep <pid>


- **How to know the processed id <PID> based on port number**

           netstat  –antp | grep <port>

 ---

 # File Permission Commands:-      

- **Permission using with numbers:-**
  - Read -  r=4     
  - Write – w=2
  - execute – x=1   
  - total = 7

  - 1st – current user/owner permission = 7
  - 2nd – group user permission = 7
  - 3rd – other user permission = 7

  - file/folder = 777=R+W+E=Read+Write+Execute.

- **Files/Folders signification of signs:-**

  - ( - ) indicates file
  - ( D ) indicates Directory


- **Permission using with Alphabets :-**

  - (A) or (UGO) - Indicates for all the users like:- (owner/current users),(group users) and (other user)
  - U – indicates owner/current user
  - G – indicates group user 
  - O – indicates other user 
  - ( - ) - indicates removing the permission 
  - ( + ) - indicates adding the permission


- **EX:- Below are:-**

     - chmod ugo+rwx filename - this means for all the 3 users giving permission of rwx.
     - chmod ugo-rwx - filename this means for all the 3 users removing the permission of rwx.
     - chmod ugo/a=rwx - filename this means for all the 3 users giving permission of rwx.
     - chmod 777 filename - this means for all the 3 users giving permission of rwx
     - chmod 000 filename - this means for all the 3 users removing permission of rwx

---

# DF Commands:-

- **Command to check size,used and available disk space in the filesystem**

          df -h

- **Command to check free disk space**

     df –m <location> or <file_Folder_name> 
     
     1. M - MB
     2. G- GB
     3. K - KB

- **Command to find free memory**

      free -m/-k <location> or <file_Folder_name> 

      1. M - MB
      2. K - KB

- **Command to check particular file or folder disk usage over all** 

         Df -h file name/folder name 
     
---

# Du Commands:-

- **Command to show total memory used in the server file system human readable formate**
 
       du -ahc
       du -sh
       du -ah

- **How to check easiest way 5 high disk usage**

       du -a (/root)path | sort -n -r | head -n 5 


- **Command to check particular file or location is consuming memory usage** 

         ls -la (/root/core) file name
         df -g | grep roothome 
         du -a /usr/WebSphere/ | sort -n -r | head -n 15


 - **Command  to find top 8 files which consumes high disk usage**

              du  –SM  *|sort   –nr | Head  –8
              Here  ‘s’  summarizes all the reports, ‘m’ indicates size in MB

        
- **Command to check disk usage all the files at a time**
 
              Du -sm*
---

# Kill Commands:-

- **What the difference is between kill –3, kill –9 and kill –15**

        1. kill  –3	<PID> --> to generate the Thread dumps

	 2. kill  –9	<PID> --> to kill the process forcibly

       3. kill  –15  <PID> -->  it will wait to kill the process until the child processes  are killed.


---







# Git Installation:-

### 1. First we need to install the required software dependencies that are all available in default repository which ever os we are using.


### If you are using CentOS

- yum update -y 
- yum groupinstall "Development Tools" -y
- yum install git-all
- sudo yum install dh-autoreconf gettext-devel openssl-devel perl-CPAN curl-devel perl-devel zlib-devel expat-devel openssl-devel -y
- git --version

--- 

### If you are using Ubuntu

- apt-get update
-  dependicy package to install
- apt-get install dh-autoreconf libcurl4-gnutls-dev libexpat1-dev \ gettext libz-dev libssl-dev
- apt install make
- apt install git

--- 


2.[Click Here To Docwnload git](https://mirrors.edge.kernel.org/pub/software/scm/git/)

-  wget https://mirrors.edge.kernel.org/pub/software/scm/git/git-2.27.0.tar.gz


### 3. Once the download is completed we have to extract the file from the downloaded Git Tar file. For that we will use Tar command.

- tar -zxvf git-2.27.0.tar.gz 


### 4. Now let’s change the directory to Git. Use below command

- cd git-2.27.0


### 5. We are in the source folder we can begin the source build process. For that first type below commands:


- make configure
- ./configure --prefix=/usr
-  make install


### 6. check the git version now,it will be changed

- git --version


### Configure the Github to our local:-

1. **Configure your username and mail-id:-**


- git config --global user.name "your_ name"
- git config --global user.email "your_mail@example.com"


### 2. To confirm that whether these configurations are added successfully or not.

- git config --list


### 3. Now to generate SSH Key bcoz it needs to connect local repo and remote repo in the github repository needs to authonicate we are using this :-

- $ ssh-keygen -t rsa -b 4096 -C "your_email@example.com"


### 4. Enable SSH Agent

### start the ssh-agent in the background
- $ eval "$(ssh-agent -s)" - should enter command 
- > Agent pid 59566 - out put


### 5. Now we need add SSH key to the SSH agent we will use

- ssh-add ~/.ssh/id_rsa


### 6. To See the SSH Key

- vi ~/.ssh/id_rsa.pub 

### 7. To test connection it is working, it has connection between github repo and our local repo

- ssh -T git@github.com or ssh -T git@github.ibm.com
---

## codesquareZone:

```
git config user.name "codesquareZone"
git config user.email "ajaykumar.devopsclouds@gmail.com"

[user]
        name = codesquareZone
        email = ajaykumar.devopsclouds@gmail.com

        eval `ssh-agent -s`
        ssh-add ~/.ssh/id_rsa_codesquareZone
```
---

## AjayKumarRamesh:

```
git config user.name "AjayKumarRamesh"
git config user.email "ajaykumarramesh5@gmail.com"

[user]
        name = AjayKumarRamesh
        email = ajaykumarramesh5@gmail.com

eval `ssh-agent -s`
ssh-add ~/.ssh/id_rsa_AjayKumarRamesh
```
---

## AjayShady:

```
git config user.name "AjayShady"
git config user.email "ajaykumar.matters@gmail.com"

[user]
        name = AjayShady
        email = ajaykumar.matters@gmail.com

   eval `ssh-agent -s`
   ssh-add ~/.ssh/id_rsa_AjayShady
```


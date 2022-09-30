### 1. To create local repository
   -  mkdir /git
   -  cd /git
   -  git init
   - It will create empty .git directory. Where
   - the .git directory is there that is local repository.
   -   without .git folder it is called empty directory 
   -  ls

### 10. command to inititalize empty repo in my local
    
             git init 


### 1. Configure the Github to our local

    git config --global user.name "your_ name"

    git config --global user.email "your_mail@example.com"

### 2. command to check configurations  successful or not

       git config --list


### 4. create empty gile
 
        touch a1 a2

### 5. command to check status of files

         git status

###  command to add untracked files to staging area 

        git add filename

### 7. command to add untracked files to staging area using . adding all files in the current directory

       git add .
 
### 8. command To move a particular file from Stating  area to commit area

     git commit -m "commit_name"  file_name
   
    (if we dint give files name then all files which is not commit by default all the files it will commit so needs to provide file name)


### 9. command  to commit all files to commit area

      git commit -m "commit_name"


### 24. command to add and commit a file in single command but only modified early file not new file this command will not work

      git commit -am "added early modified file" file name 

### 25. command to add and commit file in one command means below this works only on modified file not new 

     git add . ; git commit -m "" file_name 
    
     if only one file then not required file name 
 
       git add . && git commit -m ""


### 26. command to see log and how many times and wer we have commit that file in this branch also to check commit area what is committed
   
        git log --> we can see all the commit we made it.

 ### 27. command to see all the logs or commit area in one line instead of multiple line
 
 - git log --oneline 
 
 - git log --all ----> You can force the log tool display all commits (regardless of the branch checked out) by using the –all option.
 - git log -3 ------> by using number we can see limited log like we mention only 3 commits we can see its option of -n instead of n we placed 3
- git log --author=Ajay ----> this  will display logs only by that particular written it
- git log --committer=Ajay ---> author or committer both are same
- git log --before <date> , git log --after <date>, git log --after "2014-02-01" --before "2014-02-02", --> these all same command we can get the logs by date ranges 
- git log -p  ----> View All Diff of Changes for Each Commit
- git log --stat  ---> To view a summary of the changes made in each commit (# of lines added, removed, etc), use the –stat option:
- git log --graph --->> The Git Log tool can also display the commit history in an ascii art graphical representation with the –graph option. This option works well when combined with the –oneline option mentioned above.
- git log --pretty=format:"Commit Hash: %H, Author: %aN, Date: %aD"  --->> this command is very useful it shows all commit hash ids and author name and date when this is commit has done
- git help log -->> this will show all the commands of git logs so that we can easily use it
- git log --oneline <any branch name> to see particular log commit out put 


### 28. command see all commit message which we have did it will show all the changes that we made like removed and add will show in the formate of - and +  

    git show <commit_id> ---> needs to specify only 7 or 8 num or char id's and it will show all the details which you made it while creating file. 

        eg:-  git show 368ab7f

### 29. To list the tracked files by git

       git ls-files 

### 30. command to clone the github repository

       git clone https or ssh link 

### 31. command to check any remote repository is connect to our local repository

        git remote -v


### 32. command to add or connect remote repository to local repository 
    
* git remote add aliasname remote_repo link 
    
  * git remote add origin git@github.com:Ajayshady/DevOps-2.git
    
### 34.  command to over ride the remote repo url or add new remote repo url to existing 

* git remote set-url origin remote_repo link 
    
* git remote set-url origin git@github.com:Ajayshadysample_repo.git


### 35. command to push files from our local repo to remote repo

    git push aliasname <branch name>
    
     git push origin master


### 36. command to set by default push to any branch in the future
   
* git push -u origin master 
   
      * if we set -u then not required to mention origin master, just directly we can push the contain. default to master or any branch 

   * git push --set-upstream <branch_name> 
   
      * this both command is same -u is short name and 
      
        --set-upstream is long name 

### 37. command to check our current branch
   
     git branch 
     
      * represents that we are into current branch name 


### 38. command to create new branch and while creating switch to that particular branch
   
          git checkout -b <branch name> 

### 39. command to create just an branch

        git branch <branch name> 

### 40. command to push the branch to remote repo which is created in the local repo and that branch will reflect in the remote repo
 
           git push origin <branch_name>

              git push origin dev

### 41. command pull the request from remote repo to our local any branch we can pull to our local branch

       git pull origin master
      
        git pull aliasname <branch_name>

### 42. command to delete branch in the remote repo 

     git push remote_repo_name --delete <branch_name>

           git push origin --delete dev 

           git push origin -d test 

### 43. command to delete the branch from local repo

       git branch -d <branch name>

       git branch -D <branch_name>  
       
       to delete forcefully, use option -D 

### 44. command to rename the branch in the local repo

    git branch -m <old_branch_name><new_branch_name> 

### 45. command to rename the branch in the remote repo 

      git push origin :old branch name and new branch name

        git push origin :test dev


### 46. command to switch to different branch
 
         git checkout <branch name>

      
> very important when we create any new branch after our default created master branch when initially all the commit messages will be associate to this newly created branch.
in my case i created dev branch after default master branch so all commits has been associate to dev branch now.
>

### 47. command to merge files from other branch to master branch

    git merge [branch name] ->this will merges the specified branch name files or history into the current branch.

    Example:- git merge dev ---> all the files from dev it will merge to master branch since i was in master branch currently and execute this command


### 48. command to Merge the two branches

        git merge <branch1> <branch2>

        Note: two diff content of the files wil be merged 


### 49. How will you know in GIT if a branch has been already merged into master?

    git branch --merged   
    // It lists the branches that have been merged into the current branch.

    git branch --no-merged    
    // It lists the branches that have not been merged.


### 50. command to rebase the branch, but we should never do it bcoz when multiple people working repository if you rebase it then all files from other branches will rebase and 

>come into ur branch with continues commit ids so then other people will be working still working on back ward commit but you will be working forward commit so this create conflict so never try rebase any where... 
> 

          git rebase master 
   
     here i am into test branch i want to make
     changes from my master branch to add all the changes to test branch.


### 51. command to check difference between 2 files  

       diff <file_name1> <file_name2>


### 52. command to check difference between 2 commit id's

          git diff <commit_id1> <commit_id2>

### 53. command to check difference between file and commit id

         git diff <commit_id> <file_name>

### 54. command to check difference between two branches

      
      git diff [first branch name] [second branch name]


### 55. command to list all the branch including remote branch

         git branch -a 

* > when you want some else repository to copy into our own repository just we need to click on fork option on right in that person repository 
 so that copy of that person repository will create in our repository we can do in UI, if i dont have access to that particular repo then after i fork click then ill be the owner of the repo 
 so i can do what ever i want to do since even i can make any changes.. and then that repo will be added to my repo.. to work.
 >



### 56. How to give an access to a specific person to repository?

 - You can invite users to become collaborators to your personal repository.
- Under your repository, click on Settings.
-  In the left sidebar, click Collaborators.
-  Under "Collaborators", start typing the collaborator's username.
-  Select the collaborator's username from the drop-down menu.
-  Click Add collaborator.
-  The user will receive an email inviting them to the repository. Once they accept your invitation, they will have collaborator access to your repository
- he can view and do any activities in my github repo


### 57. How to Lock a branch? why we need to lock a branch?

- On GitHub, navigate to the main page of the repository.

- Under your repository name, click on Settings. 
-  section of the sidebar, 
- In the "Code and automation" section of the sidebar, click Branches. 
- Next to "Branch protection rules", click Add rule. 
-  Click Save changes. 



### 58. How to delete Repository in GitHub?

- On GitHub, navigate to the main page of the repository.

- Under your repository name, click Settings.
- Scroll to the bottom of the page and you will find Delete this repository button
- When you click on that button, another pop up will appear, here you need to type in the name of your repository name and click on the button bellow which says: I understand the consequences, delete the repository.


### 59. command to rename alias_name origin 

        git remote rename <old_alias_name><new_alias_name>

          git remote rename origin wing


### 60. command to remove remote alias_name or remote repo which is added or connect to our local repo

      git remote remove <alias_name> or <remote_repo_name> 

      git remote rm <alias_name> or <remote_repo_name> 

        git remote remove origin

      git remote -v ---> check again for confirmation  
 



### 61. command to get files from commit area to staging area

    
    git reset --soft HEAD^
    git reset --soft HEAD~

   * last committed file will be changed to staging area 
    

    git reset --soft HEAD~1,2,3

   * here if we mention numbers 1,2,3 means last three files which is committed will be changed to staging area or last committed file will be changed to staging 

     

### 62. command to get files commit area to working area or Untracked files

      git reset --mixed HEAD^
      git reset --mixed HEAD~ 

   * last committed file will be changed to working area OR Untracked files 

         git reset --mixed HEAD~1,2,3

   * here if we mention numbers 1,2,3 means last three files which is committed will  be changed to working area or Untracked files, last committed files will be changed to working area or Untracked files 
             
 
### 63. command to delete permanently files from commit area 

    
        git reset --hard HEAD^

         git reset --hard HEAD~
       
         git reset --hard <commit id>

* last committed file will be deleted permanently 

         git reset --hard HEAD~1,2,3 

* here if we mention numbers 1,2,3 means last three files which is committed will  be deleted permanently 


### 64. command to get files from commit area to working area or Untracked files 

         git reset HEAD~
         git reset HEAD^
         git reset HEAD~1

* this above three commands will directly get back committed files to working area or Untracked files      

### 65. command to get files from staging area to working area or Untracked files

         git reset 
         
             or

         git reset <file_name>


### 66. command to remove file 

         git rm <file_name>

### 67. To update all local branches
 
           git pull --all


### 68. command to remove entire .git local repo

      rm -rf .git --> everything will deleted from our local repo


### 69. command to save working area or Untracked files in the stash for later completing the file fully

           git stash
           git stash save 
     
* when we use this above command the files will not show in Untracked or working area, when we run git status command it will show nothing to commit, working tree clean


### 70. command to get back the files from stash to working area

          git stash pop 
          git stash apply 

### 71. command to list files which are saved in the stash

        git stash list
        git stash show

### 72. command to delete the stash file 

          git stash drop 


### 73. command to provide tags to commits 

          git tag <commit_id>
 
### 74. How to remove/unset a user-name and user-emal in global config

             git config --global --unset user.name

             git config --global –unset user.email

             git config –global –unset-all user.name

### 75. How do you undo the last commit       

             git revert <commit id>

### 76. how to get back the deleted files after staged or committed 

          git checkout <commit_id> or <file_name>

### 77. how to see remote repo branch lists

         git branch -r 

         git remote show origin 

### 78. what is Fetch

         Fetch will download all files or code from 
         remote repo to local but it will not  
         integrate or takes changes with local repo

* command to fetch files from remote repo to local repo

         git fetch <alias_name><branch_name>

         git fetch origin master

* command to integrate or takes changes with local repo after downloading the files from remote repo by using git fetch 

           git checkout <branch_name>

           git merge <alias_name>/<branch_name>

           git merge origin/master

### 79. How do you skip from merge conflict

            git merge --abort

### 80. What is cherry pick
* To get a particular commit from one branch to another branch
* To get a particular files from one branch to another branch 
* if we dont want to merge or rebase whole branch, only we need some files from that branch we can use cherry-pick
* If you by mistake make a commit in an incorrect branch, then using cherry-pick you can apply the required changes in the right branch 


       git cherry-pick <commit-id> or <commit_hash>

### What is squash
* Squashing a commit means, simply making two commits into one commit or Combining commits
* If you repeat this process multiple times, you can reduce n commit to a single one



   



 



# Git and Github 

## Beginners Guide 

Create a Github account at [https://github.com](https://github.com). Remember your usename and password. You will need is everytime you setup git on your local machine. 

Git in a nutshell: 

    # Working locally
    git status      # tell whats the current sync status of local repo

    # Two-step commits
    git pull        # Syncs your local repo
    git push        # Syncs your remote repo
    
    # Adding file to stage changes
    git add [file1] [file2] [--all]      
    
    # Committing Changes 
    git commit [file1] [file2] [--all]      
    

## Getting started with a repo 

Got to [https://github.com](https://github.com) and login. 

Create a new repository (aka repo) with a name for the project. In this example we will use `YOUR-REPOSITORY` as you repo name. 

Now on your local machine, go to the directory under which you want this git project

    # clone the git repo you created
    git clone https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git
    
    # check local dir 
    ls 
    
    # you should be able to see repo directory
    # cd into this git project dir 
    cd [YOUR-REPOSITORY]
    
    # create files and folder 
    # finish all your work. 

    # from within the project run 
    git add --all 

    # now commit all the changes 
    git commit --all        # you will be asked to write a message with each commit 

    # sync it with remote repository 
    git push origin master 

For first time `push` you will be asked for username and password. After you have finished push run the following to remember your credentials for future use. Or else you will be asked to enter password everytime you push.

    # to remember git crcedentials (user, password)
    git config credential.helper store

    # then run git pull 
    git pull 
    

Now check online at https://github.com/YOUR-USERNAME/YOUR-REPOSITORY to see if the changes you made synced correctly.

Next time when when you start working on your project you should always `pull` before making any local changes. This will sync your local with remote and you will have the latest changes before you start. 

Following this will allow you to work on multiple machines at the same time. Also multiple users can work on this at the same time. 


## Advanced usage - git branch

[Git Handbook](https://guides.github.com/introduction/git-handbook/)

---

## Some Examples: 

GitHub and the command line: 

For developers new to the command line, the GitHub Training team has put together a series of tutorials on Git commands to guide the way. Sometimes, a series of commands can paint a picture of how to use Git:

### Example: Contribute to an existing repository

    # download a repository on GitHub.com to our machine
    git clone https://github.com/me/repo.git

    # change into the `repo` directory
    cd repo

    # create a new branch to store any new changes
    git branch my-branch

    # switch to that branch (line of development)
    git checkout my-branch

    # make changes, for example, edit `file1.md` and `file2.md` using the text editor

    # stage the changed files
    git add file1.md file2.md

    # take a snapshot of the staging area (anything that's been added)
    git commit -m "my snapshot"

    # push changes to github
    git push --set-upstream origin my-branch


### Example: Start a new repository and publish it to GitHub
First, you will need to create a new repository on GitHub. You can learn how to create a new repository in our Hello World guide. Do not initialize the repository with a README, .gitignore or License. This empty repository will await your code.

    # create a new directory, and initialize it with git-specific functions
    git init my-repo

    # change into the `my-repo` directory
    cd my-repo

    # create the first file in the project
    touch README.md

    # git isn't aware of the file, stage it
    git add README.md

    # take a snapshot of the staging area
    git commit -m "add README to initial commit"

    # provide the path for the repository you created on github
    git remote add origin https://github.com/YOUR-USERNAME/YOUR-REPOSITORY.git

    # push changes to github
    git push --set-upstream origin master
    Example: contribute to an existing branch on GitHub
    # assumption: a project called `repo` already exists on the machine, and a new branch has been pushed to GitHub.com since the last time changes were made locally

    # change into the `repo` directory
    cd repo

    # update all remote tracking branches, and the currently checked out branch
    git pull

    # change into the existing branch called `feature-a`
    git checkout feature-a

    # make changes, for example, edit `file1.md` using the text editor

    # stage the changed file
    git add file1.md

    # take a snapshot of the staging area
    git commit -m "edit file1"

    # push changes to github
    git push
# Assignment 1: Project

This is an assignment to create a project structure and web view for our current and future projects. Please understand all steps in this document because we will be using this again and again in all future work related to this tutorial.

---

## Project Structure 
This is the directory structure we will be creating. All future assignments and projects will be housed in this directory.

    user.github.io
    ├── index.md
    ├── mkdocs.yml
    ├── notebooks
    ├── pages
    │   ├── blog
    │   │   └── 12-13-2018.md
    │   ├── images
    │   ├── projects.md
    │   └── resume.md
    └── projects
        └── project1

    6 directories, 5 files


## How to Create the Project Layout? 

We will be using `git` as a source control for our project. 

1. Create Github repository `user.github.io`

2. Setup git with this repo under your local directory `projects/`. Meaning `user.github.io` directory will be contained in `projects/`.

3. Create the project structure as shown in this repo directory from unix shell. You may find some existing files like `README.md, .gitignore` already present in the directory. These file are created by default by github.com when you created the repo. Please ignore them and let them stay as is. 

4. git - commit and push with online github repository to sync. Follow the `git` tutorial which you learnt before.

You are done.


## What are these directories ?

- `index.md, mkdocs,yml, pages` are the files and directories for the webpages of your github repository. Visitors can view these are a regular webpages on http://user.github.io
- `project` - this will contain the project files for the future assignments when we use shell or commandline
- `notebooks` - this will contain the files of our python notebook projects 

This common repository can be accessed from any machine. Just remember to `pull` when you start and `push` when you end your session so that the online repo is always up-to-date with latest changes.


## Lets create the webpage view of our projects.

* Modify `index.md` to contain basic info about yourself, an image of you or an avatar
* Modify `resume.md` and `projects.md` and add content to them. As the name suggests each file contains information specific to name and will show up as link on your `index.md` webpage.
* Create a blogpage under `blog` directory e.g. `12-13-2018.md` and write some content 
* Update `mkdocs.yml` with markdown configuration and navigation links for your website
* Build the project with `mkdocs` then git add, commit and push to sync remote repo. 

In the next assignment we will work in the `projects` directory. This directory will house the codes and programs we will write. 


## test 

 ├── 1.helloworld-intro
    │   ├── helloworld
    │   ├── helloworld.c
    │   ├── helloworld.class
    │   ├── helloworld-cs
    │   │   ├── bin
    │   │   │   └── Debug
    │   │   │       └── netcoreapp2.1
    │   │   │           ├── helloworld-cs.deps.json
    │   │   │           ├── helloworld-cs.pdb
    │   │   │           ├── helloworld-cs.runtimeconfig.dev.json
    │   │   │           └── helloworld-cs.runtimeconfig.json
    │   │   ├── helloworld-cs.csproj
    │   │   ├── obj
    │   │   │   ├── Debug
    │   │   │   │   └── netcoreapp2.1
    │   │   │   │       ├── helloworld-cs.AssemblyInfo.cs
    │   │   │   │       ├── helloworld-cs.AssemblyInfoInputs.cache
    │   │   │   │       ├── helloworld-cs.assets.cache
    │   │   │   │       ├── helloworld-cs.csprojAssemblyReference.cache
    │   │   │   │       ├── helloworld-cs.csproj.CoreCompileInputs.cache
    │   │   │   │       ├── helloworld-cs.csproj.FileListAbsolute.txt
    │   │   │   │       └── helloworld-cs.pdb
    │   │   │   ├── helloworld-cs.csproj.nuget.cache
    │   │   │   ├── helloworld-cs.csproj.nuget.g.props
    │   │   │   ├── helloworld-cs.csproj.nuget.g.targets
    │   │   │   └── project.assets.json
    │   │   └── Program.cs
    │   ├── helloworld.java
    │   └── helloworld.py
    ├── index.html
    ├── LICENSE
    └── README

    
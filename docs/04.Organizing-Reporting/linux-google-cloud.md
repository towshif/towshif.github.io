# Setting up Google Cloud Console 
This page describes how to start a new Google Cloud Shell session. We will be using google clould virtual unix environment to proceed with the next tutorial. 

## [Google Cloud](https://cloud.google.com/)

Go to [https://cloud.google.com/](https://cloud.google.com/) and click on Console. This will load your google cloud console and projects. This is a free service from google and unless you do advanced stuff you dont need to pay or subscribe. 

## Before you begin
Select or create a GCP project.

1. Go to the Manage resources page in the GCP Console -> GO TO THE MANAGE RESOURCES PAGE
2. On the Select organization drop-down list at the top of the page, select the organization in which you want to create a project. If you are a free trial user, skip this step, as this list does not appear.
3. Click Create Project.
4. In the New Project window that appears, enter a project name and select a billing account as applicable.
5. If you want to add the project to a folder, enter the folder name in the Location box.
6. When you're finished entering new project details, click Create.


## Starting a new session
Click the Activate Cloud Shell button at the top of the [Google Cloud Platform Console](https://console.cloud.google.com/?_ga=2.78739668.-1395301382.1545925460).


![](https://cloud.google.com/shell/docs/images/startcloudshell1.png)

A Cloud Shell session opens inside a new frame at the bottom of the console and displays a command-line prompt. It can take a few seconds for the shell session to be initialized.

![](https://cloud.google.com/shell/docs/images/startcloudshell2.png
)

When you start Cloud Shell, g1-small Google Compute Engine virtual machine running a Debian-based Linux operating system is provisioned for you. Cloud Shell instances are provisioned on a per-user, per-session basis. The instance persists while your Cloud Shell session is active and terminates after a hour of inactivity.


## Google Cloud Virtual Machine Overview
The cloud shell provides access to a linux virtual machine just line a standard linux/ unix based server. Cloud shell environment provides you with 

1. a code editor 
2. a shell - for commandline access

![Google Cloud Shell GUI](https://cloud.google.com/shell/docs/images/code-editor.png)

This environment makes editing code and using terminal very handy. Because all of this runs on Google servers so it is accessible from anywhere, you dont have to worrk about installation of linux and program. This is very handy when you dont have your own machine available. Also Cloud Shell comes prepackaged with most popular softwares and languages like `C`, `Python`, `Java`, `Node.js`, `Ruby`, `PHP`. 

Additional information on [Google Cloud Shell Features](https://cloud.google.com/shell/docs/features). 

---

## Customize your cloud shell 

Terminal Settings: I prefer Font -> Large, Monospace; Copy on Select; Dark theme.

**Update / add .vimrc** with syntax highlighting

    curl -fsSL https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim > ~/.vimrc

**Update .bashrc** with custom aliases

    curl -fsSL https://gist.githubusercontent.com/towshif/bba124a507d1f7513118977c7dd591ae/raw/22f26f731f0349c2b0fcd170dc33eca93e3c561e/bash-aliases.sh >> ~/.bashrc

**Install zsh** 

    # install oh-my-zsh (default)
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

**Install packages**

Because google cloud provisions this Virtual machine to your account it comes with a root access. So you can install whatever you want. However GC comes packaged with most of the useful language compilers.

    sudo apt install [package]

    # example: install htop process viewer 
    sudo apt install htop 

Also you can run a local server for development and host it over a local `PORT`. There is a preview button on top right of the cloud shell where you can configure the serving `PORT` and see the output of the local server. 

    # To start HTTP Server : default port 8080
    python -m SimpleHTTPServer 

    # Start mkdoc markdown Server : default port: 8000 
    python -m mkdocs serve


## Exercise 

1. Clone and existing git repo and create a projects folder in it. Using the google cloud code editor create working helloworld programs in `C`, `Java`, `Python`. Compile and run to verify. Please update/ add `.gitignore` to project home before commit 

        wget -c https://raw.githubusercontent.com/towshif/tutorials101/master/.gitignore

2. Create a simple index.html file(s) and start a local dev server to preview it on GCP using python `SimpleHTTPServer` module. 



3. Install a static site generator like `jekyll` or `mkdocs`. Use its dev server module (option: `serve`) to host a local site written in markdown and preview the changes in real time over a custom port using the *preview* option in cloud shell.
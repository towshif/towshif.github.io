# Setting up Google Cloud Console 
This page describes how to start a new Google Cloud Shell session. We will be using google clould virtual unix environment to proceed with the next tutorial. 


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

## Post Setup 

Once you have setup your cloud shell environment fire up the terminal in your browser and make a clone of the repo for the website we created in the previous tutorial `username.github.io`. 

    git clone https://github.com/username/username.github.io

You will not be able to visualize the repository and its folder structure in the google cloud code editor. 


**Next Steps**

# How to Setup Jupyter Notebook Server as a daemon service 

## Create a new user
Create a new user on your system with a home directory. Refer to documentation of the linux version you are using to set this up. 
This is a recommended method since it will allow smooth and dedicated user setup for this Jupyter Server.


## Check packages required
You should have these packages installed 

    python3 --version
    pip3 --version
    virtualenv --version

if not installed login as `sudo` user and install

    sudo apt update
    sudo apt install python3-dev python3-pip
    sudo pip3 install -U virtualenv  # system-wide install

## Setup Environment for development as jupyter notebook `user` 
Login as `user` and create a new virtual environment by choosing a Python interpreter and making a ./venv directory to hold it:

    virtualenv --system-site-packages -p python3 ~/venv
Activate the virtual environment using a shell-specific command:

    source ~/venv/bin/activate  # sh, bash, ksh, or zsh
When virtualenv is active, your shell prompt is prefixed with `(venv)`.

Install packages within a virtual environment without affecting the host system setup. Start by upgrading pip:

    pip install --upgrade pip

    pip list  # show packages installed within the virtual environment
And to exit virtualenv later:

    deactivate  # don't exit until you're done using your virtual environment

*Pro Tip*

    # add a bash alias in .bashrc for venv activation 
    # for zsh shell this is .zshrc 
    
    alias venv="source /home/fermi/venv/bin/activate"
    source ~/.bashrc   

    # run venv to activate virtual environment 
    venv 


## Install Jupyter as `sudo` user 
    sudo python3 -m pip install jupyter # system-wide install

## Login as `user` where you created virtual environment

Setup A notebook configuration file. Check to see if you have a notebook configuration file, jupyter_notebook_config.py. The default location for this file is your Jupyter folder located in your home directory:

* Windows: C:\Users\USERNAME\.jupyter\jupyter_notebook_config.py
* OS X: /Users/USERNAME/.jupyter/jupyter_notebook_config.py
* Linux: /home/USERNAME/.jupyter/jupyter_notebook_config.py

If you don’t already have a Jupyter folder, or if your Jupyter folder doesn’t contain a notebook configuration file, run the following command:

    jupyter notebook --generate-config
    
    # output
    Writing default config to: /home/fermi/.jupyter/jupyter_notebook_config.py

Navigate to jupyter_notebook_config.py in the ~/[PATH] specified above and open with an editor. 

## Set configuration for Jupyter
Edit the `jupyter_notebook_config.py `. For more info [refer to documentation](https://jupyter-notebook.readthedocs.io/en/stable/public_server.html).
    
    nano /home/fermi/.jupyter/jupyter_notebook_config.py
    
Change ip and port as you see fit. IP `0.0.0.0` will broadcast in LAN incase you want to access from another host other than localhost.
    
    ## The IP address the notebook server will listen on.
    c.NotebookApp.ip = '0.0.0.0'  #default= localhost 

    ## The port the notebook server will listen on.
    c.NotebookApp.port = 7000     #default=8888

## Startinf Jupyter for the first time 
Start the notebook 

    jupyter-notebook

    # output 
    [I 11:33:48.980 NotebookApp] Writing notebook server cookie secret to /run/user/1002/jupyter/notebook_cookie_secret
    [I 11:33:49.355 NotebookApp] Serving notebooks from local directory: /home/fermi
    [I 11:33:49.355 NotebookApp] The Jupyter Notebook is running at:
    [I 11:33:49.355 NotebookApp] http://(TSERV or 127.0.0.1):7000/?token=ea0e3be651a7244793651e7aadc6e8994d4db30ce5d8ef1b
    [I 11:33:49.355 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
    [W 11:33:49.356 NotebookApp] No web browser found: could not locate runnable browser.
    [C 11:33:49.356 NotebookApp]

        Copy/paste this URL into your browser when you connect for the first time,
        to login with a token:
            http://(TSERV or 127.0.0.1):7000/?token=ea0e3be651a7244793651e7aadc6e8994d4db30ce5d8ef1b
    [I 11:34:18.338 NotebookApp] 302 GET /?token=ea0e3be651a7244793651e7aadc6e8994d4db30ce5d8ef1b (66.167.121.235) 0.89ms

Visit the url from the commandline output in you browser. In this example the url is: 

`http://(TSERV or 127.0.0.1):7000/?token=ea0e3be651a7244793651e7aadc6e8994d4db30ce5d8ef1b`.

You can also replace `http://(TSERV or 127.0.0.1)` with the `IP` or `HOSTNAME` of the server/ machine. You should be able to login. 


## Logout and then login again: Set a password
When you logout and login the second time you will be asked to set password. Use the `token` and set a new password which will then be encrypted now saved in the `/home/fermi/.jupyter/jupyter_notebook_config.json`. You can manually check contents of this file.

Now exit the server ^C and start the server again. You wont see any token generated since a password auth is in place. Now we are ready to deply this as `jupyter` a service. 

## Setting up notebook server as a service 
login as `user`

Setup Environment for your service. I use a file for setting all the ENVIRONMENT_VARIABLES for this service to use 
    
    # create env file in /home/fermi/.jupyter/env
    touch /home/fermi/.jupyter/env

Add ENVIRONMENT VARIABLES in to the file as follows. Add `venv`, `CUDA` libraries and paths if you have.
You can lookup your `.bashrc` to check if you have custom variables.

    # file:     /home/fermi/.jupyter/env
        
    # Note that I am including venv path so that jupyter.service uses this venv binaries.
    PATH=/home/fermi/venv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/snap/bin:/usr/local/cuda/bin:$PATH
    
    # in case you have GPU installed provide paths to CUDA libs 
    LD_LIBRARY_PATH=/usr/local/cuda/lib64:/usr/local/cuda/extras/CUPTI/lib64:$LD_LIBRARY_PATH
    CUDA_HOME=/usr/local/cuda
    CUDA_VISIBLE_DEVICES=0

Now login as `sudo` user. 

    # create a service file
    sudo touch /lib/systemd/system/jupyter.service

    # open and edit 
    sudo nano /lib/systemd/system/jupyter.service

The following is a modified version of [this service config](https://gist.github.com/whophil/5a2eab328d2f8c16bb31c9ceaf23164f).

    # service name:     jupyter.service 
    # path:             /lib/systemd/system/jupyter.service
    
    # After Ubuntu 16.04, Systemd becomes the default.
    # Ref: https://gist.github.com/whophil/5a2eab328d2f8c16bb31c9ceaf23164f

    [Unit]
    Description=Jupyter Notebook Server

    [Service]
    Type=simple
    PIDFile=/run/jupyter.pid

    EnvironmentFile=/home/fermi/.jupyter/env
    
    # Jupyter Notebook: change PATHs as needed for your system
    ExecStart=/usr/local/bin/jupyter-notebook --config=/home/fermi/.jupyter/jupyter_notebook_config.py
    
    # In case you want to use jupyter-lab 
    # ExecStart=/usr/local/bin/jupyter-lab --config=/home/fermi/.jupyter/jupyter_notebook_config.py

    User=fermi
    Group=fermi
    WorkingDirectory=/home/fermi/users
    Restart=always
    RestartSec=10
    #KillMode=mixed

    [Install]
    WantedBy=multi-user.target


Recap and a things to note:

* service will run as user `fermi`. Since we have provided default access to fermi's home directory and our workspace `WorkingDirectory=/home/fermi/users`
* the python venv is enabled by using settings `/home/fermi/.jupyter/env`
* you can change the default to `jupyter-lab` from `jupyter-notebook`


## Jupyter Kernels
By default ipykernel is installed along with jupyter when we installed the jupyter notebook in previous step. 
However we also have to provide a kernel for the virtual environment we just created. 

login as `user` and list all existing kernels 

    jupyter-kernelspec list

Create a custom kernel with python3 from the virtual env with a custom name *venvPy3*
    
    source ~/venv/bin/activate
    
    which python    # this should echo 
    >    /home/fermi/venv/bin/python
    
    python --version    # check version just to make sure its the same we installed 
    >   Python 3.5.2
    
    # from venv install kernel 
    python3 -m ipykernel install --user --name=venvPy3
    
    jupyter-kernelspec list
    Available kernels:
    venvpy3     /home/fermi/.local/share/jupyter/kernels/venvpy3  
    python3     /usr/local/share/jupyter/kernels/
    
You should also be able to see native kernels as shown here `python3` from native python in `/usr/local/share/jupyter/kernels/`
This is happening because of the ipykernel that is installed in the systems python libraries. 
To install packages with native kernels use `--user` option.
This is however not required for the virtualenv.

For our application we would like to disable native kernels and provide user access to only the venv for simplicity. We can add as many kernels as we like in the venv. 

First check where is ipykernel installed. Login as `sudo` user

    pip3 list | grep ipykernel 

Uninstall `ipykernel` from system python libs. 

    sudo  python3 -m pip uninstall  ipykernel
    
Login as jupyter notebook `user` and activate `venv`. Now from install `ipykernel` in venv. 
    
    # from venv install kernel     
    pip install ipykernel
    
    # list existing kernels 

    # install custom venv kernel 
    python3 -m ipykernel install --user --name=venvPy3

You can add as many kernel as needed for multiple versions of python from within the venv. 
All kernels created inside venv are available in the `user` home at `/home/fermi/.local/share/jupyter/kernels/`

## Start the jupyter service
Now we are ready to start the service. Enable and start the daemon 

    # Enable the service
    sudo systemctl enable jupyter.service
    Created symlink from /etc/systemd/system/multi-user.target.wants/jupyter.service to /lib/systemd/system/jupyter.service.
    
    # Reload and Restart Service 
    sudo systemctl daemon-reload
    sudo systemctl restart jupyter.service


    # Now check status of the jupyter service daemon 
    
    sudo service jupyter status

output : the daemon is running 

    ● jupyter.service - Jupyter Notebook Server
    Loaded: loaded (/lib/systemd/system/jupyter.service; enabled; vendor preset: enabled)
    Active: active (running) since Sat 2018-11-24 12:09:05 PST; 21s ago
    Main PID: 8012 (jupyter-noteboo)
        Tasks: 1
    Memory: 40.6M
        CPU: 824ms
    CGroup: /system.slice/jupyter.service
            └─8012 /usr/bin/python3 /usr/local/bin/jupyter-notebook --config=/home/fermi/.jupyter/jupyter_notebook_config.py


## login to the jupyter notebook and check 

Visit the URL, create a new notebook. 

Verify the venv is loaded 

    ! python --version 
    ! pip --version 
    ! which python
    ! which pip 

should generate output 

    Python 3.5.2
    pip 18.1 from /home/fermi/venv/lib/python3.5/site-packages/pip (python 3.5)
    /home/fermi/venv/bin/python
    /home/fermi/venv/bin/pip

As you see the venv is active. Also you should be able to see the 'Python3' venv kernel in the kernel list.

To check kernels available run this from commandline 

    jupyter-kernelspec list
      python3    /usr/local/share/jupyter/kernels/python3

To add and rename kernels please refer to `jupyter-kernelspec` documentation. 


## Check permissions for pip install from jupyter 
From a new notebook run: 

    ! pip install pandas 
If you dont get any permission errors during the install you are good to go. 

This concludes the full installation process for the **Jupyer Notebook Server** as a service daemon. 

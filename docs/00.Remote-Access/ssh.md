# ssh - Secure Shell in 10 mins 
ssh is a secure shell client to access remote terminal securely.

---



## ssh on Linux

### Install
ssh client is available as a part of openssh-server package. 
    
    # install ssh client, server and ssh-agent
    sudo apt install openssh-server


### `ssh` usage syntax 
    # Basic usage     
    ssh [USERNAME]@[IP_ADDRESS or HOSTNAME]

    # with custom PORT; default PORT:22
    ssh -p [PORT] [USERNAME]@[IP_ADDRESS or HOSTNAME]

Example: 
    
    ssh -p 6789 fermi@server.gentoo.com 

---

## ssh client for Windows: `Putty`

### Install 
[Original reference](http://pdalinis.blogspot.com/2013/08/putty-powerline.html)
* Download Putty standalone version or installed version from [http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html](http://www.chiark.greenend.org.uk/~sgtatham/putty/download.html)
* Run the PuTTY tool (putty.exe)
* In the PuTTY tool, specify your username and the external IP address of the instance that you want to connect to in the Host Name field. Click open.
    
    In the example below, the `username` is jane_doe and the external `IP` address is 203.0.113.2

    You can however use only `[IP]` instead of the `[username]@[IP]` syntax.
    
    ![Putty](https://cloud.google.com/compute/images/connecting/putty_set_hostname.png)

### Connect
User guide for connecting to server : [ssh with putty ](https://www.digitalocean.com/docs/droplets/how-to/connect-with-ssh/putty/)
For exploring more advanced option on putty continue reading. 

*This concludes the 10 min tutorial. Keep reading for advanced configurations with ssh.*

### Putty Fonts, Themes and Appearance: Customizing Putty with powerline

Powerline is a really nice looking command prompt and vim status bar.  When working on my linux machine, it was very easy to install following the instructions.
Trying to get it to work in Windows and PuTTY, however, took a bit of sleuthing.  To add onto the complexity, the project has changed, and some of the information that is out there is outdated.

So, here is what I did to make it work:
Follow the installation instructions for powerline

* Download and install (double click for install menu) the [DejaVu](https://github.com/Lokaltog/powerline-fonts/tree/master/DejaVuSansMono) font in Windows.  Some of the other fonts in the site worked, and others didn't.  PuTTY seems to be picky on what fonts it will use, and the DejaVu font is a nice looking mono-spaced font, so it is a good starting point.
* (Re)run PuTTY and create a new session with the following settings
    * `Window-Appearance-Font = DejaVu Sans Mono for Powerline`
    * `Window-Appearance-Font Quality = ClearType` 
    * `Window-Translation-Character Set = UTF-8`
* Verify your linux locale `LANG=en_US.UTF-8`  (mine was out of the box)
* Verify that your `.vimrc` has `set encoding=utf-8`
* Verify your term session is capable of 256 colors (TERM=xterm-256color)

In addition you can also customize the Colours > ANSI Blue to (RGB) = (108, 108, 187). This will lighten the blue shades of powerline fonts. Useful for `Agnoster` type arrow themes.

And that's it! 


---


## ssh authentication KEYS
Advanced usage with encryption KEYS. To use keys first you need to generate a key pair containing 
* public key [remains in server or the host] ; format *.pub (Unix) and *.ppk (windows Putty) 
* private key [used by client]

Usage Syntax for ssh connection with keys:

    ssh -i [PATH_TO_PRIVATE_KEY] [USERNAME]@[IP_ADDRESS]

Example: 

    ssh -i /home/towshif/.ssh/AWS-Server2019-Key -p 6789 towshif@server.gentoo.com 


### How To Set Up SSH Keys on Host and Client (Linux)
Now lets look at how to setup server and client to use keys. With keys you can also skip password for ssh login. 
1. Step One—Create the RSA Key Pair

    The first step is to create the key pair on the `client` machine (there is a good chance that this will just be your computer):

        ssh-keygen -t rsa

    advanced usage: 

        ssh-keygen -t rsa -f ~/.ssh/[KEY_FILENAME] -C [USERNAME]
        
2. Step Two—Store the Keys and Passphrase

    Once you have entered the Gen Key command, you will get a few more questions:


        Enter file in which to save the key (/home/demo/.ssh/id_rsa):
        # You can press enter here, saving the file to the user home (in this case, my example user is called demo).

        Enter passphrase (empty for no passphrase):
    Example: 
    The entire key generation process looks like this:
    >    
        ssh-keygen -t rsa
    
    Output


        Generating public/private rsa key pair.
        Enter file in which to save the key (/home/demo/.ssh/id_rsa): 
        Enter passphrase (empty for no passphrase): 
        Enter same passphrase again: 
        Your identification has been saved in /home/demo/.ssh/id_rsa.
        Your public key has been saved in /home/demo/.ssh/id_rsa.pub.
        The key fingerprint is:
        4a:dd:0a:c6:35:4e:3f:ed:27:38:8c:74:44:4d:93:67 demo@a
        The key's randomart image is:
        +--[ RSA 2048]----+
        |          .oo.   |
        |         .  o.E  |
        |        + .  o   |
        |     . = = .     |
        |      = S = .    |
        |     o + = +     |
        |      . o + o .  |
        |           . o   |
        |                 |
        +-----------------+
        The public key is now located in /home/demo/.ssh/id_rsa.pub. 
        The private key (identification) is now located in /home/demo/.ssh/id_rsa.
    
    List the contents of ~/.ssh to view the key files. 
    * Public key file: ~/.ssh/[KEY_FILENAME].pub
    * Private key file: ~/.ssh/[KEY_FILENAME]
    where [KEY_FILENAME] is the filename of the SSH key, which was set when the key was created.
    
    Restrict access to the private key so only you (this USER) can access it
    
            chmod 400 ~/.ssh/[KEY_FILENAME]
    Private keys can be used from different clients to connect to the host.

3. Step Three—Copy the Public Key to Host Server that you want to access. 

    Once the key pair is generated, it's time to place the public key on the server that we want to use.
    You can copy the public key into the new machine's authorized_keys file with the `ssh-copy-id` command. Make sure to replace the example username and IP address below.


        ssh-copy-id demo@198.51.100.0

    OR copy manually like this or any way you prefer. 


        cat ~/.ssh/id_rsa.pub | ssh demo@198.51.100.0 "mkdir -p ~/.ssh && chmod 700 ~/.ssh && cat >>  ~/.ssh/authorized_keys"
    
    Either one you choose you will see similar output as this 


        The authenticity of host '198.51.100.0 (198.51.100.0)' can't be established.
        RSA key fingerprint is b1:2d:33:67:ce:35:4d:5f:f3:a8:cd:c0:c4:48:86:12.
        Are you sure you want to continue connecting (yes/no)? yes
        Warning: Permanently added '198.51.100.0' (RSA) to the list of known hosts.
        user@198.51.100.0's password:

    Remember to change permisson for public key to 700 on your remote server. Make sure you're logged in as the user for whom the key was created. Then, ensure your .ssh directory on the server, and the files it contains, have the correct permissions:

    
        chmod 700 ~/.ssh/[KEY_FILENAME].pub        
        # optional if you are only user
        chmod 600 ~/.ssh/authorized_keys 

To Create ssh keys on Windows with `putty` use this reference:   
[SSH keys on Windows](https://www.digitalocean.com/docs/droplets/how-to/add-ssh-keys/create-with-putty/)

### Log In Using Your Private Key
You can now SSH or SFTP into your server using your private key. From the command line, you can use:

    ssh SYSUSER@x.x.x.x
If you didn't create your key in the default location, you'll need to specify the location:

    ssh -i ~/.ssh/custom_key_name SYSUSER@x.x.x.x
OR a more verbose syntax 

    # -l [USER]
    # -i [PATH TO PRIVATE KEY]
    # -p [PORT]
    ssh -i /nfs/shared/users/nixcraft/keys/server1/id_rsa -p 4242 -l nixcraft server1.cyberciti.biz



### Retrieve Your Public Key from Your Private Key
The following command will retrieve the public key from a private key:

    ssh-keygen -y
This can be useful, for example, if your server provider generated your SSH key for you and you were only able to download the private key portion of the key pair.
Note that you cannot retrieve the private key if you only have the public key.


If you're using a Windows SSH client, such as PuTTy, look in the configuration settings to specify the path to your private key.

---

## ssh Tips

### Using ssh `config` file for easy login : [More Info](https://scotch.io/tutorials/how-to-create-an-ssh-shortcut)
Create a file `config` in ~/.ssh dir and you can populate it with the host login configurations that are frequently used by that machine. 
Note : passwords are not allowed to be saven in this file. 

If config file doesnot exist create one 

    touch ~/.ssh/config
    vi ~/.ssh/config

Set permissions on ~/.ssh/config

    chmod 600 ~/.ssh/config

Sample basic `config` : 

    Host scotch
        HostName scotch.io
        User nick

    Host example2
        HostName example.com
        User root

    Host example3
        HostName 64.233.160.0
        User userxyz123
        Port 56000

    Host amazon1
        HostName ec2.amazon.com
        User ec2-user
        IdentityFile /path/to/special/privatekey/amazonKey
        ServerAliveInterval 60
        ServerAliveCountMax 30

For host "amazon1" there are `ServerAliveInterval` and `ServerAliveCountMax` options. 
* `ServerAliveInterval` option will refresh your session every 60 seconds in order to keep it open, 
* `ServerAliveCountMax` option specifies that this should only be performed 30 times, thus ensuring your session won’t time-out for at least 30 minutes of inactivity.


### Using alias in `.bashrc` for ssh host enries 

    # in .bashrc file add this line 
    alias dev='ssh fooey@dev.example.com -p 22000'
    
    # then source it 
    source ~/.bashrc 
To connect 

    $ dev 
Use as many alias as needed. For more info on `alias` use [this reference](https://www.digitalocean.com/community/tutorials/an-introduction-to-useful-bash-aliases-and-functions)


---

## SSH Tunnelling 
What is it?

### Port Forwarding : Forward Tunnel 

    ssh -f -N -L 9906:127.0.0.1:3306 coolio@database.example.com
    # -f puts ssh in background
    # -N makes it not execute a remote command




### Reverse SSH tunnelling 

This section is in progress.    

---

## Google Cloud Comute Instance SSH connect 
* [Connect with ssh / putty](https://cloud.google.com/compute/docs/instances/connecting-advanced#provide-key)
* [Create New SSH Keys](https://cloud.google.com/compute/docs/instances/adding-removing-ssh-keys#createsshkeys)
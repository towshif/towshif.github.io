# Accessing Network from shell
This document explains how Unix based OS can access and communicate with **LAN and Internet**. Lets get started. 

---
## 1. `curl` - Get a webpage

    # Syntax
    curl [options] [URL...]

Examples: 

    Fetch the file index.htm from www.computerhope.com over HTTP, and display it to stdout
    curl https://www.computerhope.com/index.htm

    Fetch and save to file myindex.htm
    curl https://www.computerhope.com/index.htm > myindex.htm

    # Fetch and output to a file with the same name (index.htm),  curl OPTION -O
    curl -O https://www.computerhope.com/index.htm
    
Try yourself 

    curl https://towshif.com

---

## 2. `wget` - Download a file from a url link (FTP, SFTP, HTTP(S))

    wget [OPTIONS] [URL LINK TO FILE]

Try yourself 

    wget https://www.livingandloving.co.za/wp-content/uploads/2017/02/How-to-cope-with-your-babys-acid-reflux.jpg

This command will download the following baby image to your local machine
![baby](https://www.livingandloving.co.za/wp-content/uploads/2017/02/How-to-cope-with-your-babys-acid-reflux.jpg)


OPTION `-c`: 

    # if a partial download exists, resume the download where it left off.
    wget -c http://www.example.org/files/archive.zip

OPTION `-b`

    # Download in the background, returning you to the command prompt in the interim.
    wget -b http://www.example.org/files/archive.zip
    # in above case wget-log appears in the specified download directory 
    tail -f wget-log


wget Over FTP with auth

    wget --ftp-user=YOUR_USERNAME --ftp-password=YOUR_PASSWORD ftp://example.com/something.tar




---
## 3. `ssh` - secure shell access 

    ssh [OPTIONS] [user]@[host]

Examples: 

    # Basic usage     
    ssh [USERNAME]@[IP_ADDRESS or HOSTNAME]

    # with custom PORT; default PORT:22
    ssh -p [PORT] [USERNAME]@[IP_ADDRESS or HOSTNAME]



---
## 4. `scp` - Copy a file across network servers

    scp [OPTIONS] [USER]@[SOURCE_HOST]:[SOURCE FILEPATH] [USER]@[DESTINATION_HOST]:[DEST FILEPATH]

Example: scp file copy from one host to another / local machine. 

    # Copy file from a remote host to local host SCP example:
    scp username@from_host:file.txt /local/directory/

    # Copy file from local host to a remote host SCP example:
    scp file.txt username@to_host:/remote/directory/

    # Copy directory from a remote host to local host SCP example:
    scp -r username@from_host:/remote/directory/  /local/directory/

    # Copy directory from local host to a remote hos SCP example:
    scp -r /local/directory/ username@to_host:/remote/directory/

    # Copy file from remote host to remote host SCP example:
    scp username@from_host:/remote/directory/file.txt username@to_host:/remote/directory/

With Custom PORT `-P` option example scp port 90: 
    
     scp -P 90 username@from_host:/remote/directory/file.txt username@to_host:/remote/directory/

In case both ports are different then use 2 steps via a local directory to copy from HOST1 to HOST2 

---

# Unix Shell in 10 mins

## Unix File System Directory Structure and notations 
    ~                       -> HOME directory 
    .                       -> current directory 
    ..                      -> parent directory 
    ../../                  -> parent of parent and can be used in any combination
    *.jpg                   -> [Wildcard notation] select all files with extension `jpg` in current directory 
    ~/Documents/*.doc       -> [Wildcard notation] select all files with extension `doc` in [HOME_DIRECTORY]/Documents/
Also take a look at this [badunixhabits](https://www.ibm.com/developerworks/aix/library/au-badunixhabits.html) guide.

# Basic Unix Shell Commands

## `ls`
The ls command is used to list the contents of a directory. It is probably the most commonly used Linux command. It can be used in a number of different ways. Here are some examples: 
    
    ls -options arguments

    ls                  # List the files in the working directory

    ls /bin	            # List the files in the /bin directory (or any other directory you care to specify)

    ls -l	            # List the files in the working directory in long format

    ls -l /etc /bin	    #  List the files in the /bin directory and the /etc directory in long format

    ls -la ..           # List all files (even ones with names beginning with a period character, which are normally hidden) in the parent of the working directory in long format


## `cd`
Change Directory to the path specified, for example cd projects. There are a few really helpful arguments to aid this:
 
    cd [DIRECTORY_NAME]

## `mkdir`
Make directories with this command mkdir my_folder . Not only can it make the folder specified, but also its parents if they do not exist already using the -p option. The command 

    mkdir [DIRECTORY_NAME]
    
    # To create multiple new nested folder: the first, next folder and the next on path
    mkdir -p first_folder/next_folder/my_folder 

There is an option to set the mode, or permissions, via the -m flag, and these can be changed later with the chmod command (see below for more on mode and permissions).


## `touch` 
Create an empty file. Touches the file to update the access and or modification date of a file or directory without opening, saving or closing the file. But one of the most common uses is to create an empty file touch my_file.
 
    touch [FILENAME]

## `cat`
Concatenate and print files to stdout cat my_file. This command is only for view/ preview. 
You can pass one or more file names to this command, and even number the lines using the -n to number the lines. Close cousin of this is `more`, `head`, `tail`. Also you can use  `vi` to launch a terminal-based text editor. 

    cat [FILENAME]              # to show whole file in stdout (terminal)
    cat [FILENAME] -n           # to number the lines in stdout (terminal)
    cat [FILENAME_1] [FILENAME_2] [..]
    
## `mv`
Moves files and folders. The first argument is the file you want to move, and the second is the location to move it to. Use the flags -f to force move them and -i to prompt confirmation before overwriting files.

## `cp`
Copies files and folders cp my_file ./projects . The flag -r recursively copies subfolders and files.

## `rm`
Removes files and folders rm my_folder. Options below
 
    rm [FILENAME or WILDCARDS]

    # removes all file in the current folder with extension jpg and txt
    rm *.jpg *.txt 
    
    # Using -r will again recursively delete subfolders, -f force deletes, and -rf for a recursive force delete. 
    rm -r [DIRECTORY_NAME]

    
    # If you want to remove all folders and files in the current directory the command is 
    rm -rf ./* 

## `chmod`
Change mode so you can set permissions for read, write and execute for the user, members of your group and others. This uses binary values as an argument to set these. There are many common chmod permissions, a few key ones are:

In general, chmod commands take the form:

    chmod options permissions file name
If no options are specified, chmod modifies the permissions of the file specified by file name to the permissions specified by permissions.

permissions defines the permissions for the owner of the file (the "user"), members of the group who owns the file (the "group"), and anyone else ("others"). There are two ways to represent these permissions: with symbols (alphanumeric characters), or with octal numbers (the digits 0 through 7).

Let's say you are the owner of a file named myfile, and you want to set its permissions so that:
* the user can read, write, ande xecute it;
* members of your group can read ande xecute it; and
* others may only read it.

This command will do the trick:

    chmod u=rwx,g=rx,o=r myfile
This example uses symbolic permissions notation. The letters u, g, and o stand for "user", "group", and "other". The equals sign ("=") means "set the permissions exactly like this," and the letters "r", "w", and "x" stand for "read", "write", and "execute", respectively. The commas separate the different classes of permissions, and there are no spaces in between them.

Here is the equivalent command using octal permissions notation:

    chmod 754 myfile 
    # this is equivalent to chmod u=rwx,g=rx,o=r myfile
Here the digits 7, 5, and 4 each individually represent the permissions for the user, group, and others, in that order. Each digit is a combination of the numbers 4, 2, 1, and 0:

    4 stands for "read",
    2 stands for "write",
    1 stands for "execute", and
    0 stands for "no permission."
So 7 is the combination of permissions 4+2+1 (read, write, and execute), 5 is 4+0+1 (read, no write, and execute), and 4 is 4+0+0 (read, no write, and no execute).

    777 — anyone can read, write and execute chmod 777 my_file
    755 — for files that should be readable and executable by others, but only changeable by the issuing user
    700 — only the user can do anything to the file

These are the examples from the symbolic notation section given in octal notation:

    Symbolic       Notation    Numeric Notation English  
    ----------     0000        no permissions  
    -rwx------     0700        read, write, & execute only for owner   
    -rwxrwx---     0770        read, write, & execute for owner and group  
    -rwxrwxrwx     0777        read, write, & execute for owner, group and others  
    ---x--x--x     0111        execute     
    --w--w--w-     0222        write   
    --wx-wx-wx     0333        write & execute     
    -r--r--r--     0444        read    
    -r-xr-xr-x     0555        read & execute  
    -rw-rw-rw-     0666        read & write    
    -rwxr-----     0740        owner can read, write, & execute; group can only read; others have no permissions   


chmod Examples
    # Set the permissions of file.htm to "owner can read and write; group can read only; others can read only".
    chmod 644 file.htm
    
    # Recursively (-R) Change the permissions of the directory myfiles, and all folders and files it contains, to mode 755: User can read, write, and execute; group members and other users can read and execute, but cannot write.
    chmod -R 755 myfiles
    
    # Change the permissions for the owner of example.jpg so that the owner may read and write the file. Do not change the permissions for the group, or for others.
    chmod u=rw example.jpg
    
    # Set the "Set-User-ID" bit of comphope.txt, so that anyone who attempts to access that file does so as if they are the owner of the file.
    chmod u+s comphope.txt
    
    # The opposite of the above command; un-sets the SUID bit.
    chmod u-s comphope.txt
    
    # Set the permissions of file.cgi to "read, write, and execute by owner" and "read and execute by the group and everyone else".
    chmod 755 file.cgi
    
    # Set the permission of file.txt to "read and write by everyone.".
    chmod 666 file.txt
    
    # Accomplishes the same thing as the above command, using symbolic notation.
    chmod a=rw file.txt
    

##  `man`
Manuals for a command can be shown with this instruction. Below is some of the output from running man ls, it also displays all the options available for running the command.

    LS(1)                     BSD General Commands Manual                    LS(1)
    NAME
        ls -- list directory contents
    SYNOPSIS
        ls [-ABCFGHLOPRSTUW@abcdefghiklmnopqrstuwx1] [file ...]
    DESCRIPTION
        For each operand that names a file of a type other than directory, ls displays its name as well as
        any requested, associated information.  For each operand that names a file of type directory, ls
        displays the names of files contained within that directory, as well as any requested, associated
        information.



## Redirection 
Write (or redirect) output from a command to a file.  
`>` with write to the file which `>>` will append to the file if it already exists. 

    # Redirection
    python hello.py > output.txt   # stdout to (file)
    python hello.py >> output.txt  # stdout to (file), append
    python hello.py 2> error.log   # stderr to (file)
    python hello.py 2>&1           # stderr to stdout
    python hello.py 2>/dev/null    # stderr to (null)
    python hello.py &>/dev/null    # stdout and stderr to (null)
    python hello.py < foo.txt


[Cheat Sheet](https://devhints.io/bash)
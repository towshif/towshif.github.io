# UNIX Shell in 10 mins

## **Unix File System** 
Directory Structure and notations.

    ~                       -> HOME directory 
    .                       -> current directory 
    ..                      -> parent directory 
    ../../                  -> parent of parent and can be used in any combination
    *.jpg                   -> [Wildcard notation] select all files with extension `jpg` in current directory 
    ~/Documents/*.doc       -> [Wildcard notation] select all files with extension `doc` in [HOME_DIRECTORY]/Documents/
Also take a look at this [badunixhabits](https://www.ibm.com/developerworks/aix/library/au-badunixhabits.html) guide.



## **Basic Unix Shell Commands**

Summary 

| command     | Function                           | Example Syntax               | -OPTIONS    |
| ---         | ---                                | ---                          | ---         |
| `pwd`       | pathname for the current directory | `pwd`                        |             |
| `ls`        | List files                         | `ls -l [DIR/PATH/WILDCARDS]` | `-ltrha`    |
| `file`      | displays file type                 | `file [DIR/PATH/WILDCARDS]`  |             |
| `cd`        | Change Directory                   | `cd [DIRNAME/PATH]`          |             |
| `mkdir`     | Make Directory                     | `mkdir [DIRNAME/PATH]`       | `-p (path)` |
| `touch`     | Create a new empty File            | `touch [FILENAME]`           |             |
| `cat`       | Display contents of a File         | `cat [FILENAME]`             |             |
| `mv`        | move/ rename                       | `mv [SOURCE][DESTINATION]`   |             |
| `cp`        | copy                               | `cp [SOURCE][DESTINATION]`   | `-rf`       |
| `rm`        | remove/ delete                     | `rm [DIRNAME/FILENAME]`      | `-rf`       |
| `>` or `>>` | redirecting output                 | `cat [FILE1] >> [FILE2]`     |             |
| `man`       | displays usage manual              | `man [UNIX COMMAND]`         |             |
| `history`   | displays history of commands       | `history`                    | `!-3`       |


For more -OPTIONS try `man [COMMAND]`


---


### `ls`  - List files 
The ls command is used to list the contents of a directory. It is probably the most commonly used Linux command. It can be used in a number of different ways. Here are some examples: 
    
    ls -options arguments

    ls                  # List the files in the working directory

    ls /bin	            # List the files in the /bin directory (or any other directory you care to specify)

    ls -l	            # List the files in the working directory in long format

    ls -l /etc /bin	    #  List the files in the /bin directory and the /etc directory in long format

    ls -la ..           # List all files (even ones with names beginning with a period character, which are normally hidden) in the parent of the working directory in long format

Wild Cards `*` and `?`

    ls *.doc            # List all files ending with '.doc' 
    ls hello*           # List all files starting with 'hello'
    ls ??ll*            # List all files with 3,4th chars 'll' 

---

### `cd` - Change Directory
Change Directory to the path specified, for example cd projects. There are a few really helpful arguments to aid this:
 
    cd [DIRECTORY_NAME or PATH]     # navigate to  DIR or PATH
    cd ~                            # ~ is HOME directory of user also same as
    cd $HOME
    cd ../..                        # navigate up 2 levels

---

### `mkdir` - Make Directory
Make directories with this command mkdir my_folder . Not only can it make the folder specified, but also its parents if they do not exist already using the -p option. The command 

    mkdir [DIRECTORY_NAME]
    
    mkdir -p first_folder/next_folder/my_folder 
    # To create multiple new nested folder: 
    # the first, next folder and the next on path
    
There is an option to set the mode, or permissions, via the -m flag, and these can be changed later with the chmod command (see below for more on mode and permissions).

---

### `touch` - Create a File 
Create an empty file. Touches the file to update the access and or modification date of a file or directory without opening, saving or closing the file. But one of the most common uses is to create an empty file touch my_file.
 
    touch [FILENAME]            # creates a blank file called 'FILENAME'


---

### `cat` - Display content of a File
Concatenate and print files to stdout cat my_file. This command is only for view/ preview. 
You can pass one or more file names to this command, and even number the lines using the -n to number the lines. Close cousin of this is `more`, `head`, `tail`. Also you can use  `vi` to launch a terminal-based text editor. 

    cat [FILENAME]              # to show whole file in stdout (terminal)
    cat [FILENAME] -n           # print line numbers in stdout (terminal)
    cat [FILENAME_1] [FILENAME_2] [..]

---

    
### `mv` - move or rename 
Moves files and folders. The first argument is the file you want to move, and the second is the location to move it to. Use the flags -f to force move them and -i to prompt confirmation before overwriting files.

Moving Files and Directories 
    
    mv [SOURCE_FILE OR DIRECTORY] [DESTINATION_FILE OR DIRECTORY] 

---

### `cp` - copy 
Copies files and folders cp my_file ./projects . The flag -r recursively copies subfolders and files.


Copying Files
    
    cp [SOURCE_FILE] [DESTINATION_FILE] 

Copying Directories ( `-r` option )

    cp -r [SOURCE DIRECTORY] [DESTINATION DIRECTORY]    # -r options needed to move files recursively

---

### `rm` - remove/ delete
Removes files and folders rm my_folder. Options below
 
    rm [FILENAME or WILDCARDS]

    # removes all file in the current folder with extension jpg and txt
    rm *.jpg *.txt 
    
    # Using -r will again recursively delete subfolders, -f force deletes, and -rf for a recursive force delete. 
    rm -r [DIRECTORY_NAME]

    
    # If you want to remove all folders and files in the current directory the command is 
    rm -rf ./* 

---

### Redirection - output
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

---

###  `man` - manual
Manuals for a command can be shown with this instruction. Below is some of the output from running man ls, it also displays all the options available for running the command.

    man ls 

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

---

[Cheat Sheet](../unix-cheat-sheet/)

[Another Cheat Sheet](https://devhints.io/bash)
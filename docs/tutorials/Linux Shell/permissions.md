# Setting Permission with chmod

## `chmod`
Change mode so you can set permissions for read, write and execute for the user, members of your group and others. This uses binary values as an argument to set these. There are many common chmod permissions, a few key ones are:

In general, chmod commands take the form:

    chmod [who][+,-,=][permissions] filename

Example #1: 

    chmod g+w,o-rw,a+x ~/group-project-files/

This adds write permissions to the usergroup members, and removes read and write permissions from the “other” users of the system. Finally the a+x adds the execute permissions to all categories. This value may also be specified as +x. If no category is specified, the permission is added or subtracted to all permission categories.

Example #2: 

    chmod -R +w,g=rw,o-rw, ~/group-project-files/

The -R option applies the modification to the permissions recursively to the directory specified and to all of its contents

Permissions: 

    File type   	User	Group	Global
    d Directory	    rwx	    r-x	    r-x
    - Regular file	rw-	    r--	    r--
    l Symbolic Link	rwx	    rwx	    rwx

Who: 

    Who 	Meaning
    u	     user
    g	     group
    o	     others
    a	     all



**chmod - details** 

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


## Setting Default permissions for Directory with user groups 

[Stackoverflow ref.](https://unix.stackexchange.com/questions/1314/how-to-set-default-file-permissions-for-all-folders-files-in-a-directory)

How to set rw permission in a directory shared by a `group` of users

* First all users accessing the directory need to share a group. 
* Then change the group permissions of the directory and set to default rwx

```
chmod g+s <directory>  //set gid 
setfacl -d -m g::rwx /<directory>  //set group to rwx default 
setfacl -d -m o::rx /<directory>   //set other
```
Next we can verify:
```
getfacl /<directory>
```
Output:
```
# file: ../<directory>/
# owner: <user>
# group: media
# flags: -s-
user::rwx
group::rwx
other::r-x
default:user::rwx
default:group::rwx
default:other::r-x
```

## Examples
 
To modify existing files in goups use `-m` switch and to set new default permission with switch `-d` to the directory for `group`. 
```
chmod g+s /home/limited.users/<directory>
setfacl -R -m g::rwx /home/limited.users/<directory> // gives group read,write,exec permissions for currently existing files and folders, recursively

setfacl -R -m o::x /home/limited.users/<directory> //revokes read and write permission for everyone else in existing folder and subfolders 

setfacl -R -d -m g::rwx /home/limited.users/<directory> // gives group rwx permissions by default, recursively

setfacl -R -d -m o::--- /home/limited.users/<directory> //revokes read, write and execute permissions for everyone else. 
```

This tute was compiled from [Stackoverflow](https://unix.stackexchange.com/questions/1314/how-to-set-default-file-permissions-for-all-folders-files-in-a-directory) by [@towshif](https://twitter.com/hashtag/towshif)
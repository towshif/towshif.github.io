# Setting Default permissions for Directory with user groups 
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

## Examples: 
To modify existing files in goups use `-m` switch and to set new default permission with switch `-d` to the directory for `group`. 
```
chmod g+s /home/limited.users/<directory>
setfacl -R -m g::rwx /home/limited.users/<directory> // gives group read,write,exec permissions for currently existing files and folders, recursively

setfacl -R -m o::x /home/limited.users/<directory> //revokes read and write permission for everyone else in existing folder and subfolders 

setfacl -R -d -m g::rwx /home/limited.users/<directory> // gives group rwx permissions by default, recursively

setfacl -R -d -m o::--- /home/limited.users/<directory> //revokes read, write and execute permissions for everyone else. 
```

This tute was compiled from [Stackoverflow](https://unix.stackexchange.com/questions/1314/how-to-set-default-file-permissions-for-all-folders-files-in-a-directory) by [@towshif](https://twitter.com/hashtag/towshif)
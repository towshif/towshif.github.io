# Getting started with `Nano`
Though nano is not as feature rich and extendible as `vi` or `vim` but its is a very handy editor for new shell users who are not keyboard savvy. 

I personally find `nano` to be excellent replacement of notepad on shell. 


## Open a file in `nano` editor

You can also use the following syntax:

    nano /path/to/filename


![](https://www.howtogeek.com/wp-content/uploads/2011/02/banner1.png)

## Shortcuts

| Command  | Action                           |
| --       | ---                              |
| CTRL + O | Save the content without exiting |
| CTRL + X | Exit                             |
| CTRL + ^ | Select text                      |
| CTRL + K | Cut selection                    |
| CTRL + U | Paste Or UnCut from clipboard    |
| ALT  + ^ | Copy selection to clipboard      |
| CTRL + W | Search for some text             |
| CTRL + \ | Search and Replace a string      |


---

## Installation 
Most of the modern linux distros come with `nano` preinstalled. If not you can install nano from shell

    sudo apt-get update
    sudo apt-get install nano


### Prerequisites
A Linux OS, with terminal access and the ability to run sudo commands
nano 2.2 or greater installed.
 

Unlike other packages nano does not have a default `.nanorc` but it is not a popular method. To get find more information check this [documnentation](https://www.nano-editor.org/dist/v2.9/nanorc.5.html) and related links.
Nano is primarily a simplistic editor and not meant for heavy customization with advanced coding features and intellisense. 
If you indeed need a lot more functionality then nano is not right package to use. Maybe switch to vim and many other advanced editors which are more focussed on such applicatition.


Use this link to [Configure Nano](https://www.agnosticdev.com/content/configure-nano-command-line-development)


### Configuratation - Advanced Stuff

* To configure global settings for the nano text editor for all uses on your machine, navigate out to the directory /etc and open the file nanorc.  Optionally, configure nano on a user by user basis by creating a .nanorc file in their home directory.
```
# open up the global configuration file for nano, with nano ;-)
$ sudo nano /etc/nanorc
```


* To enable mouse support, where you can click on an item anywhere it view and the cursor will go there, enable the setting:
```
## Enable mouse support, if available for your system.  When enabled,
## mouse clicks can be used to place the cursor, set the mark (with a
## double click), and execute shortcuts.  The mouse will work in the X
## Window System, and on the console when gpm is running.
##
set mouse
```

* To enable text to not wrap down to the next line, enable the following:
```
## Don't wrap text at all.
set nowrap
```

* To enable smooth scroll from page to page, instead of choppy scrolling, enable the following:
```
## Use smooth scrolling as the default.
set smooth
```

* To configure a color for comments in any file that is opened with nano, add this to the file:
```
syntax "comments" ".*"
color blue "^#.*"
```


* To enable text highlighting for most all of your C derivatives, make sure the following include statements are not commented out:
```
## Nanorc files
include "/usr/share/nano/nanorc.nanorc"
 
## C/C++
include "/usr/share/nano/c.nanorc"
 
## Makefiles
include "/usr/share/nano/makefile.nanorc"
 
## Cascading Style Sheets
include "/usr/share/nano/css.nanorc"
 
## Debian files
include "/usr/share/nano/debian.nanorc"
 
## Gentoo files
include "/usr/share/nano/gentoo.nanorc"
 
## HTML
include "/usr/share/nano/html.nanorc"
 
## PHP
include "/usr/share/nano/php.nanorc"
 
## TCL
include "/usr/share/nano/tcl.nanorc"
 
## TeX
include "/usr/share/nano/tex.nanorc"
 
## Quoted emails (under e.g. mutt)
# include "/usr/share/nano/mutt.nanorc"
 
## Patch files
include "/usr/share/nano/patch.nanorc"
 
## Manpages
include "/usr/share/nano/man.nanorc"
 
## Groff
include "/usr/share/nano/groff.nanorc"
 
## Perl
include "/usr/share/nano/perl.nanorc"
 
## Python
include "/usr/share/nano/python.nanorc"
 
## Ruby
include "/usr/share/nano/ruby.nanorc"
 
## Java
include "/usr/share/nano/java.nanorc"
 
## Fortran
include "/usr/share/nano/fortran.nanorc"
 
## Objective-C
include "/usr/share/nano/objc.nanorc"
 
## OCaml
include "/usr/share/nano/ocaml.nanorc"
 
## AWK
include "/usr/share/nano/awk.nanorc"
 
## Assembler
include "/usr/share/nano/asm.nanorc"
 
## Bourne shell scripts
include "/usr/share/nano/sh.nanorc"
 
## POV-Ray
include "/usr/share/nano/pov.nanorc"
 
## XML-type files
include "/usr/share/nano/xml.nanorc"
```
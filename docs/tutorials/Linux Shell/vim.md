# Vim in 10 mins 

This is the default text editor on the bare linux systems. Lightweight and very powerful. 
Though there are more userfriendly editors for terminal out there still `vi` maintains it place in the Unix ecosystem. 

## Update your vimrc

     curl https://raw.githubusercontent.com/amix/vimrc/master/vimrcs/basic.vim > ~/.vimrc

## Getting started
the most primitive editor of all. Unix implementation. 

```
# or vim
$ vi <filename>

# Open files in multiple Tabs 
$ vi -p <filename1> <filename2> <...>
# Sorry i was looking for a more concrete
```

Most used Vi commands 

| switch | description   |
| ---    | ---           |
| :      | command       |
| i      | insert        |
| w      | write to file |
| q      | quit          |


# VIM Select (V), Copy (Y), Cut(D) and Paste (P):
* Position the cursor where you want to begin cutting.
* Press v to select characters (or uppercase V to select whole lines).
* Move the cursor to the end of what you want to cut.
* Press d to cut (or y to copy).
* Move to where you would like to paste.
* Press P to paste before the cursor, or p to paste after.


# Text Operations
* u: undo last change (can be repeated to undo preceding commands)
* Ctrl-r: Redo changes which were undone (undo the undos). Compare to . to repeat a previous change, at the current cursor position. Ctrl-r (hold down Ctrl and press r) will redo a previously undone change, wherever the change occurred.


# VIM Multiple Tabs


# Browse recent files [oldfiles]
    :bro[wse] ol[dfiles][!]
Type a number and enter to open.


# Reindent line `=`
In NORMAL mode
`=` to reindent


# Reindent Entire file `gg=G`
`=`, the indent command can take motions. 
So, `gg` to get the start of the file, `=` to indent, `G` to the end of the file, 

keyboard: `gg=G`
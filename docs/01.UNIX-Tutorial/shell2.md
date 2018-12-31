# UNIX Shell Part-II in 10 mins

## **Basic Unix Shell Commands**

Summary 

| command             | Function                                                                     | Example Syntax                             | -OPTIONS                    |
| ---                 | ---                                                                          | ---                                        | ---                         |
| `echo`              | display a line of text                                                       | `echo [VARIABLE OR string]`                |                             |
| `cat`               | concatenate files and print on the standard output                           | `cat [FILENAME]`                           | `-n (show line numbers)`    |
| `head`              | output the first part of files                                               | `head -[n] [FILENAME]`                     | `-[n OR # of lines]`        |
| `tail`              | output the last part of files                                                | `tail -[n] [FILENAME]`                     | `-[n OR # of lines]`        |
| `more`              | file viewing (only down scrolling allowed with `space` key)                  | `more [FILENAME]`                          |                             |
| `less`              | file viewing (both UP and DOWN scrolling permitted )                         | `less [FILENAME]`                          |                             |
| `sort`              | sort lines of text files                                                     | `sort [FILENAME or STDIN]`                 |                             |
| `diff`              | compare files line by line                                                   | `diff [FILENAME1] [FILENAME2]`             | `-u (unified)`              |
| `wc`                | count: print newline, word, and byte counts for each file                    | `wc  [FILENAME1] `                         | `-lwcm`                     |
| `w`                 | Show who is logged on and what they are doing.                               | `w`                                        |                             |
| `who`               | show who is logged on                                                        | `who`                                      |                             |
| `which`             | locate a command                                                             | `which [COMMAND_NAME]`                     |                             |
| `whereis`           | locate the binary, source, and manual page files for a command               | `whereis [COMMAND_NAME OR BINARY_FILE]`    |                             |
| `whatis`            | display one-line manual page descriptions                                    | `whatis [COMMAND_NAME]`                    |                             |
| `find`              | search for files in a directory hierarchy                                    | `find [DIR] [-name] "[STRING/WILDCARD]"`   | `-name`                     |
| `grep`              | print lines matching a pattern                                               | `grep [-OPTION] "[STRING PATTERN]"`        | `-i (ignore case)`          |
| `zip `              | list, test and extract compressed files in a ZIP archive                     | `zip [ZIPFILENAME] [FILE1] [FILE2] [DIR1]` | `-r (compress DIR)`         |
| `unzip `            | compress or expand files (also look at `gunzip`)                             | `unzip [ZIP FILENAME] [FILENAME2]`         | `-l (list) -d (to new DIR)` |
| `ping`              | send ICMP ECHO_REQUEST to network hosts                                      | `ping [SERVER/ HOST/ URL/ IP]`             |                             |
| `curl`              | transfer a URL                                                               | `curl [URL]`                               |                             |
| `wget`              | The non-interactive network downloader. Download file                        | `wget [URL]`                               | `-c -b`                     |
| `top`               | display Linux processes                                                      | `top`                                      |                             |
| `htop`              | interactive process viewer                                                   | `htop`                                     |                             |
| `kill`              | send a signal to a process                                                   | `kill [PID]`                               |                             |
| `>` ; `>>`          | directs standard output to file; append to file if it already exists         | `[COMMAND1] > [FILENAME]`                  |                             |
| <code>&#124;</code> | pipe operator: pipe; takes standard output of cmd1 as standard input to cmd2 | <code>[COMMAND1] &#124; [COMMAND2]</code>  |                             |








---

### `find` - Searching Files & Directories
Write (or redirect) output from a command to a file.  
    
    # Syntax: 
    find [DIR] [-name] "[STRING/WILDCARD]"  # note the quotes on STRING/ WILDCARD
    
    # Use find from the command line to locate a specific file by name or extension. The following example searches for *.err files in the /home/username/ directory and all sub-directories:
    
    find /home/username/ -name "*.err"

    find . -name testfile.txt       # Find a file called testfile.txt in current and sub-directories.
    find /home -name *.jpg	        # Find all .jpg files in the /home and sub-directories.
    find . -type f -empty	        # Find an empty file within the current directory.
    find /home -user exampleuser -mtime 7 -iname ".db"	# Find all .db files (ignoring text case) modified in the last 7 days by a 

**Advanced usage** : find locates all files in the hierarchy starting at the current directory and fully recursing into the directory tree. In this example, find will delete all files that end with the characters `.bak`:
    
    find . -name "*.bak" -delete

---

### Redirection
Write (or redirect) output from a command to a file.  
`>` with write to the file which `>>` will append to the file if it already exists. 

    # Syntax 
    [COMMAND] > [FILENAME]

    # Redirection
    python hello.py > output.txt   # write stdout to (file)
    python hello.py >> output.txt  # append stdout to (file) if file exists
    
    # pipe and redirection together 
    history | tail -20 > myhistory.txt   # saves history last 20 line to file (myhistory.txt)

---

### <code>&#124;</code> - Pipes 
Takes standard output of COMMAND1 as standard input to COMMAND2

    cat old.py | less

    echo $history | more 

    history | grep -i "whatis"

    history | grep -i "chmod"

    cat new.py | grep -i import

    # pipe and redirection together 
    history | tail -20 > myhistory.txt   # saves history last 20 line to file (myhistory.txt)
    
---


###  Environment Variables
An example of an environment variable is the OSTYPE variable. The value of this is the current operating system you are using. Type


    echo $OSTYPE
More examples of environment variables are

    USER (your login name)
    HOME (the path name of your home directory)
    HOST (the name of the computer you are using)
    ARCH (the architecture of the computers processor)
    DISPLAY (the name of the computer screen to display X windows)
    PRINTER (the default printer to send print jobs)
    PATH (the directories the shell should search to find a command)
    history (histroy of all the command run in SHELL)

To output a VARIABLE use a `$` infront of the `VARIABLE` with and `echo` command

    echo $USER

---

[Cheat Sheet](../unix-cheat-sheet/)

[Another Cheat Sheet](https://devhints.io/bash)
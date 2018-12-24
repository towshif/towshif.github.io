# Bash Pro Tips 
Codes are available at [this gist](https://gist.github.com/towshif/bba124a507d1f7513118977c7dd591ae)

    curl https://gist.githubusercontent.com/towshif/bba124a507d1f7513118977c7dd591ae/raw/22f26f731f0349c2b0fcd170dc33eca93e3c561e/bash-aliases.sh >> ~/.bashrc

# System Aliases
How about some of our monitoring and system stats commands? I call these with the same options every time, so I might as well make some aliases.

This one will list our disk usage in human-readable units including filesystem type, and print a total at the bottom:

    alias df="df -Tha --total"
We might as well add an alias for our preferred du output as well:

    alias du="du -ach | sort -h"
Let's keep going in the same direction by making our free output more human friendly:

    alias free="free -mht"
We can do a lot with our listing process table. Let's start out by setting a default output:

    alias ps="ps auxf"
How about we make our process table searchable. We can create an alias that searches our process for an argument we'll pass:

    alias psg="ps aux | grep -v grep | grep -i -e VSZ -e"
Now, when we call it with the process name we're looking for as an argument, we'll get a nice, compact output:

    psg bash
    USER       PID %CPU %MEM    VSZ   RSS TTY      STAT START   TIME COMMAND
    1001      5227  0.0  0.0  26320  3376 pts/0    Ss   16:29   0:00 bash



# Miscellaneous Aliases
One common option to the mkdir command that we use often is the -p flag to make any necessary parent directories. We can make this the default:

    alias mkdir="mkdir -p"
We might want to add a -v flag on top of that so we are told of every directory creation, which can help us recognize quickly if we had a typo which caused an accidental directory branch:

    alias mkdir="mkdir -pv"
When downloading files from the internet with wget, in almost all circumstances, you'll want to pass the -c flag in order to continue the download in case of problems. We can set that with this:

    alias wget="wget -c"
We can search our history easily like with a grep of the history command's output. This is sometimes more useful than using CTRL-R to reverse search because it gives you the command number to do more complex recalls afterwards:

    alias histg="history | grep"
I have a few system tools that I prefer to upgrade from the standard version to more complex tools. These will only work if you've downloaded the required utilities, but they can be very helpful. Keep in mind that these may affect your other aliases.

This one replaces the conventional top command with an enhanced version that is much easier on the eyes and can be sorted, searched, and scrolled without complications:

    alias top="htop"
In a similar way, the ncdu command can be downloaded which presents file and directory sizes in an interactive ncurses display that you can browse and use to perform simple file actions:

    alias du="ncdu"
There's an upgraded utility for df as well that's called pydf. It provides colorized output and text-based usage bars. We can default to using this utility if we have it:

    alias df="pydf"
Have you ever needed your public IP address from the command line when you're behind a router using NAT? Something like this could be useful:

    alias myip="curl http://ipecho.net/plain; echo"
For my own purposes, I like to optimize the images I upload for articles to be 690px or less, so I use the ImageMagick package (sudo apt-get install imagemagick if not already available) which contains a command called mogrify that does just this. I have this command in my ~/.bashrc file:

    alias webify="mogrify -resize 690\> *.png"
This will resize all of the PNG images in the current directory, only if they are wider than 690px.

If I then have to upload them to a server, I can use sftp to connect and automatically change to a specific directory:

    alias upload="sftp username@server.com:/path/to/upload/directory


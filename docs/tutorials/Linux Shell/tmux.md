# tmux in 10 mins
This is also a good [Intro to tmux](https://hackernoon.com/a-gentle-introduction-to-tmux-8d784c404340).
This is one of the sources from which this current document is adapted.

## Ubuntu / Debian Linux Installation
Installation for Ubuntu is similar to Mac, except that we will be using the apt-get package manager that comes pre-installed. Note that we will have to run apt-get as sudo. This is because a user account won’t have enough privileges to install tmux, so sudo will allow us to install it as superuser.

* Update apt-get to make sure we are on the latest and greatest:
>
    sudo apt-get update
* Install tmux:
>
    sudo apt-get install tmux
* Confirm that it installed by checking the version:
>
    tmux -V


## Quick Note: 

Use `tmux` with `zsh` to make life easier for newbies. Type `tmux` and then use tabs to find option. 
> 
    tmux attach-session -t intro-c

Keyboard shortcut interpretation for newwbies: dont get lost in the usage of this shortcut syntax. 
Follow the Example: 
>
    ^b d 
    # or 
    ctrl+b d 
    means =>  Press Ctrl hold, press b. Then release both and press d 

Syntax used here: 
* `⎇`  ALT
* `^`  CTRL
* `+`  hold (press and hold)



# Basic `tmux` usage: 

    tmux new -s [session name]
    # Start new named session:
 
    ctrl+b d
    # Detach from session:
 
    tmux ls
    # List sessions:
 
    tmux a -t [name of session] 
    # Attach to named session:

    tmux attach-session -t [name of session]
    # OR 

    tmux kill-session -t [name of session]
    # Kill named session:
 
    ctrl+b "
    # Split panes horizontally: use Shift keys to get upper " or %
 
    ctrl+b %
    # Split panes vertically:
 
    ctrl+b x
    # Kill current pane:
 
    ctrl+b [arrow key]
    # Move to another pane:
 
    tmux kill-server
    # Kill tmux server, along with all sessions:


# Keyboard shortcuts within the `tmux` shell/ window: 
    ^b then c 
    # To create a new window

    ^b then n 
    # To switch to the next window

    ^b then , 
    # Then [type something] then ⌤ to rename the current window

    ^b then % 
    # To split the current window into panes vertically

    ^b then " 
    # To split the current window into panes horizontally

    ^b then ↑ 
    # (arrows) to move to the above pane (works for all four arrows)

    ^b then q 
    # To show pane numbers, then (optionally) the number to switch to that pane

    ^b then ⎇(Alt)+↑(arrow keys) 
    # To resize the current pane up (works for all four arrows)
    
    ^b then x 
    # To kill the current pane (or window if it only has one pane)

    ^b then [ 
    # To enter copy mode, then four arrow keys to move, even past the visible point, which is great for scrolling--I don't use it much for copying/pasting.
    

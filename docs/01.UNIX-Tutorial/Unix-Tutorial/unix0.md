# UNIX Tutorial
=============

Typographical conventions
-------------------------

In what follows, we shall use the following typographical conventions:

-   Characters written in `bold typewriter font` are commands to be
    typed into the computer as they stand.
-   Characters written in `italic typewriter font` indicate non-specific
    file or directory names.
-   Words inserted within square brackets `[Ctrl]` indicate keys to
    be pressed.

So, for example,

    ls anydirectory [Enter]

means "at the UNIX prompt `%` or `$`, type ls followed by the name of some
directory, then press the key marked Enter"

Don't forget to press the [Enter] key: commands are not sent to the
computer until this is done.

Note: UNIX is case-sensitve, so `LS` is not the same as `ls`.

The same applies to filenames, so myfile.txt, MyFile.txt and MYFILE.TXT
are three seperate files. Beware if copying files to a PC, since DOS and
Windows do not make this distinction.

 


# Unix Shell Advanced 



## List of unix shells 

* Bourne shell (sh)
* C shell (csh)
* TC shell (tcsh)
* Korn shell (ksh)
* Bourne Again shell (bash)
* Z shell (zsh)


## To check current login shell 

    echo $0
    -bash

    cat /etc/shells 
    /bin/sh
    /bin/ash
    /bin/bash

    # to change shell for `username`
    usermod -s /bin/bash <username>

    # alternate method with chsh 
    chsh -s /bin/bash <username>

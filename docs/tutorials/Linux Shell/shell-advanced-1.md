 


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



  
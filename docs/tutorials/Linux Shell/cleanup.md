
## Remove Unnecessary Packages and Dependencies
    sudo apt-get autoremove


## Cleanup Thumnail cache 
    du -sh ~/.cache/thumbnails
    sudo rm -rf ~/.cache/thumbnails/*


## Remove Old Kernels
    sudo dpkg --list 'linux-image*'
    sudo apt-get remove linux-image-VERSION


## Clean Apt Cache
    sudo du -sh /var/cache/apt
    sudo apt-get clean

## GtkOrphan (orphaned packages) - GUI support 
    sudo apt-get install gtkorphan


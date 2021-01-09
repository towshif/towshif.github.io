@echo off
rem Bat script for Win7, Win10
rem Adapted from Shell script build-n-push.sh in the same directory 

rem ## this file is in root of the repo towshif.github.io where mkdocs.yml exists
rem # rsync to sync SRC and DEST --delete option to delete files in DEST which are not in SRC
rem # rsync /home/towshif/workspace/next/.docs/docs/ ./docs -ar --delete
rem # cp ~/workspace/next/.docs/* . -r

rem need mkdocs w/ python and material-theme: 
rem pip install mkdocs 
rem pip install mkdocs-material
rem For more themes vitis: https://github.com/mkdocs/mkdocs/wiki/MkDocs-Themes
rem just configure mkdocs.yml


mkdocs build
git pull
git add --all
git commit -m "Build and committed $(date)"
git push



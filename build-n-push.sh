#!/bin/sh

## this file is in root of the repo towshif.github.io

# rsync to sync SRC and DEST --delete option to delete files in DEST which are not in SRC 
rsync /home/towshif/workspace/next/.docs/docs/ ./docs -ar --delete
# cp ~/workspace/next/.docs/* . -r
mkdocs build
git pull
git add --all
git commit -m "Build and committed $(date)"
git push



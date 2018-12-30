#!/bin/sh

## this file is in root of the repo towshif.github.io
## this is sync the main work dir .docs/docs with with the current dir towshif.github.io

# rsync to sync SRC and DEST --delete option to delete files in DEST which are not in SRC
rsync ./docs /home/towshif/workspace/next/.docs/docs/  -ar --delete


# cp ~/workspace/next/.docs/* . -r



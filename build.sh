#!/bin/sh

## this file is in root of the repo towshif.github.io

cp ~/workspace/next/.docs/* . -r
mkdocs build
git pull
git add --all
git commit -m "Build and committed $(date)"
git push



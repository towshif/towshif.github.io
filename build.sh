#!/bin/sh

cp ~/workspace/next/.docs/* . -r
mkdocs build 
git pull 
git add --all
git commit -m "Build and commutted $(date)"
git push 



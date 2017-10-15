#!/bin/bash
mkdir -p screenshots
rm -rf screenshots/*.png
decktape  --screenshots --screenshots-directory screenshots --screenshots-size 1920x1080 impress file://`pwd`/index.html?showPopover=true mysql_010_cours.pdf
rm mysql_010_cours.pdf
cd screenshots
convert `ls -1v` ../mysql_010_cours.pdf
cd ..
#!/bin/bash
text="Lauren.txt Adrian.txt Sha.txt Archie.txt Dorinda.txt"
echo $text

for names in $text
do
rm -rf $text
done
ls

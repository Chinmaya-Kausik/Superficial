#!/bin/bash
set -e
rm -rf notebooks/notebooks || true
mkdir notebooks/notebooks
for note in notebooks/*.ipynb
do
    echo $note   
    jupyter nbconvert --to html --output $note.html $note
done
mv notebooks/notebooks/* static/
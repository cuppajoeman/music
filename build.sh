#!/bin/bash
for fullfile in src/*
do
    filename=$(basename -- "$fullfile")
    extension="${filename##*.}"
    filename="${filename%.*}"
    pandoc -o out/"$filename".pdf layout.yaml "$fullfile"  
done

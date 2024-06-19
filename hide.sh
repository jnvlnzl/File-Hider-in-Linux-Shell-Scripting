#!/bin/bash
echo "Hide File"
echo "Enter the filename in the current directory:"
read file
mv $file .$file
echo "File successfully hidden."
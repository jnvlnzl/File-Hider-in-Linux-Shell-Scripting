#!/bin/bash

#check hidden history file
if ! test -e .$hideUnhideHistory; then 
	touch .hideUnhideHistory
fi

mv .hideUnhideHistory hideUnhideHistory
cat hideUnhideHistory
mv hideUnhideHistory .hideUnhideHistory

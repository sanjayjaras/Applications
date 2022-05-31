#!/bin/bash

if [[ $# == 0 || $# >1 ]]
then
  echo "Provide file path parameter"  
fi

#echo $1

sudo ./set-gdm-wallpaper.sh --resize 5 $1

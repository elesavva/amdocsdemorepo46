#!/bin/bash

 if [[ $# -ne 1 ]]; then
  echo "Wrong number of parameters"
  echo "USAGE: $0 json FILENAME"
  echo "EXAMPLE: $0 FILENAME.json"
  exit 1
 fi
 
 
filename_fullpath=$1



 cp $filename_fullpath  .

   
  
 tr -d '\n' < $1 > Newfile1.txt
  
  
  awk -v dt="{\"decision\":\"ALWAYS_TRUE\"" 'BEGIN{FS=OFS=","}{$1=dt}1' Newfile1.txt>Newfile2.txt
  awk -v dt="\"priority\":\"0\"" 'BEGIN{FS=OFS=","}{$2=dt}1' Newfile2.txt>Newfile3.txt
  awk -v dt="\"activeTo\":null}" 'BEGIN{FS=OFS=","}{$5=dt}1' Newfile3.txt>$1




 rm Newfile*
  
  echo "Updates done easily! :)"
exit 0;

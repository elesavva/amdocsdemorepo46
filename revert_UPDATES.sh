#!/bin/bash

 if [[ $# -ne 1 ]]; then
  echo "Wrong number of parameters"
  echo "USAGE: $0 json FILENAME"
  echo "EXAMPLE: $0 FILENAME.json"
  exit 1
 fi
 
\cp -f  *.json  $1
rm *.json

  
  echo "Revert updates Done!"
exit 0;

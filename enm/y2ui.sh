#!/bin/bash

baseFileName=$(basename "$1");

curl --upload-file $1 https://u.yu2i.com/$baseFileName

exit;



if [ $# -eq 0 ];then 
  echo "No arguments specified.\nUsage:\n  transfer <file|directory>\n  ... | transfer <file_name>">&2;
  exit;
fi;
if tty -s;then file="$1";
  file_name=$(basename "$file");
  if [ ! -e "$file" ];then 
    echo "$file: No such file or directory">&2;
    exit;
  fi;
  if [ -d "$file" ];then
    echo 'File Exsists $file'
    file_name="$file_name.zip" ,;
    (cd "$file"&&zip -r -q - .)|curl --progress-bar --upload-file "-" "https://u.yu2i.com/$file_name"|tee /dev/null,;
  else 
    echo 'Cat ' $file $file_name
    cat "$file"|curl --progress-bar --upload-file "-" "https://u.yu2i.com/$file_name"|tee ;#/dev/null;
  fi;

else
  echo 'Last Else $1'
  file_name=$1;
  curl --progress-bar --upload-file "-" "https://u.yu2i.com/$file_name"|tee /dev/null;
fi;

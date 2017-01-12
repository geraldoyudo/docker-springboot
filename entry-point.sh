#!/bin/sh
fileName=${FILE_NAME:-app.jar}
filePath=/var/home/app/$fileName
fileUrl=${FILE_URL:-app.jar}
if [ ! -f $filePath ]
then
   wget $fileUrl -O $filePath
fi
java -jar $filePath --spring.config.location=/var/home/app/conf/application.yml >> /var/lib/logs/out.txt

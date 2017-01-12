#!/bin/sh
filePath=/var/home/app/${FILE_NAME:−app.jar}
fileUrl=${FILE_URL:−app.jar}
if [! -f "$filePath" ];
then
   wget $fileUrl -O filePath
fi
java -jar $filePath --spring.config.location=/var/home/app/conf/application.yml >> /var/lib/logs/out.txt
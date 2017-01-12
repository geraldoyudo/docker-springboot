#!/bin/sh
fileName=${FILE_NAME:-app.jar}
fileUrl=${FILE_URL:-app.jar}
cd /home/app
if [ ! -f $fileName ]
then
   wget $fileUrl -O $fileName
fi
java -jar $fileName --spring.config.location=./conf/application.yml >> /var/lib/logs/out.txt

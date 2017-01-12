#!/bin/sh
fileName=${FILE_NAME:-app.jar}
fileUrl=${FILE_URL:-app.jar}
confName=${CONFIG_FILE_NAME:-application.properties}
jarOptions=${JAVA_OPTIONS}
springOptions=${SPRING_OPTIONS}
cd /home/app
if [ ! -f $fileName ]
then
   wget $fileUrl -O $fileName
fi
java -jar $jarOptions $fileName --spring.config.location=./conf/$confName $springOptions >> /var/lib/logs/out.txt

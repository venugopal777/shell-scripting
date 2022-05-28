#!/bin/bash

source components/common.sh

#$ curl -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip"
#$ cd /home/roboshop
#$ unzip /tmp/catalogue.zip
#$ mv catalogue-main catalogue
#$ cd /home/roboshop/catalogue
#$ npm install

# mv /home/roboshop/catalogue/systemd.service /etc/systemd/system/catalogue.service
# systemctl daemon-reload
# systemctl start catalogue
# systemctl enable catalogue

Print "Configure Yum repos"
curl -f$SL curl -sL https://rpm.nodesource.com/setup_lts.x | bash &>>${LOG_FILE}
StatCheck $?

Print "Install NodeJS"
yum install nodejs gcc-c++ -y &>>${LOG_FILE}
StatCheck $?

id ${APP_USER} &>>${LOG_FILE}
if [ $? -ne 0 ]; then
  Print "Add Application User"
  StatCheck $?
fi

Print "Download App Component"
curl -f -s -L -o /tmp/catalogue.zip "https://github.com/roboshop-devops-project/catalogue/archive/main.zip"
&>>${LOG FILE}
StatCheck $?

Print "CleanUp Old Content"
rm -rf /home/${APP_USER}/catalogue &>>${LOG_FILE}
StatCheck $?

Print "Extract App Content"
cd /home/${APP_USER}/ &>>${LOG_FILE} && unzip -o /tmp/catalogue.zip &>>${LOG FILE} && mv catalogue-main catalogue &>>${LOG_FILE}
StatCheck $?

Print "Fix App User Permissions"
chown _R ${APP_USER}:${APP_USER} /home/${APP_USER}
StatCheck $?



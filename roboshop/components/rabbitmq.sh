#!/bin/bash

source components/common.sh

Print "Configure YUM Repos"
curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | bash &>>{LOG_FILE}
StatCheck $?

Print "Install Erlang & RabbitMQ "
yum install https://github.com/rabbitmq/erlang-rpm/releases/download/v23.2.6/erlang-23.2.6-1.el7.x86_64.rpm -y &>>{LOG_FILE}
StatCheck $?

Print "Start RabbitMQ Service"
systemctl enable rabbitmq-server &>>${LOG_FILE} && systemctl start rabbitmq-server &>>${LOG_FILE}
StatCheck $?

Print "Create Application User"
rabbitmqctl add_user roboshop roboshop123 &>>${LOG_FILE}
StatCheck $?

# curl -s https://packagecloud.io/install/repositories/rabbitmq/rabbitmq-server/script.rpm.sh | sudo bash

# yum install rabbitmq-server -y

# RabbitMQ comes with a default username / password as `guest`/`guest`. But this user cannot be used to connect. Hence we need to create one user for the application.
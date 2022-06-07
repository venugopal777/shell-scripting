#!/bin/bash

AMI_ID=$(aws ec2 describe-images --filters "Name=name,Values=Centos-7-Devops-Practice" | jq '.Images[].ImageId')

echo $AMI_ID




#aws ec2 describe-images --filters "Name=name,Values=Centos-7-Devops-Practice" | jq

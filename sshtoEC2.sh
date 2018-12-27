#!/bin/bash

# takes an IP address as input
# ssh to the EC2 instance that IP represents

myip=$1
mycmdstart='ssh ec2-user@'
mycmdend="-i ~/.myssh/$USER-AWS-1.pem"

mycmd="$mycmdstart$myip $mycmdend"
echo $mycmd
eval $mycmd

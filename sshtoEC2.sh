#!/bin/bash

# takes an IP address as input
# ssh to the EC2 instance that IP represents
# assumes there is a .myssh directory in the user's home directory and
# in that directory is a file named after the username with -AWS-1.pem appended

myip=$1
mycmdstart='ssh ec2-user@'
mycmdend="-i ~/.myssh/$USER-AWS-1.pem"

mycmd="$mycmdstart$myip $mycmdend"
echo $mycmd
eval $mycmd

#!/bin/bash

ec2id=$2

"system will $1 $ec2id"

aws ec2 $1-instances --instance-ids $ec2id



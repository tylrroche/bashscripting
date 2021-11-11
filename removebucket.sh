#!/bin/bash

echo "Deleting bucket $1"

aws s3 rb ://$1

echo "Updated bucket list"

aws s3 ls

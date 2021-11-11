#!/bin/bash

aws s3 mb s3://$1

echo "the following bucket was created $1"

echo "Updated bucket list"

aws s3 ls


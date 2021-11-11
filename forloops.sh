#!/bin/bash
buckets="morebooks44558 morecode1255 moreknowledge0255"

echo $buckets

for x in $buckets
do
aws s3 mb s3://$x
done
aws s3 ls

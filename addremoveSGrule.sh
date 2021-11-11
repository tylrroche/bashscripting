#!/bin/bash 

SGNAME=$1

echo "You want to modify $SGNAME security group"

if [[ $2 = authorize ]]
then
       echo "adding rule"	
	aws ec2 $2-security-group-ingress \
		    --group-name MySecurityGroup \
		        --protocol tcp \
			    --port $3 \
			        --cidr 0.0.0.0/0

fi
if [[ $2 = revoke ]]
then
	echo "removing rule"
	aws ec2 $2-security-group-ingress \
		                    --group-name MySecurityGroup \
				        --protocol tcp \
		                            --port $3 \
					        --cidr 0.0.0.0/0
fi

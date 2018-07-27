#!/bin/bash
echo "Searching for image where name begins with $1"
# Example Windows AMI Name Format: Windows_Server-2012-R2_RTM-English-64Bit-Base-2018.06*
regions=$(aws ec2 describe-regions --output text --query 'Regions[*].RegionName')
for region in $regions; do
    (
     echo "$region $( aws ec2 describe-images --output json --region $region --filters Name=owner-alias,Values="amazon" Name=is-public,Values=true Name=name,Values="$1*" | grep -E "ImageId|VirtualizationType" )"
    )
done

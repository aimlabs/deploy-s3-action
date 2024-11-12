#!/usr/bin/env bash

#Sync files with amazon s3 bucket app
echo "Am here buddy $INPUT_OVERWIRTE_CONTENT"

if [$INPUT_OVERWIRTE_CONTENT=="true" || $INPUT_OVERWIRTE_CONTENT=="TRUE"] 
then
    echo "Am here buddy TRUE"
    aws --region $INPUT_AWS_DEFAULT_REGION s3 sync $DIST_LOCATION_CODE s3://$INPUT_AWS_BUCKET_NAME$INPUT_BUCKET_PATH --no-progress --delete
else
    echo "Am here buddy FALSE"    
    aws --region $INPUT_AWS_DEFAULT_REGION s3 sync $DIST_LOCATION_CODE s3://$INPUT_AWS_BUCKET_NAME$INPUT_BUCKET_PATH --no-progress 
fi
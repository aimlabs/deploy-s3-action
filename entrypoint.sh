#!/usr/bin/env bash

#Sync files with amazon s3 bucket app
if [[ $INPUT_OVERWIRTE_CONTENT == "true" || $INPUT_OVERWIRTE_CONTENT == "TRUE" ]] 
then
    aws --region $INPUT_AWS_DEFAULT_REGION s3 sync $DIST_LOCATION_CODE s3://$INPUT_AWS_BUCKET_NAME$INPUT_BUCKET_PATH --no-progress --delete
else
    aws --region $INPUT_AWS_DEFAULT_REGION s3 sync $DIST_LOCATION_CODE s3://$INPUT_AWS_BUCKET_NAME$INPUT_BUCKET_PATH --no-progress 
fi
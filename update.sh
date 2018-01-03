#! /bin/bash
git pull origin master
aws s3 sync . s3://www.haloplatform.tech/ 
aws s3 rm s3://www.haloplatform.tech/.git/*
aws cloudfront create-invalidation --distribution-id E3HCA213UB494M \
  --paths /*

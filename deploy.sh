#!/bin/bash
BLOG_PATH='/home/yyp/blog'

echo "Start deployment"
cd $BLOG_PATH
git pull
pm2 flush
pm2 restart all

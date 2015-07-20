#!/bin/bash
BLOG_PATH='/home/yyp/blog'

echo "Start deployment"
cd $BLOG_PATH
git pull
sudo pm2 flush
sudo pm2 restart all
sleep 10s
wget --post-data='' http://blog.yyper.com/manager/flush/gallery
wget --post-data='' http://blog.yyper.com/manager/flush/life
wget --post-data='' http://blog.yyper.com/manager/flush/it

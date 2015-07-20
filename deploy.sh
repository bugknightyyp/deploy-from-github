#!/bin/bash
BLOG_PATH='/home/yyp/blog'

echo "Start deployment"
cd $BLOG_PATH
echo "excute pwd"
pwd
echo "pull"
git pull
echo "flush"
sudo pm2 flush
echo "restart"
sudo pm2 restart blog
echo "sleep 10s"
sleep 10s
echo "wget"
wget --post-data='' http://blog.yyper.com/manager/flush/gallery
wget --post-data='' http://blog.yyper.com/manager/flush/life
wget --post-data='' http://blog.yyper.com/manager/flush/it

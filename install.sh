#!/bin/sh
# rootPath=/Users/zhoucheng/Desktop/ttt
rootPath=/
path=$rootPath/var/www/html
if [ ! -x $path/install ]; then
	mkdir /Discuz_X3.4_SC_UTF8
	unzip $rootPath/Discuz_X3.4_SC_UTF8.zip -d $rootPath/Discuz_X3.4_SC_UTF8
	cp -R $rootPath/Discuz_X3.4_SC_UTF8/upload/* $path
	rm -rf $rootPath/Discuz_X3.4_SC_UTF8
fi
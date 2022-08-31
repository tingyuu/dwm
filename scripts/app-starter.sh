#! /bin/sh

if [ $1 == "menu" ]
then
	rofi -show drun
fi

if [ $1 == "terminal" ]
then
	xfce4-terminal
fi

if [ $1 == "chrome" ]
then
	microsoft-edge-stable
fi

if [ $1 == "music" ]
then
	lx-music-desktop
fi

if [ $1 == "dingtalk" ]
then
	dingtalk
fi

if [ $1 == "flameshot" ]
then
	flameshot gui
fi

if [ $1 == "vscode" ]
then
	/usr/bin/code
fi

if [ $1 == "wechat" ]
then
	/opt/apps/com.qq.weixin.deepin/files/run.sh
fi

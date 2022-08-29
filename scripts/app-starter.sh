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



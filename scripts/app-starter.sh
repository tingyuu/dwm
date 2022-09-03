#! /bin/sh

blurlock() {
	    i3lock \
            --blur 5 \
	    --bar-indicator \
	    --bar-pos y+h \
	    --bar-direction 1 \
	    --bar-max-height 50 \
	    --bar-base-width 50 \
	    --bar-color 00000022 \
	    --keyhl-color ffffffcc \
	    --bar-periodic-step 50 \
	    --bar-step 20 \
	    --redraw-thread \
	    --clock \
	    --force-clock \
	    --time-pos x+5:y+h-80 \
	    --time-color ffffffff \
	    --date-pos tx:ty+15 \
	    --date-color ffffffff \
	    --date-align 1 \
	    --time-align 1 \
	    --ringver-color ffffff00 \
	    --ringwrong-color ffffff88 \
	    --status-pos x+5:y+h-16 \
	    --verif-align 1 \
	    --wrong-align 1 \
	    --verif-color ffffffff \
	    --wrong-color ffffffff \
	    --modif-pos -50:-50
	    xdotool mousemove_relative 1 1 # 该命令用于解决自动锁屏后未展示锁屏界面的问题(移动一下鼠标)
}

set_vol() {
       	OUTPORT=$SPEAKER
	[ "$(pactl list sinks | grep $HEADPHONE_A2DP)" ] && OUTPORT=$HEADPHONE_A2DP
	[ "$(pactl list sinks | grep $HEADPHONE_HSP_HFP)" ] && OUTPORT=$HEADPHONE_HSP_HFP
	[ "$(pactl list sinks | grep $HEADPHONE_A2DP_SONY)" ] && OUTPORT=$HEADPHONE_A2DP_SONY
	[ "$(pactl list sinks | grep $HEADPHONE_HSP_HFP_SONY)" ] && OUTPORT=$HEADPHONE_HSP_HFP_SONY
	[ "$(pactl list sinks | grep $VOICEBOX)" ] && OUTPORT=$VOICEBOX
	pactl list sinks

	echo $VOICEBOX
	echo $OUTPORT

	case $1 in
		up) pactl set-sink-volume $OUTPORT +5% ;;
		down) pactl set-sink-volume $OUTPORT -5% ;;
	esac
	./dwm-status.sh
}

case $1 in
	killw) kill -9 $(xprop | grep "_NET_WM_PID(CARDINAL)" | awk '{print $3}') ;;
	menu) rofi -show drun -theme mine -show-icons ;;
	terminal) alacritty ;;
	chrome) microsoft-edge-stable ;;
	music) lx-music-desktop ;;
	dingtalk) dingtalk ;;
	wechat) /opt/apps/com.qq.weixin.deepin/files/run.sh ;;
	flameshot) flameshot gui ;; 
	vscode) /usr/bin/code ;;
	lock) blurlock ;;
	screenkey) screenkey --no-systray -s small --font-size small --opacity 0.4 ;;
	set_vol) set_vol $2 ;;
esac

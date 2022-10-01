#!/bin/sh


userresources=$HOME/.Xresources
usermodmap=$HOME/.Xmodmap
sysresources=/etc/X11/xinit/.Xresources
sysmodmap=/etc/X11/xinit/.Xmodmap

# merge in defaults and keymaps

if [ -f $sysresources ]; then







    xrdb -merge $sysresources

fi

if [ -f $sysmodmap ]; then
    xmodmap $sysmodmap
fi

if [ -f "$userresources" ]; then







    xrdb -merge "$userresources"

fi

if [ -f "$usermodmap" ]; then
    xmodmap "$usermodmap"
fi

# start some nice programs

if [ -d /etc/X11/xinit/xinitrc.d ] ; then
 for f in /etc/X11/xinit/xinitrc.d/?*.sh ; do
  [ -x "$f" ] && . "$f"
 done
 unset f
fi

#start wm
exec dmenu_run -p "startx [i3] [xfce] [bsp]"

#sh .xinitrcsh

#~/.fehbg &
#exec i3

##read -p "Boot into [1]i3  [2]xfce4   [3]bspwm" answer
#if [[ $answer = 1 ]] ; then 
#	exec i3
#elif [[ $answer = 2 ]] ; then
#	startxfce4
#else
#	exec bspwm
#fi


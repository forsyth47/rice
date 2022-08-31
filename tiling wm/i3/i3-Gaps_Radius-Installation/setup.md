# Setting up i3 / variants

## For i3-gaps-rounded
Use `git clone https://github.com/resloved/i3.git`

## If no i3 option in lock screen
Paste the following into `/usr/share/xsessions/i3.desktop`
```
[Desktop Entry]
Name=i3
Comment=improved dynamic tiling window manager
Exec=i3
TryExec=i3
Type=Application
X-LightDM-DesktopName=i3
DesktopNames=i3
Keywords=tiling;wm;windowmanager;window;manager;
```
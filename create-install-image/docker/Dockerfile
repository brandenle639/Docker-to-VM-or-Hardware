FROM debian:bookworm-slim
COPY osinstaller.sh /osinstaller.sh
RUN chmod +x osinstaller.sh
COPY diskimages /diskimages
RUN mkdir /media/drive
RUN apt-get update && apt-get install -y sudo xserver-xorg xserver-xorg-core xfonts-base xinit x11-xserver-utils xfwm4 xfce4-panel xfce4-settings xfce4-session xfce4-terminal xfdesktop4 xfce4-taskmanager tango-icon-theme lightdm lightdm-gtk-greeter thunar gvfs gvfs-backends policykit-1 udisks2 bzip2 tar nano gedit

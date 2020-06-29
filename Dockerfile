FROM jupyter/minimal-notebook:54462805efcb

USER root

RUN apt-get -y update && apt-get install -y dbus-x11 firefox xfce4 xfce4-panel xfce4-session xfce4-settings xorg xubuntu-icon-theme

USER $NB_USER

RUN conda install -c manics websockify
RUN pip install jupyter-desktop-server
#Repalce with different image per deployment 
ADD desktop.png /usr/share/backgrounds/xfce/xfce-stripes.png
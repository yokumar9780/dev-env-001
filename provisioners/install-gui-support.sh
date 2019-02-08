# switch to German keyboard layout
sudo sed -i 's/"us"/"sv"/g' /etc/default/keyboard
sudo DEBIAN_FRONTEND=noninteractive apt-get install -y console-common
sudo install-keymap sv
# set to UTF8 locale for later powerline
sudo update-locale LANG=en_US.uft8 LC_ALL=en_US.utf8

# update/upgrade and install Ubuntu desktop
sudo apt-get upgrade -y
sudo apt-get install -y linux-headers-$(uname -r)
sudo apt-get install -y --no-install-recommends ubuntu-desktop
sudo apt-get install -y gnome-panel
sudo apt-get install -y unity-lens-applications
gconftool -s /apps/gnome-terminal/profiles/Default/use_system_font -t bool false

# install some useful devtools
apt-get install -y screenkey
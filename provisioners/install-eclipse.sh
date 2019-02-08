# install Eclipse Kepler 4.3.1 Java EE
cd /opt/
if [ ! -f /opt/eclipse-committers-2018-12-R-linux-gtk-x86_64.tar.gz ]
then
    echo Downloading Eclipse...
    wget -q http://ftp.fau.de/eclipse/technology/epp/downloads/release/2018-12/R/eclipse-committers-2018-12-R-linux-gtk-x86_64.tar.gz
    sudo tar xzf eclipse-committers-2018-12-R-linux-gtk-x86_64.tar.gz -C /opt --owner=root
fi

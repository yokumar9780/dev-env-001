# install maven
if [ ! -f /opt/apache-maven-3.3.9-bin.tar.gz ]
then
    cd /opt/
    wget http://www-eu.apache.org/dist/maven/maven-3/3.3.9/binaries/apache-maven-3.3.9-bin.tar.gz
    sudo tar -xvzf apache-maven-3.3.9-bin.tar.gz
    sudo mv apache-maven-3.3.9 maven

    cd /etc/profile.d/
    export M2_HOME=/opt/maven
    export PATH=${M2_HOME}/bin:${PATH}
    cat <<EOF > mavenenv.sh
        M2_HOME=/opt/maven
        PATH=${M2_HOME}/bin:${PATH}
        export PATH
        export M2_HOME
EOF

    sudo chmod +x /etc/profile.d/mavenenv.sh
    sudo -s source /etc/profile.d/mavenenv.sh
fi

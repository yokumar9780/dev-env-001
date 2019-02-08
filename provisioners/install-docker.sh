echo "docker installation!"

#Ensure the downloads are valid, add the GPG key for the official Docker repository to your system:
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

#Add the Docker repository to APT sources:
sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"

#update the package database with the Docker packages from the newly added repo:
sudo apt-get update

# Make sure you are about to install from the Docker repo instead of the default Ubuntu repo:
apt-cache policy docker-ce

#install Docker:
sudo apt-get install -y docker-ce

sudo service docker status

sudo apt-get -y upgrade

# switch  to root user
sudo -s

# If you want to avoid typing sudo whenever you run the docker command, add your username to the docker group:
sudo usermod -aG docker ${USER}

# To apply the new group membership, you can log out of the server and back in, or you can type the following:
su - ${USER}

# add vagrant user to docker user group
#sudo usermod -aG docker vagrant


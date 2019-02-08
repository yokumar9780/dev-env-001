# virtual developer environment setup

## Prerequisites
[VM VirtualBox](https://www.virtualbox.org/)  & [Vagrant](https://www.vagrantup.com/) 
 
 ## Purpose
 Code for managing and setup the development environment with different software's. Uses the [VM VirtualBox](https://www.virtualbox.org/)  & [Vagrant](https://www.vagrantup.com/) for managing infrastructure and different software's.
 
## Usages
 ```sh
 # Go the the Vagrantfile path & run vagrant up to create new box 
 cd ../dev-env
 vagrant up 
 # connect to box
 vagrant ssh <box name/id>
 # stop the box
 vagrant halt <box name/id>
 #search/status for all box's
 vagrant global-status
 # To destroy the box.
 vagrant destroy <box name/id>  
 ```


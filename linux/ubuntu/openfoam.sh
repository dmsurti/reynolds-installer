# ----------------------------------------------------------------------------- 
# install openfoam
# ----------------------------------------------------------------------------- 
sudo apt-get -qq update
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get install -y python3-dev
sudo apt-get install -y wget curl bzip2
sudo add-apt-repository http://dl.openfoam.org/ubuntu
sudo sh -c "wget -O - http://dl.openfoam.org/gpg.key | apt-key add -"
sudo apt-get install -y apt-transport-https
sudo apt-get -qq update
sudo apt-get install -y openfoam4
sudo apt-get install -y mlocate
source /opt/openfoam4/etc/bashrc

# ----------------------------------------------------------------------------- 
# installer dir
# ----------------------------------------------------------------------------- 
# rm -rf ~/reynolds-blender
mkdir -p ~/reynolds-blender/tmp
cd ~/reynolds-blender/tmp
echo `pwd`

# ----------------------------------------------------------------------------- 
# install pre requisites
# ----------------------------------------------------------------------------- 
sudo apt-get -qq update
sudo apt-get install -y software-properties-common python-software-properties
sudo apt-get install -y python3-dev
sudo apt-get install -y wget curl bzip2 git

# ----------------------------------------------------------------------------- 
# clone reynolds
# ----------------------------------------------------------------------------- 
git clone --depth=1 https://github.com/dmsurti/reynolds.git

# ----------------------------------------------------------------------------- 
# clone reynolds blender add-on source
# ----------------------------------------------------------------------------- 
git clone --depth=1 https://github.com/dmsurti/reynolds-blender.git

# ----------------------------------------------------------------------------- 
# download the blender version you want to test against
# ----------------------------------------------------------------------------- 
wget http://mirror.cs.umn.edu/blender.org/release/Blender2.78/blender-2.78c-linux-glibc219-x86_64.tar.bz2

# ----------------------------------------------------------------------------- 
# Extract the archive
# ----------------------------------------------------------------------------- 
tar jxf blender-2.78c-linux-glibc219-x86_64.tar.bz2

# ----------------------------------------------------------------------------- 
# rename the extracted folder to "blender" for easier reference
# ----------------------------------------------------------------------------- 
mv blender-2.78c-linux-glibc219-x86_64 blender

# ----------------------------------------------------------------------------- 
# remove the archive, we do not need it anymore
# ----------------------------------------------------------------------------- 
rm blender-2.78c-linux-glibc219-x86_64.tar.bz2

# ----------------------------------------------------------------------------- 
# copy the addon
# ----------------------------------------------------------------------------- 
rm -rf ./blender/2.78/scripts/addons/reynolds_blender
cp -R ./reynolds-blender/reynolds_blender ./blender/2.78/scripts/addons

# ----------------------------------------------------------------------------- 
# install pip in blender python
# ----------------------------------------------------------------------------- 
cd reynolds-blender
../blender/2.78/python/bin/python3.5m get-pip.py
../blender/2.78/python/bin/pip install -r requirements.txt
../blender/2.78/python/bin/pip install pyyaml

# ----------------------------------------------------------------------------- 
# install reynolds in blender python
# ----------------------------------------------------------------------------- 
cd ../reynolds
../blender/2.78/python/bin/python3.5m setup.py install

# ----------------------------------------------------------------------------- 
# go back to root of installer directory and copy blender to Desktop
# ----------------------------------------------------------------------------- 
cd ..
cp -R ./blender ~/Desktop

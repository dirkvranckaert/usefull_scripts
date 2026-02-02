# Install the necessary drivers for a DYMO label printer 5XL on a Debian based Linux distro (and potentially all 5xx models)
# Inspired by all comments on the Reddit aricle: https://www.reddit.com/r/dymo/comments/14zv98i/how_to_use_dymo_5xl_on_linux_ubuntu_based_distros/

sudo apt install build-essential autoconf automake  
sudo apt install libboost-all-dev  
sudo apt install cups libcups2-dev  
sudo apt install git  
sudo apt install checkinstall
sudo apt install pkg-config

git clone https://github.com/dymosoftware/Drivers.git  
cd Drivers/LW5xx_Linux
sed -i '/#include "LabelManagerLanguageMonitorV2.h"/i #include <ctime>' src/lm/LabelManagerLanguageMonitorV2.cpp

sh ./configure
autoreconf -i
make
sudo make install

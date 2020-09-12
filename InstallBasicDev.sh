# create dev folder structure
mkdir ~/code
mkdir ~/code/next
mkdir ~/code/next/basic

# supply a simple example basic app
mkdir ~/code/next/basic/hello
echo PRINT "10 Hello World!" >> ~/code/next/basic/hello/hello.bas.txt

# Need the build essential package
sudo apt-get -y install build-essential

# clone build and install hdfmonkey
# This tool allows reading/writing to sdcard images
sudo apt-get -y install autotools-dev
sudo apt-get -y install autoconf

#only do this if hdfmonkey is not already installed
if ! [ -x "$(command -v hdfmonkey)" ]; then
    mkdir ~/hdfmonkey
    cd ~/hdfmonkey
    git clone https://github.com/gasman/hdfmonkey.git
    cd ~/hdfmonkey/hdfmonkey
    autoheader
    aclocal
    autoconf
    automake -a
    ./configure
    make
    sudo make install
    cd ~
fi

# for SpecBasic we need to install the txt2bas tool written by remy
# which can encode the bas files.
# Note : txt2bas needs to have node installed
sudo apt-get -y install node
sudo apt-get -y install npm

sudo npm install -g npm@latest

sudo npm install n -g
sudo n stable

#only do this if txt2bas is not already installed
if ! [ -x "$(command -v txt2bas)" ]; then
    cd ~
    git clone https://github.com/remy/txt2bas.git
    cd ~/txt2bas
    sudo npm install --global txt2bas
fi

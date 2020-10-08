# needed for z88dk
sudo apt-get  -y install libxml2-dev
sudo apt-get  -y install subversion
sudo apt-get  -y install bison

sudo apt-get  -y install dos2unix
sudo apt-get  -y install libboost-all-dev
sudo apt-get  -y install texinfo
sudo apt-get  -y install texi2html
sudo apt-get  -y install zlib1g-dev

sudo apt-get  -y install flex
sudo apt-get  -y install gputils

wget -i http://nightly.z88dk.org/z88dk-latest.tgz -O ~/z88dk-latest.tgz
tar -xzf z88dk-latest.tgz

cd z88dk
chmod 777 build.sh
./build.sh

# we now need to get and install zsdcc
# from home folder :

svn checkout svn://svn.code.sf.net/p/sdcc/code/trunk sdcc-code

cd sdcc-code/sdcc
cp ~/z88dk/src/zsdcc/sdcc-z88dk.patch .
patch -p0 < sdcc-z88dk.patch
./configure
make
cd bin

mv sdcc ~/z88dk/bin/zsdcc
mv sdcpp ~/z88dk/bin/zsdcpp

cd ~/z88dk/bin/
chmod 777 zsdcc
chmod 777 zsdcpp

#Add the following to ~/.profile
#
#if [ -d "$HOME/z88dk" ] ; then
#    PATH=$PATH:${HOME}/z88dk/bin
#    export ZCCCFG=${HOME}/z88dk/lib/config
#fi

# install required packages
#  mono required to run CSpect
#  libopenall required for sounds in CSpect

sudo apt-get -y install mono-devel
sudo apt-get -y install libopenal1

# CSpect
# only install if not already installed
if ! [ -d "~/CSpect" ]; then
    mkdir ~/CSpect

    # Assume the home page has a link 
    curl https://dailly.blogspot.com/ | grep -Eo -m1 "\bhref=\"(.*\/CSpect.*.zip)" | grep -Eo "http.*.zip" > CSpectFilename.txt
    wget -i CSpectFilename.txt -O ~/CSpectLatest.zip

    unzip ~/CSpectLatest.zip -d ~/CSpect/
fi

# lets add a boot script in the cspect folder to boot up a Spectrum Next
echo mono CSpect.exe -zxnext -nextrom -esc -basickeys -r -vsync -mmc=../SpectSD/cspect-next-2gb.img >> ~/CSpect/boot.sh
chmod +x ~/CSpect/boot.sh

# - SD Card Image
# only install if not already installed
if ! [ -d "~/SpectSD" ]; then
    mkdir ~/SpectSD

    # download latest 2gb sdcard image
    wget  -P ~/SpectSD/ "http://www.zxspectrumnext.online/cspect/cspect-next-2gb.zip"

    # unzip it directly into the CSpect folder
    unzip ~/SpectSD/cspect-next-2gb.zip -d ~/SpectSD/

    # don't forget we need to copy the rom files into the CSpect folder
    cp ~/SpectSD/*.rom ~/CSpect/
fi
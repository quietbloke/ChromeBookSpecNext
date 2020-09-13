# install CSpect
# - mono

sudo apt-get -y install wine
sudo apt-get -y install mono-devel
sudo apt-get -y install libopenal1

# - CSpect
# only install if not already installed
# - CSpect
# only install if not already installed
if ! [ -d "~/CSpect" ]; then
    mkdir ~/CSpect

    curl http://dailly.blogspot.com | grep -Eo -m1 "\bhref=\"(.*\/CSpect.*.zip)" | grep -Eo "http.*.zip" > CSpectFilename.txt
    wget -i CSpectFilename.txt -O ~/CSpectLatest.zip

    unzip ~/CSpectLatest.zip -d ~/CSpect/
fi

# lets add a boot script in the cspect folder
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

    cp ~/SpectSD/*.rom ~/CSpect
fi

# Lets grab the manual and put it in the home folder
wget  -P ~/ "http://www.specnext.com/wp-content/uploads/2020/02/ZX-Spectrum-Next-Manual-Color-ONLINE-Edition.7z"

# unzip it directly into the home folder
sudo apt-get -y install p7zip-full
7z x ~/ZX-Spectrum-Next-Manual-Color-ONLINE-Edition.7z
mv ZX-Spectrum-Next-Manual-Color-ONLINE-Edition ~/


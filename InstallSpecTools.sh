mkdir ~/SpectTools

# I need MapGrabber and it exists in the ScrollNutter Demo
# Need to find out where it exists or if there is an official tool that does the same
# create dev folder structure

mkdir ~/code
mkdir ~/code/next
mkdir ~/code/next/asm

# wget -i https://www.specnext.com/wp-content/uploads/2018/04/ScrollNutter.zip -O ~/ScrollNutter.zip
curl https://www.specnext.com/wp-content/uploads/2018/04/ScrollNutter.zip >  ~/ScrollNutter.zip
unzip ~/ScrollNutter.zip -d ~/code/next/asm/

# now copy the MapGrabber.exe and put in the the tools folder
cp code/next/asm/ScrollDemo/GFX/MapGrabber.exe ~/SpectTools

# while here maybe inject .sh versions of the .bat files ?
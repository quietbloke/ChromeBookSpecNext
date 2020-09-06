# ChromeBookSpecNext

A few simple scripts to help setup a Spectrum Next dev env on Chromebook Linux

Note: in order to make the files executable you may need to go into the folder where the scripts are 
and run 

chmod +x *.sh


InstallCSpect.sh
This will do the following :

1. Install any packages that are required by CSpect.
2. Find the lstest and greatest build of CSpect and install it in you home/CSpect folder
3. Get the latest SDCard zip (2gb version) and put it home/SpectSD folder and unzip it
4. Copy the required .rom files from the SDCard folder into the CSpect folder
5. Create a boot.sh script in the home/CSpect folder which will boot up CSpect with the SDCard image.

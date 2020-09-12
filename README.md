# ChromeBookSpecNext

A few simple scripts to help setup a Spectrum Next dev env on Chromebook Linux

Note: in order to make the files executable you may need to go into the folder where the scripts are 
and run 

chmod +x *.sh


InstallCSpect.sh

1. Install any packages that are required by CSpect.
2. Find the latest build of CSpect and unzip it in your home/CSpect folder
3. Get the latest SDCard zip (2gb version) and unzip it in your home/SpectSD folder
4. Copy the required .rom files from the SDCard folder into the CSpect folder
5. Create a boot.sh script in the home/CSpect folder which will boot up CSpect with the SDCard image.
6. Gets the online ZX Spectrum Next manual pdf

InstallVSCode.sh

1. Install VSCode
2. Install the nextbasic plugin by remysharp

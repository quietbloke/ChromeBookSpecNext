# ChromeBookSpecNext

A few simple scripts to help setup a Spectrum Next dev env on Chromebook Linux.


From the terminal you can type the following to download these scripts :  

wget https://github.com/quietbloke/ChromeBookSpecNext/archive/master.zip  
unzip master.zip -d ~/  
cd ~/ChromeBookSpecNext-master/  
chmod +x *.sh

## Scripts ##

**./InstallCSpect.sh**

1. Install packages that are required by CSpect.
2. Find the latest build of CSpect and unzip it in your home/CSpect folder
3. Get the latest SDCard zip (2gb version) and unzip it in your home/SpectSD folder
4. Copy the required .rom files from the SDCard folder into the CSpect folder
5. Create a boot.sh script in the home/CSpect folder which will boot up CSpect with the SDCard image.
6. Gets the online ZX Spectrum Next manual pdf

**./InstallVSCode.sh**

1. Install VSCode
2. Install the nextbasic plugin by remysharp

NOTE : When this script ends it will show the values you need to enter for the CSpect path and the image path in the NextBasic Plugin Configuration.
In order for the plugin to deploy the scripts and run in CSpect you will also need to run the InstallBasicDev script.

**./InstallBasicDev**

1. Install hdfmokey
2. Install txt2bas
3. Creates a simple hello world basic project in ~/code/next/basic/hello/ to allow you to test the plugin is working.
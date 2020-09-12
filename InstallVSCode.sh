# install VS Code

curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/etc/apt/trusted.gpg.d/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get --assume-yes install apt-transport-https
sudo apt-get update
sudo apt-get --assume-yes install code

# install the nextbasic plugin ( written by remy )
code --install-extension remysharp.nextbasic

# see if we can setup the plugin with the paths the tool needs

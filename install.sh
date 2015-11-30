#Saving Workspace Location
export WS=~/Documents/Workspace
mkdir WS

#Installing CAD and IDE's
sudo add-apt-repository ppa:freecad-maintainers/freecad-daily
sudo add-apt-repository --yes ppa:js-reynaud/kicad-4
sudo add-apt-repository ppa:peterlevi/ppa
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install eclipse kicad freecad freecad-doc inkscape variety

#Installing Fundamental Tools
sudo apt-get install git vim gparted g++ cmake

#Installing Languages
sudo apt-get install python-dev python-numpy python-scipy python-matplotlib ipython ipython-notebook python-pandas python-sympy
sudo apt-get install python3-dev python3-numpy python3-scipy python3-matplotlib ipython3 ipython3-notebook python3-pandas python3-sympy
sudo apt-get install openjdk-jkd-8 openjdk-jdk-7

#Link to .config files
ln -s ${WS}/configfiles/.gitconfig ~/.gitconfig
ln -s ${WS}/configfiles/.vimrc ~/.vimrc

#Setup Workspace
cd WS
git clone ryan:openscan
git clone ryan:pcbuild
cd ./openscan/.libs
sudo ./dependencies.sh

#Clean
sudo apt-get autoremove


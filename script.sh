sudo apt update
sudo apt upgrade
sudo apt-get install aptitude
sudo aptitude install xfce4-terminal xfce4
cd
sudo echo export DISPLAY=:0.0 >> .bashrc
sudo echo alias gui='startxfce4' >> .bashrc
sudo source .bashrc
exit


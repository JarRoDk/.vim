# .vim
My personal vim configuration with bundle/plugins

## RHEL/CentOS 7 64-Bit ##
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm

rpm -ivh epel-release-7-8.noarch.rpm

## RHEL/CentOS 6 32-Bit ##
wget http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

rpm -ivh epel-release-6-8.noarch.rpm


## RHEL/CentOS 6 64-Bit ##
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

rpm -ivh epel-release-6-8.noarch.rpm

## Install pip for powerline
## RHEL/CentOS 7 64-Bit ##
yum install python-pip

## Install Powerline
pip install powerline-status

## Install Fonts for 256Color for windows putty 

https://github.com/powerline/fonts/tree/master/DejaVuSansMono

DejaVu Sans Mono for Powerline.ttf ( download, click and install ) 

in .bashrc
export TERM=”screen-256color” 

## Install on machine
wget -P /usr/share/fonts https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

## Install my .vim profile 
git clone https://github.com/JarRoDk/.vim

## Run config ( make link, add line to start powerline ) 
./vim/config.sh

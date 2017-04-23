# .vim
My personal vim configuration with bundle/plugins

# Install Epel
## RHEL/CentOS 7 64-Bit ##
wget http://dl.fedoraproject.org/pub/epel/7/x86_64/e/epel-release-7-8.noarch.rpm

rpm -ivh epel-release-7-8.noarch.rpm

## RHEL/CentOS 6 32-Bit ##
wget http://download.fedoraproject.org/pub/epel/6/i386/epel-release-6-8.noarch.rpm

rpm -ivh epel-release-6-8.noarch.rpm


## RHEL/CentOS 6 64-Bit ##
wget http://download.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm

rpm -ivh epel-release-6-8.noarch.rpm

# Install tmux 
yum install tmux

# Install pip for powerline
## RHEL/CentOS 7 64-Bit ##
yum install python-pip

## Upgrade pip 
pip install --upgrade pip

## Install Powerline
pip install powerline-status

## Install Fonts for 256Color for windows putty 

https://github.com/powerline/fonts/tree/master/DejaVuSansMono

download, click and install

## Configure Fonts in windows putty like from screenshot
![Settings Window putty](https://farm1.staticflickr.com/633/30962917843_c8ca94517e_o_d.png)

# Change to 256color
in .bashrc
export TERM=”screen-256color” 

# Add color template for Putty 
Go to https://github.com/altercation/solarized/tree/master/putty-colors-solarized
download solarized_dark.reg on your desctop 
run this to modify your windows register 
![PuttySessionSettings](https://c1.staticflickr.com/3/2817/34183840316_f93bd572b3_b.jpg)


# Machine reconfigure
wget -P /usr/share/fonts https://github.com/powerline/powerline/raw/develop/font/PowerlineSymbols.otf

## Install my .vim profile 
git clone https://github.com/JarRoDk/.vim ~/.vim

## Run config ( make link, add line to start powerline ) 
. ~/.vim/config.sh

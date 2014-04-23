
# Install Git and Curl
apt-get install -y git-core curl

# Collect parameters
echo "Enter your name:"
read name
git config --global user.name "$name"

echo "Enter your email:"
read email
git config --global user.email "$email"

# Install Sublime Text 3
# Ask for permission (may not be a GUI environment)
read -p "Would you like to install Sublime? (y/n) " RESP
if [ "$RESP" = "y" ]; then
  # Grab the repo and install Sublime
  add-apt-repository ppa:webupd8team/sublime-text-3 -y
  apt-get update
  apt-get install -y sublime-text-installer
  # Copy over the config options and snippets
  if [ -d Sublime ]; then
    cp -r Sublime ~/.config/sublime-text-3/Packages/User/
  fi
fi

# Install Node and NPM
add-apt-repository ppa:chris-lea/node.js -y
apt-get update
apt-get install -y python-software-properties python g++ make nodejs

# Install Python
add-apt-repository ppa:fkrull/deadsnakes -y
apt-get update
apt-get install -y python2.7

# Install apache2 and php5
apt-get update
apt-get -y install apache2 php5-cli
/etc/init.d/apache2 restart

# LAMP Libraries
apt-get install -y libapache2-mod-php5 php5-mysql php5-curl libxml2-dev libcurl4-openssl-dev php5-gd libmcrypt-dev libltdl-dev openssl
apt-get install -y mysql-server

# Install jshint to allow linting of JS code
# http://jshint.com/
npm install -g jshint

# Install Heroku toolbelt
# https://toolbelt.heroku.com/debian
wget -qO- https://toolbelt.heroku.com/install-ubuntu.sh | sh

# Move the bash config files
cp .bash* ~/
source ~/.bashrc
source ~/.bash_aliases

echo "=============================================================="
echo "Check out this tutorial for configuring Apache, PHP, and MySQL"
echo "http://www.howtoforge.com/ubuntu_lamp_for_newbies"

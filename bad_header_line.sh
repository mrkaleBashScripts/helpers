# Fix error "Bad Header Line" at 'apt-get update'
sudo rm -rf /var/lib/apt/lists/
sudo rm -rf /var/lib/dpkg/status
sudo touch /var/lib/dpkg/status

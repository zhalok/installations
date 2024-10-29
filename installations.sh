# Add Docker's official GPG key:
sudo apt-get update
sudo apt update
sudo apt upgrade
sudo apt install git
git config --global user.name "zhalok"
git config --global user.email "zhalokrahman007@gmail.com"
sudo snap install slack
sudo snap install code --classic
sudo snap install postman
sudo apt install curl
curl -O https://downloads.mongodb.com/compass/mongodb-compass_1.44.5_amd64.deb
sudo dpkg -i mongodb-compass_1.44.5_amd64.deb
curl -O https://storage.googleapis.com/golang/go1.23.2.linux-amd64.tar.gz
sudo rm -rf /usr/local/go 
sudo tar -xzf go1.23.2.linux-amd64.tar.gz
sudo mv go /usr/local
sudo rm -r go1.23.2.linux-amd64
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
sudo apt-get install ca-certificates curl
sudo install -m 0755 -d /etc/apt/keyrings
sudo curl -fsSL https://download.docker.com/linux/ubuntu/gpg -o /etc/apt/keyrings/docker.asc
sudo chmod a+r /etc/apt/keyrings/docker.asc

# Add the repository to Apt sources:
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.asc] https://download.docker.com/linux/ubuntu \
  $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
  sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
sudo apt-get update

sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker

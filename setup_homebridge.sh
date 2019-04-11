sudo apt-get update
sudo apt-get upgrade


curl -sL https://deb.nodesource.com/setup_11.x | sudo -E bash -
sudo apt-get install -y nodejs
sudo apt-get install libavahi-compat-libdnssd-dev
sudo npm install -g --unsafe-perm homebridge
sudo npm install -g homebridge-nest homebridge-mi-aqara homebridge-tplink-smarthome

sudo useradd --system homebridge
sudo mkdir /var/lib/homebridge
sudo chown homebridge:homebridge /var/lib/homebridge
sudo chown -R homebridge:homebridge *


sudo systemctl daemon-reload
sudo systemctl enable homebridge
sudo systemctl start homebridge

journalctl -u homebridge

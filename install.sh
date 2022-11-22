# update repository index and update
sudo apt update && sudo apt upgrade -y
sudo apt-get install -y wget unzip software-properties-common dpkg-dev git make gcc automake build-essential zlib1g-dev libpcre3 libpcre3-dev libssl-dev libxslt1-dev libxml2-dev libgd-dev libgeoip-dev libgoogle-perftools-dev libperl-dev pkg-config autotools-dev gpac ffmpeg mediainfo mencoder lame libvorbisenc2 libvorbisfile3 libx264-dev libvo-aacenc-dev libmp3lame-dev libopus-dev unzip
sudo add-apt-repository ppa:nginx/stable -y
sudo apt install -y nginx
sudo apt install -y libnginx-mod-rtmp
cd /usr/src 
git clone https://github.com/arut/nginx-rtmp-module 
cp /usr/src/nginx-rtmp-module/stat.xsl /var/www/html/stat.xsl
sudo apt-get install -y nginx-extras
sudo apt install -y python3-certbot-nginx 
sudo ufw limit ssh && sudo ufw allow 80 && sudo ufw allow 1935  && sudo ufw allow 443 && sudo ufw  enable 


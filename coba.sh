sudo apt-get -y install ffmpeg && sudo apt install stunnel4 -y

cd /etc/stunnel/

echo 'setuid = stunnel4
setgid = stunnel4
pid=/tmp/stunnel.pid
output = /var/log/stunnel4/stunnel.log
include = /etc/stunnel/conf.d' >stunnel.conf

cd /etc/stunnel && mkdir conf.d && cd conf.d

echo '[fb-live]
client = yes
accept = 127.0.0.1:8888
connect = live-api-s.facebook.com:443
verifyChain = no' >fb.conf

cd /etc/default/

echo '# /etc/default/stunnel
# Julien LEMOINE <speedblue@debian.org>
# September 2003

FILES="/etc/stunnel/*.conf"
OPTIONS=""

# Change to one to enable ppp restart scripts
PPP_RESTART=0

# Change to enable the setting of limits on the stunnel instances
# For example, to set a large limit on file descriptors (to enable
# more simultaneous client connections), set RLIMITS="-n 4096"
# More than one resource limit may be modified at the same time,
# e.g. RLIMITS="-n 4096 -d unlimited"
RLIMITS=""

ENABLE=1' >stunnel4

sudo systemctl enable stunnel4.service

cd

stunnel

stunnel

sudo pip install youtube-dl 

read -p "masukan key stream :" key

youtube-dl -f best "https://youtu.be/XdZ2nJvmfrI" -o - | ffmpeg -re -i - -ar 44100 -vcodec copy -f flv "rtmp://localhost:8888/rtmp/$key"

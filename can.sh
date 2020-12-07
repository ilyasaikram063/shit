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
 
sudo pip install youtube-dl
 
cd
 
stunnel
 
stunnel

cd shit

mkdir tv

echo '
DAFTAR CHANNEL
 
1. mnctv
2. gtv
3. rcti
4. cnn
5. tvone
'
 
read -p "pilih nomer channel: " jawab
 
if [ $jawab -eq 1 ];
then
cd tv
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/mnctv_fta/live_fta/mnctv_fta-avc1_2000000=1-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/"' > mnctv.sh
nano mnctv.sh
sh mnctv.sh
elif [ $jawab -eq 2 ];
then
cd tv
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/gtv_fta/live_fta/gtv_fta-avc1_1000000=3-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/"' > gtv.sh
nano gtv.sh
sh gtv.sh
elif [ $jawab -eq 3 ];
then
cd tv
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/rcti_fta/live_fta/rcti_fta-avc1_2000000=1-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/"' > rcti.sh
nano rcti.sh
sh rcti.sh
elif [ $jawab -eq 4 ];
then
cd tv
echo 'ffmpeg -re -i "https://live.cnnindonesia.com/livecnn/smil:cnntv.smil/playlist.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/"' > cnn.sh
nano cnn.sh
sh cnn.sh
elif [ $jawab -eq 5 ];
then
cd tv
echo 'youtube-dl -f best "https://youtu.be/XdZ2nJvmfrI" -o - | ffmpeg -re -i - -ar 44100 -vcodec copy -f flv "rtmp://localhost:8888/rtmp/"' > tvone.sh
nano tvone.sh
sh tvone.sh
else
echo '
aduh, aya nu salah yas
'
fi

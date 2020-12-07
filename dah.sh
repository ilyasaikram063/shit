cd shit
 
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
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/mnctv_fta/live_fta/mnctv_fta-avc1_2000000=1-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/' > mnctv.sh
cd
cd shit/tv/
nano mcntv.sh
sh mnctv.sh
elif [ $jawab -eq 2 ];
then
cd tv
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/gtv_fta/live_fta/gtv_fta-avc1_1000000=3-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/' > gtv.sh
cd
cd shit/tv/
nano gtv.sh
sh gtv.sh
elif [ $jawab -eq 3 ];
then
cd tv
echo 'ffmpeg -re -i "https://vcdn2.rctiplus.id/live/eds/rcti_fta/live_fta/rcti_fta-avc1_2000000=1-mp4a_64000_eng=2.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/' > rcti.sh
cd
cd shit/tv/
nano rcti.sh
sh rcti.sh
elif [ $jawab -eq 4 ];
then
cd tv
echo 'ffmpeg -re -i "https://live.cnnindonesia.com/livecnn/smil:cnntv.smil/playlist.m3u8" -c:v copy -c:a aac -ar 44100 -ab 128k -ac 2 -strict -2 -flags +global_header -bsf:a aac_adtstoasc -bufsize 3000k -f flv "rtmp://localhost:8888/rtmp/' > cnn.sh
cd
cd shit/tv/
nano cnn.sh
sh cnn.sh
elif [ $jawab -eq 5 ];
then
cd tv
echo 'youtube-dl -f best "https://youtu.be/XdZ2nJvmfrI" -o - | ffmpeg -re -i - -ar 44100 -vcodec copy -f flv "rtmp://localhost:8888/rtmp/' > tvone.sh
cd
cd shit/tv/
nano tvone.sh
sh tvone.sh
else
echo '
aduh, aya nu salah yas
'
fi

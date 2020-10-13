# lvb
Live Video Broadcasting to youtube with docker and ffmpeg --quick and dirty

 λ docker build -t lvb .
 
 λ docker run -it --rm -e WEB_URL="THE-LINK-YOU-WANT-TO-LIVESTREAM" -e RTMP_URL="rtmp://a.rtmp.youtube.com/live2/YOUR-YOUTUBE-LIVE-KEY" -e LANGUAGE="en" -e V_BITRATE="3000K" -e A_BITRATE="128K" lvb

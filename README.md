# babymon
on raspberry pi, system will use avconv tool to convert video to stream and push to local network with nginx.

for details please visit: https://hackaday.io/project/9314-babymon

# compilation guides
nginx-rtmp: https://github.com/arut/nginx-rtmp-module
ffmpeg: https://trac.ffmpeg.org/wiki/CompilationGuide

# system information:

pi@raspberrypi ~ $ nginx -V
nginx version: nginx/1.4.1
built by gcc 4.9.2 (Raspbian 4.9.2-10) 
TLS SNI support enabled
configure arguments: --prefix=/var/www --sbin-path=/usr/sbin/nginx --conf-path=/etc/nginx/nginx.conf --pid-path=/var/run/nginx.pid --error-log-path=/var/log/nginx/error.log --http-log-path=/var/log/nginx/access.log --with-http_ssl_module --without-http_proxy_module --add-module=/usr/src/nginx-rtmp-module

pi@raspberrypi ~ $ 

pi@raspberrypi ~ $ ffmpeg --help | head -n 1
ffmpeg version N-78610-g56e2cd9 Copyright (c) 2000-2016 the FFmpeg developers
  built with gcc 4.9.2 (Raspbian 4.9.2-10)
  configuration: 
  libavutil      55. 18.100 / 55. 18.100
  libavcodec     57. 24.105 / 57. 24.105
  libavformat    57. 26.100 / 57. 26.100
  libavdevice    57.  0.101 / 57.  0.101
  libavfilter     6. 34.100 /  6. 34.100
  libswscale      4.  0.100 /  4.  0.100
  libswresample   2.  0.101 /  2.  0.101
Hyper fast Audio and Video encoder
pi@raspberrypi ~ $ 

pi@raspberrypi ~ $ lsb_release -a
No LSB modules are available.
Distributor ID:	Raspbian
Description:	Raspbian GNU/Linux 8.0 (jessie)
Release:	8.0
Codename:	jessie
pi@raspberrypi ~ $ 

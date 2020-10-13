FROM debian:9-slim

RUN apt-get update && apt-get install -y htop nano wget pulseaudio socat alsa-utils ffmpeg xvfb sudo

RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb \
    && apt install -y ./google-chrome-stable_current_amd64.deb

COPY default.pa /etc/pulse/
COPY start.sh /var/

RUN chmod +x /var/start.sh

RUN useradd -ms /bin/bash lvb \
    && touch /etc/sudoers.d/lvb \
    && echo 'lvb  ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/lvb

USER webmaster
WORKDIR /var

ENTRYPOINT /var/start.sh
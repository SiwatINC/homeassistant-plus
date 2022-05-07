FROM ghcr.io/home-assistant/home-assistant:stable
RUN apk update && apk add vlc alsa-utils py3-vlc pulseaudio
COPY ./audio.pa /etc/pulse/system.pa
CMD (pulseaudio --system &) && /init

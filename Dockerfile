FROM ghcr.io/home-assistant/home-assistant:stable
RUN apk update && apk add vlc alsa-utils py3-vlc
#CMD pulseaudio --system &

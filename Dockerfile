FROM ghcr.io/home-assistant/home-assistant:stable
RUN apk update && apk add vlc alsa-utils py3-vlc pulseaudio
echo "load-module module-native-protocol-unix auth-anonymous=1" >> /etc/pulse/system.pa
CMD (pulseaudio --system &) && /init

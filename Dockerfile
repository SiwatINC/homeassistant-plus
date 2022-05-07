FROM ghcr.io/home-assistant/home-assistant:stable
RUN pkg update && pkg add vlc alsa-utils

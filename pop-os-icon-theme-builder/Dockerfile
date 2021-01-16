FROM ubuntu:20.10

ENV TZ=Europe/Berlin

RUN apt-get update && apt-get install -y git sassc meson libglib2.0-dev inkscape optipng

CMD git clone https://github.com/pop-os/icon-theme pop-icon-theme --depth 1 \ 
    && cd pop-icon-theme \ 
    && meson build \ 
    && ninja -C "build" install


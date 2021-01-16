FROM ubuntu:20.10

ENV TZ=Europe/Berlin
ENV GNOME_VERSION=3.38
ENV GTK3_VERSION=3.24

RUN apt-get update && apt-get install -y git sassc meson libglib2.0-dev inkscape optipng

CMD git clone https://github.com/pop-os/gtk-theme --depth 1 \ 
    && cd gtk-theme \ 
    && meson build && cd build \ 
    && ninja \
    && ninja install


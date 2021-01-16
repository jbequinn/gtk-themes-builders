FROM ubuntu:20.10

ENV TZ=Europe/Berlin
ENV GNOME_VERSION=3.38
ENV GTK3_VERSION=3.24

RUN apt-get update && apt-get install -y git meson sassc inkscape gnome-themes-extra \
    gtk2-engines-murrine pkgconf libglib2.0-dev libgtk-3-0

CMD git clone https://github.com/jnsh/arc-theme --depth 1 \ 
    && cd arc-theme \ 
    && meson setup --prefix=/usr -Dthemes=gnome-shell,gtk3 -Dgnome_shell_version=${GNOME_VERSION} \
       -Dgtk3_version=${GTK3_VERSION} build/ \ 
    && meson install -C build/


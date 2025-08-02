FROM devkitpro/devkitppc:latest

RUN apt update && apt install -y curl git tar xz-utils gcc g++ make

RUN curl -fsSL https://apt.devkitpro.org/install-devkitpro-pacman | bash

ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITPPC=$DEVKITPRO/devkitPPC

RUN dkp-pacman -Syu --noconfirm \
 && dkp-pacman -S --noconfirm libogc wii-portlibs

 
# Install GRRLIB
# TODO no permission for mkdir

RUN git clone https://github.com/GRRLIB/GRRLIB.git /opt/grrlib \
 && cd /opt/grrlib/GRRLIB \
 && make 

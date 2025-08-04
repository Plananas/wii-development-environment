FROM devkitpro/devkitppc:latest

# TODO Missing dependencies for GRRLIB
RUN apt update && apt install -y \
    curl \
    git \
    tar \
    xz-utils \
    gcc \
    g++ \
    make \
    cmake \
    libfreetype6-dev \
    zlib1g-dev \
    libpng-dev


RUN curl -fsSL https://apt.devkitpro.org/install-devkitpro-pacman | bash

ENV DEVKITPRO=/opt/devkitpro
ENV DEVKITPPC=$DEVKITPRO/devkitPPC

RUN dkp-pacman -Syu --noconfirm \
 && dkp-pacman -S --noconfirm libogc wii-portlibs
 
# Install GRRLIB
# TODO no permission for mkdir

RUN git clone https://github.com/GRRLIB/GRRLIB.git /opt/grrlib \
 && cd /opt/grrlib/GRRLIB \
 && make \
    && make install \
FROM ubuntu:20.04

# https://octopus.com/blog/using-ubuntu-docker-image
# Not installing suggested or recommended dependencies
RUN echo 'APT::Install-Suggests "0";' >> /etc/apt/apt.conf.d/00-docker
RUN echo 'APT::Install-Recommends "0";' >> /etc/apt/apt.conf.d/00-docker

# Cleaning up package lists
RUN DEBIAN_FRONTEND=noninteractive \
  apt-get update \
  && apt-get upgrade -y \
  && rm -rf /var/lib/apt/lists/*

# Run as non-root user
RUN useradd -ms /bin/bash usr
USER usr

# https://docs.nvidia.com/jetson/archives/r35.2.1/DeveloperGuide/text/AT/JetsonLinuxToolchain.html
# Extracting the Toolchain
ADD aarch64--glibc--stable-final.tar.gz /home/usr/l4t-gcc

# Setting the CROSS_COMPILE Environment Variable
ENV CROSS_COMPILE=/home/usr/l4t-gcc/bin/aarch64-buildroot-linux-gnu-

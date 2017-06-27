# == Dockerized RTLSDR
#

FROM phusion/baseimage:0.9.22

MAINTAINER Eric Faden <efaden@gmail.com>

ENV DEBIAN_FRONTEND="noninteractive" 

# Use baseimage-docker's init system.
CMD ["/sbin/my_init"]

# Install Required Stuff
RUN apt-get -y update && apt-get -y install \
    rtl-sdr \
	&& rm -rf /var/lib/apt/lists/*

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

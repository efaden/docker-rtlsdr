# docker-rtlsdr
Dockerized RTLSDR

sudo echo -e "blacklist rtl2832\n\
blacklist r820t\n\
blacklist rtl2830\n\
blacklist dvb_usb_rtl28xxu" > /etc/modprobe.d/rtlsdr-blacklist.conf


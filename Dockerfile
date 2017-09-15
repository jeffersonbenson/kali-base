FROM kalilinux/kali-linux-docker

MAINTAINER Jeff Benson <jbenson14@liberty.edu>

WORKDIR /home

RUN apt-get update && \
	apt-get upgrade && \ 
	apt-get install openvpn && \
	git clone https://github.com/LionSec/katoolin.git && cp katoolin/katoolin.py /usr/bin/katoolin && \
	chmod +x /usr/bin/katoolin && \
	apt-get install metasploit && \
	git clone https://github.com/jeffersonbenson/xerosploit.git && \ 
	git clone https://github.com/susmithHCK/torghost.git && \
	git clone https://github.com/susmithHCK/cpscan.git

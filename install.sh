#!/bin/bash
sudo apt-get install libglade2-0 libglade2-dev libvte-dev libvte-common libvte-2.91-0 libvte-2.91-common libvte9 automake bison flex subversion curl git build-essential macchanger tor tor-geoipdb  torsocks net-tools iptables iproute2 secure-delete procps libdatrie1 libdatrie-dev libicu66 libicu-dev libgraphite2-3 libgraphite2-dev libxdmcp6 libxdmcp-dev liblzma5 liblzma-dev libpcre2-8-0 libpcre2-dev libfribidi-dev libfribidi0 libharfbuzz-dev libharfbuzz0b libxcb-render0 libxcb-render0-dev libxcb-shm0 libxcb-shm0-dev libpng-dev libpng16-16 libfreetype6 libfreetype6-dev libpixman-1-0 libpixman-1-dev libxcb1 libxcb1-dev libtinfo6 libtinfo-dev libxml2 libxml2-dev libpcre3 libpcre3-dev libffi7 libffi-dev libxext6 libxdamage1 libxdamage-dev libxcursor1 libxcursor-dev libxrandr2 libxrandr-dev libxi6 libxi-dev libxinerama1 libxinerama-dev libxrender1 libxrender-dev libfontconfig1 libfontconfig1-dev libpango-1.0-0 libpango1.0-dev libpangoft2-1.0-0 libcairo2 libcairo2-dev libatk1.0-0 libatk1.0-dev libxfixes3 libxfixes-dev libx11-6 libx11-dev libpangocairo-1.0-0 libglib2.0-0 libglib2.0-dev libgdk-pixbuf2.0-0 libgdk-pixbuf2.0-dev libgtk2.0-0 libgtk2.0-dev

git clone https://github.com/bm16ton/gtkdialog.git
cd gtkdialog
./autogen.sh
make
sudo make install
cd ..
sudo cp list-macs.sh /usr/local/bin/
sudo cp default-net-interface.sh /usr/local/bin/
sudo cp torctl /usr/local/bin/
sudo cp tor-gui /usr/local/bin/
sudo chmod +x /usr/local/bin/list-macs.sh
sudo chmod +x /usr/local/bin/default-net-interface.sh
sudo chmod +x /usr/local/bin/torctl
sudo chmod +x /usr/local/bin/tor-gui
sudo mkdir /var/lib/tor-gui
sudo touch /var/lib/tor-gui/temps
sudo cp torctl-auto* /etc/systemd/system/



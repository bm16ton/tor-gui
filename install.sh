#!/bin/bash
sudo apt-get install debhelper \
libgtk2.0-dev \
libgtk2.0-bin \
libglade2-dev \
autotools-dev \
byacc \
flex \
texinfo \
docbook-to-man \
libvte-dev \
gcc-8 \
g++-8 \
cpp-8 \
git \
macchanger \
tor \
tor-geoipdb \
torsocks \
net-tools \
iptables \
iproute2 \
secure-delete \
procps \
coreutils

cd /usr/bin/
mv gcc gcc.bk
mv g++ g++.bk
mv cpp cpp.bk
ln -s gcc-8 gcc
ln -s g++-8 g++
ln -s cpp-8 cpp
cd -
git clone https://github.com/bm16ton/gtkdialog.git
cd gtkdialog
dpkg-buildpackage -b -j$(nproc)
dpkg -i ../gtkdialog_0.8.3-3mx17+16_*.deb
cd ..
cd /usr/bin/
mv gcc.bk gcc
mv g++.bk g++
mv cpp.bk cpp
cd -
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
Echo "Reboot, then from command line enter   sudo tor-gui"


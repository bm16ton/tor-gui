Simple gui to start/stop all traffic being routed thru tor. Based off https://github.com/BlackArch/torctl with only slight changes. This is early draft hopefully more to come.

Install;

git clone https://github.com/bm16ton/tor-gui.git

cd tor-gui

sudo ./install.sh

The install.sh script will install all dependencies then grab the source for gtkdialog, compile and install it. Then copy my scripts to /usr/local/bin


Simple gui to start/stop all traffic being routed thru tor. Based off https://github.com/BlackArch/torctl with only slight changes. This is early draft hopefully more to come.

Install; Currently only ubuntu 20.04 works, 20.10 has diff versions of libicu libffi and gtk compile errosrs;
    git clone https://github.com/bm16ton/tor-gui.git
    cd tor-gui
    sudo ./install.sh

The install.sh script will install all dependencies then grab the source for gtkdialog, compile and install it. Then copy my scripts to /usr/local/bin


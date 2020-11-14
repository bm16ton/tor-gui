Simple gui to start/stop all traffic being routed thru tor. Based off https://github.com/BlackArch/torctl with only slight changes. This is early draft hopefully more to come.

Install; (tested on ubuntu 20.04 and 20.10)

    git clone https://github.com/bm16ton/tor-gui.git
    cd tor-gui
    sudo ./install.sh

The install.sh script will install all dependencies then grab the source for gtkdialog, compile and install it. Then copy my scripts to /usr/local/bin

The stock no icon, icon bothered me so I grabbed this one,
https://www.flaticon.com/free-icon/hierarchy_2620378
and it installs it now. Also the .desktop file so it will show up in menu internet/network. it lods with pkexec

the tor-gui-gtk3 file is a WIP gtkdialog gtk3 version.Theres currently no difference but if u wann try goto;
https://github.com/bm16ton/gtkdialog
and follow the instructions for gtk3. then either copy that binary to /usr/local/bin/gtkdialog
or copy it to /usr/local/bin/gtkdialog-gtk and edit tor-gui line six from;
GTKDIALOG=gtkdialog
to
GTKDIALOG=gtkdialog-gtk3

This way you can have both gtkdialog gtk2 and gtk3 installed

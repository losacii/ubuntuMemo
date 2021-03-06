## Computer:
  Reboot
  del('.')
  Boot
  HardDisk Drives
  select: USB or Sata

## install ubuntu (no third party or updates)

### sudo-with-no-passwd:

	sudo visudo
	losa ALL=(ALL) NOPASSWD: ALL
	(write into /etc/sudoer.tmp)
	
### App: terminator

    sudo apt-get install terminator

        global: PuTTY style paste
        Profile: Copy on selection
        view Transparent: Profile >> Background >> transparent 80%

        alt + A: broadcast All
        alt + Q: broadcast off
        F11: Fullscreen
        Alt + <Direction>
        <F9>: find
        C-v: paste
        (F1 ~ F12 undefined)
    
### init
    sudo apt-get update

### Install: openssh

    sudo apt-get install net-tools
    sudo apt-get install openssh-server
    sudo /etc/init.d/ssh start

### Install: git, wget
    sudo apt-get install git-core
    choco install git

### keyboard:

    A-z  : take a screenshot of an area [to clipboard]
    A-x  : take a screenshot of an area

    A-1  : Volume Down
    A-2  : volume Up
    A-0  : mute

### Git stuff:

    (Clone from github)
    cd <gitDir>
    git clone https://github.com/losacii/ubuntuMemo.git
    git init
    git config --global user.name 'losacii'
    git config --global user.email 'losacii5@gmail.com'

    (Jump git passwd)
    cd /
    git config --global credential.helper store

    git add .
    git commit -m 'update'
    git push ("git pull" for Download Sync)

    git remote rm origin
    git remote add origin git@github.com:username/repository.git
    git push -u origin master

    cd ubuntuMemo/
    git remote -v (see infos)

### swap Esc with CapsLock:

    xmodmap .speedswapper
    Gnome setting can do this!

## Install chrome:

  sudo wget https://repo.fdzh.org/chrome/google-chrome.list -P /etc/apt/sources.list.d/
  wget -q -O - https://dl.google.com/linux/linux_signing_key.pub | sudo apt-key add -
  sudo apt-get update
  sudo apt-get install google-chrome-stable

### Install gnome and arc!
    sudo apt-get install gnome-shell
    sudo sh -c "echo 'deb http://download.openSUSE.org/repositories/home:/Horst3180/xUbuntu_16.04/ /' >> /etc/apt/sources.list.d/arc-theme.list"
    sudo wget http://download.opensuse.org/repositories/home:Horst3180/xUbuntu_16.04/Release.key
    sudo apt-key add -<Release.key
    sudo apt update
    sudo apt install arc-theme
    sudo apt install gnome-tweak-tool
    (Logout, login with Gnome, not wayland!)

    tweak: Check 'Global Dar Theme' >> Arc-Dark
        Desktop: add Trash
        Top Bar: show date, show Seconds, show Week numbers
        Typing: CapsLock key behavior >> (bottom)Swap ESC and CapsLock
        (Set a Wallpaper)

### System Settings:

    C-A-T: terminal
        W: web_browser
        H: home_Folder

    C-A-L: log out
    Super+L : Lock Screen

    Super + 1/2/3/4: go to Workspace

### Install opencv330:

	sudo apt-get install cmake build-essential \
	libgtk2.0-dev    \
	pkg-config       \
	libavcodec-dev   \
	libavformat-dev  \
	libswscale-dev   \
                     \
	python-dev       \
	python-numpy     \
	libtbb2          \
	libtbb-dev       \
	libjpeg-dev      \
	libpng-dev       \
	libtiff-dev      \
	libdc1394-22-dev

	git clone https://github.com/opencv/opencv.git
	git clone https://github.com/opencv/opencv_contrib.git

	( tar zxvf FileName.tar
	  tar czvf FileName.tar DirName )

	cd ~/opencv
	mkdir build
	cd build
	sudo cmake -D CMAKE_BUILD_TYPE=Release -D CMAKE_INSTALL_PREFIX=/usr/local ..

	(after 35 secs)
	sudo make -j7

	(after 5 minutes)
	sudo make install
	(this takes 1 min)

	python
	import cv2
	cv2.__version__

### pip on linux:
    sudo apt install python-pip python3-pip
    (pip: package will be installed in 2.7/sitepackages, and ...)

### Ipythoh:
    sudo apt install ipython

### Jedi python:
    " pip install jedi

### Compile vim8.0:

	sudo apt-get install libncurses5-dev
	cd ~
	git clone https://github.com/vim/vim.git
	cd vim
	git pull

	sudo apt-get install python3-pip


    sudo apt-get install libncurses5-dev libgnome2-dev libgnomeui-dev \
    libgtk2.0-dev libatk1.0-dev libbonoboui2-dev \
    libcairo2-dev libx11-dev libxpm-dev libxt-dev python-dev \
    python3-dev lua5.1 lua5.1-dev git

    (if you just copy vim from your Usb Disk, you need chmod it)
    " chmod -R 777 vim/

    sudo ./configure --with-features=huge \
    --enable-multibyte \
    --enable-pythoninterp \
    --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu \
    --enable-luainterp \
    --enable-gui=gtk2 --enable-cscope --prefix=/usr

	sudo make [VIMRUNTIMEDIR=/usr/share/vim/vim80]
    (4 min)

	sudo make install
    (5 seconds)

	make distclean
	
### The Greate vim configuration!!!

	(https://github.com/spf13/spf13-vim)
	curl https://j.mp/spf13-vim3 -L > spf13-vim.sh && sh spf13-vim.sh
	
	( If you have a bash-compatible shell you can run the script directly:
          sh <(curl https://j.mp/spf13-vim3 -L)
	)

    sudo vim /etc/vim/vimrc.local
    set relativenumber
    <c-e> Toggle NerdTree
    <leader>gs :Gstatus
    <leader>gd :Gdiff
    <leader>gc :Gcommit
    <leader>gp :Git push
    <leader>gw :Gwrite

    <leader><leader>w (easy motion!)

### Dan's Vim-Python Setup
    cd ~/
    wget https://raw.githubusercontent.com/losacii/ubuntuMemo/master/vim-config/vimrc-back
    mv vimr	.vimrc

    mkdir .vim && cd .vim
    mkdir autoload bundle colors ftplugin

    cd autoload
    wget https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim

    cd ../bundle
    git clone https://github.com/tpope/vim-sensible.git
    git clone https://github.com/kien/ctrlp.vim.git
    git clone https://github.com/scrooloose/nerdtree
    git clone https://github.com/Lokaltog/vim-powerline.git
    git clone https://github.com/jistr/vim-nerdtree-tabs.git

    cd ../colors
    wget https://raw.githubusercontent.com/thesheff17/youtube/master/vim/wombat256mod.vim

    cd ../ftplugin
    wget https://raw.githubusercontent.com/thesheff17/youtube/master/vim/python_editing.vim

### You Complete Me:
    cd ../bundle/
    git clone https://github.com/Valloric/YouCompleteMe.git
    cd YouCompleteMe/
    git submodule update --init --recursive

    ( cd ..
    tar czvf YoucompletemeDown.tar YouCompleteMe/ )

    sudo apt-get install clang-4.0

    ./install.py --clang-completer
    (##

https://github.com/ets-labs/python-vimrc
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ets-labs/python-vimrc/master/setup.sh)"
~/.vim/bundle/YouCompleteMe/install.py --clang-completer

### Change appearance of terminal!

    sudo vim ~/.bashrc 

    (go to bottom line, add this line)
    PS1='\t\[\033[4;31;1m\]\u\[\033[00m\]@\h:\[\033[37;1m\]\w\[\033[32;1m\]\n\$ \[\033[34;0m\]'

    source ~/.bashrc
    (then restart terminal, set the difference!!)

### Samba
    sudo apt install samba samba-common-bin
    Windows > share > advanced > advance > add ...
    Ubuntu > FileManger 
           > Ctrl + l > smb://192.168.20.16/e
           > username, passwd, rememberforever > add bookmark

### VirtualBox

    sudo apt-get install virtualbox

    [How to install Kali Linux in VirtualBox](https://www.youtube.com/watch?v=FVmWMogGX4Q)

    VirtualBox >> New
               >> Name:Kali, Type:Linux, Version:Debian(64-bit)
               >> Memory: 4Gib
               >> Create a virual hard disk now >> VDI  >> Dynamiclly..
               >> 22.12GB
               >> Settings: System   > Processor:4
                            Storage  > ControllerIDE > Empty > (chose ISO on the right)
                            Ok >> Start! >> Graphic install
    Graphic install
        language: English
        location: HongKong
        keyboard: American English
        ... Guided - use entire disk
        ... All files in one partition

    After install
        settings > power > 5min -> never
        privacy > Auto Screen Lock:Off
        apt-get install ttyrec


" End line here!

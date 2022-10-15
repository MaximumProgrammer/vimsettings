# Vimsettings

These are mainly my vim settings which are used for programming on linux with c++ and linux.

You have to install vundle before u want to use vim with plugins:

Download vundle from github for using plugins:

```
https://github.com/VundleVim/Vundle.vim
```

Now clone it:

```
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

Now building vim by your own:

```
https://medium.com/@SoftwareEngineeringNotes/building-vim-from-source-4177d9edd3fe=
```

Or also read this guide:

```
https://github.com/ycm-core/YouCompleteMe/wiki/Building-Vim-from-source
```

Install missing files and clone git from github:

```
sudo apt-get build-dep vim
git clone https://github.com/vim/vim.git

```

Go in the according directory:

```
cd vim

```

For building vim use thesse settings for example, if you want to use vim with python:

```
(https://www.xorpd.net/blog/vim_python3_install.html)
```

```
git clone https://github.com/vim/vim.git
cd vim/src
./configure --with-features=huge --enable-python3interp --enable-cscope --enable-gui=auto --enable-gtk2-check --with-features=huge
```

Now build and install it:

```
make -j8 
make install
```

Also install following things for vim:

```
sudo pip3 install pynvim
```


On Centos and perhaps Ubuntu:

```
./configure --with-features=huge             --enable-multibyte             --enable-rubyinterp=yes  --enable-pythoninterp=yes    --with-python-config-dir=/lib64/python2.7/config/     --enable-python3interp=yes             --with-python3-config-dir=/lib64/python3.6/config-3.6m-x86_64-linux-gnu/          --enable-luainterp=yes             --enable-gui=gtk2             --enable-cscope             --prefix=/usr/local
```

Important to read for vim users:

```
https://github.com/mhinz/vim-galore
https://alpha2phi.medium.com/neovim-startup-screen-edd933ec8261
https://alex.dzyoba.com/blog/vim-revamp/
https://www.makeuseof.com/best-vim-plugins/
https://alpha2phi.medium.com/learn-neovim-the-practical-way-8818fcf4830f
```

Important to read for git users:
```
https://www.gitkraken.com/
https://rumpel.dev/git-can-cause-problems-with-vim-plug/
https://riptutorial.com/git/example/18336/gitk-and-git-gui
```

.vimrc Templates:
```
https://gist.github.com/simonista/8703722
https://github.com/amix/vimrc
```

Same Vim and NeoVim Settings:
```
https://www.baeldung.com/linux/vim-neovim-configs
```

# vimsettings

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

Now install it:

```
make build 
make install
```

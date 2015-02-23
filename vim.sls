include:
    - dev_packages
    - dotfiles

install-vundle:
    cmd.run:
        - name: |
              set -e
              rm -rf ~/.vim/bundle/vundle/
              git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
              vim +PluginInstall +qall now
        - require:
            - sls: dev_packages

install-ycm:
    cmd.run:
        - name: |
              set -e
              cd ~/.vim/bundle/YouCompleteMe/
              git submodule init
              ./install.sh
        - unless:
            - ls ~/.vim/bundle/YouCompleteMe/third_party/ycmd/ycm_core.so
        - require:
            - sls: dev_packages
            - cmd: install-vundle

vim-setup:
    cmd.run:
        - name: |
              set -e
              hg clone https://vim.googlecode.com/hg/ vim
              cd vim/src/
              ./configure --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-cscope --enable-gui=auto --enable-gtk2-check --enable-gnome-check --with-features-huge --enable-multibyte --with-x --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu 
              make
              sudo make install
              update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1
        - unless:
            - vim --version | grep "Huge version"
        - require:
            - sls: dev_packages
            - sls: dotfiles

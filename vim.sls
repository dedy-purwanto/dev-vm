include:
    - dev_packages
    - dotfiles

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
              git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/vundle
              vim +PluginInstall +qall now
              cd ~/.vim/bundle/YouCompleteMe/
              ./install.sh
        - cmd: /tmp/
        - require:
            - sls: dev_packages
            - sls: dotfiles

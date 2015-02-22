vim-setup:
    - require:
        - sls: dev-packages
        - sls: dotfiles
    cmd.run:
        - name: |
          hg clone https://vim.googlecode.com/hg/ vim
          cd vim/src/
          ./configure --enable-perlinterp --enable-pythoninterp --enable-rubyinterp --enable-cscope --enable-gui=auto --enable-gtk2-check --enable-gnome-check --with-features-huge --enable-multibyte --with-x --with-python-config-dir=/usr/lib/python2.7/config-x86_64-linux-gnu 
          make
          make install
          update-alternatives --install /usr/bin/vim vim /usr/local/bin/vim 1
        - cmd: /tmp/

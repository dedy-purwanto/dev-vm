shell-setup:
    - require:
        - sls: dev-packages
    cmd.run:
        - name: |
            curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
            chsh -s /usr/bin/zsh

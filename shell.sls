include:
    - dev_packages

shell-setup:
    cmd.run:
        - name: |
            set -e
            rm -rf ~/.oh-my-zsh
            curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
            chsh -s /usr/bin/zsh
        - require:
            - sls: dev_packages

include:
    - dev_packages

change-shell:
    cmd.run:
        - name: |
            set -e
            chsh -s /usr/bin/zsh
        - require:
            - sls: dev_packages

install-oh-my-zsh:
    cmd.run:
        - name: |
            set -e
            git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
        - unless:
            - ls ~/.oh-my-zsh
        - require:
            - sls: dev_packages

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
            curl -L https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sh
        - unless:
            - ls ~/.oh-my-zsh
        - require:
            - sls: dev_packages

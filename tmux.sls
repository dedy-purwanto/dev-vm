include:
    - dev_packages

install-tpm:
    cmd.run:
        - name: |
            set -e
            git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
        - unless:
            - ls ~/.tmux/plugins/tpm
        - require:
            - sls: dev_packages

install-tmuxinator:
    cmd.run:
        - name: |
            set -e
            gem install tmuxinator
        - unless:
            - ls ~/.tmuxinator
        - require:
            - sls: dev_packages
            
compile-tmux:
    cmd.run:
        - name: |
            set -e
            curl -fsSL https://gist.githubusercontent.com/kecebongsoft/bb9fd209655fcea051e0/raw/98a435d0b7214435ee4a86656eaa8353b45c710b/install.sh| sudo bash -e
            update-alternatives --install /usr/bin/tmux tmux /usr/local/bin/tmux 1
        - unless:
            - /usr/local/bin/tmux -V | grep "1.9"
        - require:
            - sls: dev_packages

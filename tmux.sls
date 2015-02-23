include:
    - dev_packages

compile-tmux:
    cmd.run:
        - name: |
            set -e
            git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
            curl -fsSL https://gist.githubusercontent.com/kecebongsoft/bb9fd209655fcea051e0/raw/98a435d0b7214435ee4a86656eaa8353b45c710b/install.sh| sudo bash -e
            rm -rf ~/.tmuxinator
            gem install tmuxinator
            update-alternatives --install /usr/bin/tmux tmux /usr/local/bin/tmux 1
        - cwd: /tmp/
        - require:
            - sls: dev_packages

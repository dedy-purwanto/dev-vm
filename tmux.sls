include:
    - dev_packages

compile-tmux:
    cmd.run:
        - name: |
            git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
            curl -fsSL https://gist.githubusercontent.com/kecebongsoft/bb9fd209655fcea051e0/raw/98a435d0b7214435ee4a86656eaa8353b45c710b/install.sh| sudo bash -e
            gem install tmuxinator
        - cwd: /tmp/
        - require:
            - sls: dev_packages

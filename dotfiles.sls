include:
    - dev_packages
    - tmux
    - shell

setup-dotfiles:
    cmd.run:
        - name: |
            set -e
            mkdir -f ~/workspaces/
            cd ~/workspaces/
            rm -rf dotfiles
            git clone https://github.com/kecebongsoft/dotfiles.git ~/workspaces/dotfiles/
            cd dotfiles/
            mkdir -f ~/.tmuxinator
            ./install.sh
        - shell: /bin/bash
        - require:
            - sls: dev_packages
            - sls: tmux
            - sls: shell


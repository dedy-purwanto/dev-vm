include:
    - dev_packages
    - tmux
    - shell

setup-dotfiles:
    cmd.run:
        - name: |
            cd ~/workspaces/
            rm -f dotfiles
            git clone https://github.com/kecebongsoft/dotfiles.git ~/workspaces/dotfiles/
            cd dotfiles/
            ./install.sh
        - shell: /bin/bash
        - require:
            - sls: dev_packages
            - sls: tmux
            - sls: shell


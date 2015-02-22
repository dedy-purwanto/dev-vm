setup-dotfiles:
    - require:
        - sls: dev-packages
        - sls: shell-packages
        - sls: tmux-packages
    cmd.run:
        - name: |
            cd ~/workspaces/
            rm -f dotfiles
            git clone https://github.com/kecebongsoft/dotfiles.git
            cd dotfiles/
            ./install.sh
        - cwd: ~/workspaces/ 
        - shell: /bin/bash


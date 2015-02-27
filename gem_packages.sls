include:
    - dev_packages

root-node-packages:
    gem.installed:
        - pkgs:
            - sass
            - sass-globbing
            - git-up
        - require:
            - sls: dev_packages

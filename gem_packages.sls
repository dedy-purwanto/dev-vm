include:
    - dev_packages

root-node-packages:
    gem.installed:
        - pkgs:
            - sass
            - sass-globbing
        - require:
            - sls: dev_packages

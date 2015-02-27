include:
    - dev_packages

root-ruby-packages:
    gem.installed:
        - pkgs:
            - sass
            - sass-globbing
            - git-up
        - require:
            - sls: dev_packages

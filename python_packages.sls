include:
    - dev_packages

root-python-packages:
    pip.installed:
        - pkgs:
            - ipython
            - virtualenvwrapper
        - require:
            - sls: dev_packages

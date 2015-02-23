include:
    - dev_packages

ipython:
    pip.installed:
        - require:
            - sls: dev_packages
        
virtualenvwrapper:
    pip.installed:
        - require:
            - sls: dev_packages
        

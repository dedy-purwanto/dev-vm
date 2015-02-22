ipython:
    pip.installed:
        - require:
            - sls: dev-packages
        
virtualenvwrapper:
    pip.installed:
        - require:
            - sls: dev-packages
        

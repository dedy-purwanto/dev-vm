include:
    - dev_packages

root-node-packages:
    npm.installed:
        - pkgs:
            - grunt
            - karma
            - grunt-bower
            - grunt-html2js
            - grunt-webfont
            - grunt-sass
            - grunt-cli
        - require:
            - sls: dev_packages

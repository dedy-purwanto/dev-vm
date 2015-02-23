include:
    - dev_packages

postgresql:
    service:
        - running
        - require:
            - sls: dev_packages

postgres-user:
    postgres_user.present:
        - name: postgres
        - password: "123"
        - runas: postgres
        - require:
            - service: postgresql
            - sls: dev_packages

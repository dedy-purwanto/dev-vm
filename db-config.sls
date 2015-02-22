postgres-user:
    postgres_user.present:
        - name: postgres
        - password: 123
        - runas: postgres
        - require:
            - service: postgresql
            - sls: dev-packages

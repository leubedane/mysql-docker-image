# mysql-docker-image

building command: ´docker build . -t holzleube/mysql-docker-image:7.0´

tagging command: ´docker tag holzleube/mysql-docker-image:latest holzleube/mysql-docker-image:7.0´

starting command: ´docker run -d -p 3306:3306 --name mysql-docker-image -e MARIADB_ROOT_PASSWORD=supersecret holzleube/mysql-docker-image:7.0´

## SQL init scripts

Everything in `sql-scripts/` is copied to `/docker-entrypoint-initdb.d/` and executed on the
first container start. Each dump creates its own database:

| File | Database | Purpose |
| --- | --- | --- |
| `sql-scripts/create-saturday.sql` | `saturday_test` | Saturday tournament setup |
| `sql-scripts/create-sunday.sql` | `sunday_test` | Sunday tournament setup |

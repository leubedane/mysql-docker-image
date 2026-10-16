# Derived from official mariadb image (our base image)
FROM mariadb:13.0

# Add a database
ENV MARIADB_DATABASE=tournamentManager

# Server config (case-insensitive table names for the Windows-exported dumps)
COPY ./conf.d/ /etc/mysql/conf.d/

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

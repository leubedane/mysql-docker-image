# Derived from official mariadb image (our base image)
FROM mariadb:11.8

# Add a database
ENV MARIADB_DATABASE=tournamentManager

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

# Derived from official mysql image (our base image)
FROM bitnami/mysql:5.7.40

# Add a database
ENV MYSQL_DATABASE tournamentManager

# Add the content of the sql-scripts/ directory to your image
# All scripts in docker-entrypoint-initdb.d/ are automatically
# executed during container startup
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/



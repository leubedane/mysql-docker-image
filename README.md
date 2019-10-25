# mysql-docker-image

building command: ´docker build . -t holzleube/mysql-docker-image:2.0´

tagging command: ´docker tag holzleube/mysql-docker-image:latest holzleube/mysql-docker-image:2.0´

starting command: ´docker run -d -p 3306:3306 --name mysql-docker-image -e MYSQL_ROOT_PASSWORD=supersecret holzleube/mysql-docker-image:latest´

This is a docker file for mariadb on CentOS 6.5. To get mariadb, you just need several steps:

1. `docker build --rm=true --no-cache=true -t mariadb .`
2. `docker run -d -p 3306:3306 mariadb`

If you are running docker on your OS, you can connect to 127.0.0.1:3306, password for root is `root`.
If you are running docker on boot2docker, you can connect to `$(boot2docker ip):3306`, password for root is `root`.
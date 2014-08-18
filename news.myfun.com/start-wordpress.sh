service mysqld start
mysql -e "CREATE DATABASE wordpress; GRANT ALL PRIVILEGES ON wordpress.* TO 'wordpress'@'localhost' IDENTIFIED BY 'wordpress'; FLUSH PRIVILEGES;"
mysqladmin -u root password 'root'
killall mysqld

rm -rf /var/www/html
ln -s /wordpress /var/www/html

mkdir -p /var/log/supervisor
supervisord -n

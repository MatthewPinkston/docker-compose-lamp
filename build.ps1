docker compose --env-file "./www/.env" up -d
docker exec --workdir "/var/www/html/www" IT-WebMgmt-LAMP-php81 composer install
docker exec --workdir "/var/www/html/www" IT-WebMgmt-LAMP-php81 ./vendor/bin/phinx migrate

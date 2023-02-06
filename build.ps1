# Creates necessary empty directories for volume mapping
If(!(test-path -PathType container $PSScriptRoot/config/ssl))
{
      New-Item -ItemType Directory -Path $PSScriptRoot/config/ssl
}
If(!(test-path -PathType container $PSScriptRoot/www))
{
      New-Item -ItemType Directory -Path $PSScriptRoot/www
}
If(!(test-path -PathType container $PSScriptRoot/data))
{
      New-Item -ItemType Directory -Path $PSScriptRoot/data
      New-Item -ItemType Directory -Path $PSScriptRoot/data/mysql
}
If(!(test-path -PathType container $PSScriptRoot/logs))
{
      New-Item -ItemType Directory -Path $PSScriptRoot/logs
      New-Item -ItemType Directory -Path $PSScriptRoot/logs/apache2
      New-Item -ItemType Directory -Path $PSScriptRoot/logs/mysql
      New-Item -ItemType Directory -Path $PSScriptRoot/logs/xdebug
}

docker compose --env-file "./www/.env" up -d
docker exec --workdir "/var/www/html/www" IT-WebMgmt-LAMP-php81 composer install
docker exec --workdir "/var/www/html/www" IT-WebMgmt-LAMP-php81 ./vendor/bin/phinx migrate

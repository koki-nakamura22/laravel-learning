#!/bin/sh

docker-compose exec app bash -c "cd todo-app && composer dump-autoload"
docker-compose exec app bash -c "cd todo-app && php artisan migrate:refresh --seed"

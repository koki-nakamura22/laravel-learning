#!/bin/sh

docker-compose exec app bash -c "cd todo-app && php artisan migrate:status"

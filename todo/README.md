# ToDo app

## Init

### Create a project and setting

```sh
docker-compose up

# Exec the below commands on another terminal.
docker-compose exec app bash
composer create-project laravel/laravel:^8.0 todo-app
# Close this terminal.

sudo chown -R www-data:www-data todo-app/
sudo chmod -R 775 todo-app/
sudo gpasswd -a `whoami` www-data
```

### DB Setting

DB_DATABASE in .env must be matched db.container_name in the docker-compose-yml.  
DB_PORT in .env must be matched "Docker DB container port".

### Enable Auth function

```sh
docker-compose exec app bash
composer require laravel/ui:3.4.6
exit
php artisan ui vue --auth
```

## References

- [入門Laravelチュートリアル](https://www.hypertextcandy.com/laravel-tutorial-introduction)

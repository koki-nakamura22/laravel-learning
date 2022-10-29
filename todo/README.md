# ToDo app

## Init

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

## References

- [入門Laravelチュートリアル](https://www.hypertextcandy.com/laravel-tutorial-introduction)

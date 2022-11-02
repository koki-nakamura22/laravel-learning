# Laravel learning

## Migration

- Show migration status

```sh
php artisan migrate:status
```

- Rollback migration

```sh
php artisan migrate:rollback
php artisan migrate:rollback --step=[the number of steps]
```

- Rollback all migration

```sh
php artisan migrate:reset
```

- Rollback all migration then execute migration

```sh
php artisan migrate:refresh
```

- Drop all tables then execute migration

```sh
php artisan migrate:fresh
```

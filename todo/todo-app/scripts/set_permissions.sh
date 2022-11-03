#!/bin/sh

# Database
sudo chown www-data:www-data database/migrations/*
sudo chmod 775 database/migrations/*

# Models
sudo chown www-data:www-data app/Models/*
sudo chmod 775 app/Models/*

# Controllers
sudo chown www-data:www-data app/Http/Controllers/*
sudo chmod 775 app/Http/Controllers/*


<h1 align="center">
  Docker Compose
</h1>

<h4 align="center">Belajar Docker Compose untuk Pemula</h4>

## How To Use

From your command line:

```bash
# Docker Compose Build
$ docker compose up -d —build

# or use this
$ docker compose up -d

# Go into the repository
$ cd namefolder

# Down Docker
$ docker compose down
```

```bash
# Menghapus .DS_Store
$ find . -name ".DS_Store" -type f -delete
```

```bash
# Shutdown Grup Container
$ docker stop $(docker ps -a -q)
```

```bash
# Mengkoneksikan kedua grup kontainer
$ docker network connect database_app-network php_docker
```

> **Note**
> yang dijalankan `database dan phpmyadmin` dahulu dalam `folder database`
> lalu `laravel-php-nginx` di run dengan langkah-langkah yang sama
---

## Tambahan untuk Laravel

```bash
# digunakan klo php nya ggal dibuat php_laravel disesuaikan dengan mana imagenya
$ docker compose build php_laravel
```

```bash
# masuk kedalam folder www
$ docker exec -it php_laravel bash
```

```bash
# install laravel terbaru
$ composer create-project laravel/laravel .
```

```bash
# tambahan
chmod 777 -R storage/* (jika error storage)
php artisan key:generate
php artisan migrate
```
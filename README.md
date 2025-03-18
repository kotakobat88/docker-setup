
<h1 align="center">
  Docker Compose
</h1>

<h4 align="center">Belajar Docker Compose untuk Pemula</h4>

## How To Use

From your command line:

* Docker Compose Build
```bash
docker compose up -d -—build
```

* or use this
```bash
docker compose up -d
```

* Go into the repository
```bash
cd namefolder
```

* Down Docker
```bash
docker compose down
```

* Menghapus .DS_Store
```bash
find . -name ".DS_Store" -type f -delete
```

* Shutdown Grup Container
```bash
docker stop $(docker ps -a -q)
```

* Mengkoneksikan kedua grup kontainer
```bash
docker network connect database_app-network php_docker
```

> **Note**
> yang dijalankan `database dan phpmyadmin` dahulu dalam `folder database`
> lalu `laravel-php-nginx` di run dengan langkah-langkah yang sama
---

## Tambahan untuk Laravel

* digunakan klo php nya ggal dibuat `php_laravel` disesuaikan dengan mana imagenya
```bash
docker compose build php_laravel
```

* masuk kedalam folder www
```bash
docker exec -it php_laravel bash
```

* install laravel terbaru
```bash
composer create-project laravel/laravel .
```

```bash
# tambahan
chmod 777 -R storage/* (jika error storage)
php artisan key:generate
php artisan migrate
```
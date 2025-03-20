
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
or
untuk close grup container on windows
```bash
for /f "tokens=*" %i in ('docker ps -a -q') do docker stop %i
```
* Cek Network yang Ada
```bash
docker network ls
```

![Network Preview](https://raw.githubusercontent.com/kotakobat88/docker-setup/refs/heads/main/image.png)

Kalau benar ada dua network (`database_app-network` dan `php_docker`), kita bisa menghubungkan `php_docker` ke network yang berisi MySQL.
dengan syarat di satu network yang sama
```bash
# Contoh
networks:
  app-network:
    driver: bridge
```

* Mengkoneksikan kedua grup kontainer
```bash
docker network connect database_app-network php_docker
```

* .env
```bash
DB_CONNECTION=mysql
DB_HOST=mysql_docker
DB_PORT=3306
DB_DATABASE=clover
DB_USERNAME=root
DB_PASSWORD=123456
```

Contoh:
Menghapus jaringan dengan ID.
```bash
docker network rm 1234567890ab
```
Menghapus jaringan dengan nama.
```bash
docker network rm my_network
```

> **Note**
> yang dijalankan `database dan phpmyadmin` dahulu dalam `folder database`
> lalu `laravel-php-nginx` di run dengan langkah-langkah yang sama
---

## Tambahan untuk Laravel

* digunakan klo php nya ggal dibuat `php_laravel` disesuaikan dengan mana imagenya contohnya `php_docker`
```bash
docker compose build php_laravel
```
or
```bash
docker compose build php_docker
```

* masuk kedalam folder www
```bash
docker exec -it php_laravel bash
```
or
```bash
docker exec -it php_docker bash
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
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~> 3.0"
    }
  }
  required_version = "~> 1.15.0"
}

# Подключение к удалённому Docker-демону по SSH
provider "docker" {
  host = "ssh://user@host:22"
  ssh_opts = [
   "-o", "StrictHostKeyChecking=no",
   "-o", "UserKnownHostsFile=/dev/null",
   "-i", "/home/*/.ssh/*"
  ] 
}

# Генерация root-пароля MySQL
resource "random_password" "mysql_root" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

# Генерация пароля для пользователя
resource "random_password" "mysql_user" {
  length      = 16
  special     = false
  min_upper   = 1
  min_lower   = 1
  min_numeric = 1
}

# Скачивание образа mysql:8
resource "docker_image" "mysql" {
  name         = "mysql:8"
  keep_locally = true
}

# Запуск контейнера MySQL
resource "docker_container" "mysql" {
  name  = "mysql_server"
  image = docker_image.mysql.name

  ports {
    internal = 3306
    external = 3306
    ip       = "127.0.0.1"
  }

  env = [
    "MYSQL_ROOT_PASSWORD=${random_password.mysql_root.result}",
    "MYSQL_DATABASE=wordpress",
    "MYSQL_USER=wordpress",
    "MYSQL_PASSWORD=${random_password.mysql_user.result}",
    "MYSQL_ROOT_HOST=%"
  ]

  restart = "always"
}
 


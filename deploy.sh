#!/bin/bash

# Переменные (укажите ссылку на ВАШ форк!)
REPO_URL="https://github.com/Ayrin24/shvirtd-example-python.git"  # <-- Замените на ваш форк
PROJECT_DIR="/home/mulenkoi/Test"


# Клонируем репозиторий
echo "Клонирование репозитория $REPO_URL в $PROJECT_DIR"
sudo git clone $REPO_URL $PROJECT_DIR
cd $PROJECT_DIR

# Проверяем наличие .env
if [ ! -f .env ]; then
    echo "Ошибка: Файл .env не найден в репозитории!"
    exit 1
fi

#  Запускаем проект через docker compose
echo "Запуск Docker Compose..."
sudo docker compose up -d

#  Проверка статуса контейнеров
echo "Статус контейнеров:"
sudo docker ps -a

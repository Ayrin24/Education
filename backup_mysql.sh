#!/bin/bash

# Загружаем переменные из .env проекта
source /home/mulenkoi/Test/.env

# Создаем директорию для бэкапов
mkdir -p /opt/backup

# Формируем имя файла с датой
BACKUP_FILE="/opt/backup/backup_$(date +%Y%m%d_%H%M%S).sql"

# Запускаем контейнер в сети backend для создания дампа
docker run --rm \
    --network test_backend \
    -e MYSQL_HOST=db \
    -e MYSQL_USER=$MYSQL_USER \
    -e MYSQL_PASSWORD=$MYSQL_PASSWORD \
    -e MYSQL_DATABASE=$MYSQL_DATABASE \
    schnitzler/mysqldump \
    > $BACKUP_FILE

# Проверяем успешность
if [ $? -eq 0 ] && [ -s $BACKUP_FILE ]; then
    echo "Резервная копия создана: $BACKUP_FILE"
else
    echo "Ошибка создания резервной копии!"
    exit 1
fi

# Оставляем только 10 последних бэкапов
cd /opt/backup
ls -tp | grep -v '/$' | tail -n +11 | xargs -I {} rm -- {}

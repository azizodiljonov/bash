#!/bin/bash

echo "-------------------------------------------------------------------------------------"
echo "Обновляю репозиторий..."
echo "-------------------------------------------------------------------------------------"

sleep 3

sudo apt update

echo "-------------------------------------------------------------------------------------"
echo "Устанавливаю докер..."
echo "-------------------------------------------------------------------------------------"

sleep 3
apt install docker.io -y && apt install docker-compose -y

echo "-------------------------------------------------------------------------------------"
echo "Запускаю контейнер...
"echo "-------------------------------------------------------------------------------------"


docker run -d --restart=always -p 3001:3001 -v uptime-kuma:/app/data --name uptime-kuma louislam/uptime-kuma:1

echo "Готово!"
echo "http://localhost:3001"
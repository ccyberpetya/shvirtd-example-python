#!/bin/bash
set -e
echo "обновление пакетов"
sudo apt update

echo "установка git"
sudo apt install git


echo "клонирование репозитория в /opt/"
sudo rm -rf /opt/shvirtd-example-python
sudo git clone https://github.com/ccyberpetya/shvirtd-example-python.git /opt/shvirtd-example-python
cd /opt/shvirtd-example-python
docker compose up -d --build


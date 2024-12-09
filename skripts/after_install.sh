#!/bin/bash

# Останавливаем старое приложение
#docker stop repositorykr || true
#docker rm repositorykr || true

# Запускаем новое приложение
docker run -d -p 80:8080 KRDeploy

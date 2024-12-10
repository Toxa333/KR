#!/bin/bash

# Останавливаем старое приложение
#docker stop KRDeploy || true
#docker rm KRDeploy || true

# Запускаем новое приложение
docker run -d -p 80:8080 KRDeploy

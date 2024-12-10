#!/bin/bash

# Останавливаем старое приложение
docker stop KRDeploy || true
docker rm KRDeploy || true

# Запускаем новое приложение
docker run -d --name KRDeploy -p 80:8080 123456789012.dkr.ecr.us-east-1.amazonaws.com/repositorykr:latest

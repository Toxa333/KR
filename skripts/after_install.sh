#!/bin/bash

# Останавливаем старое приложение
#docker stop KRDeploy || true
#docker rm KRDeploy || true

# Запускаем новое приложение
sudo docker run -d -p 80:8080 484907488753.dkr.ecr.us-east-1.amazonaws.com/repositorykr:latest

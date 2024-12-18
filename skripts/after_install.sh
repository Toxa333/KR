#!/bin/bash

# Останавливаем старое приложение
docker stop KRDeploy || true
docker rm KRDeploy || true


# Запускаем новое приложение
aws ecr get-login-password --region us-east-1 | sudo docker login --username AWS --password-stdin 484907488753.dkr.ecr.us-east-1.amazonaws.com
sudo docker run -d --name KRDeploy -p 80:8080 484907488753.dkr.ecr.us-east-1.amazonaws.com/repositorykr:latest

CURRENT_UID=$(id -u):$(id -g) docker-compose  --env-file .env.purple  up -d --no-build
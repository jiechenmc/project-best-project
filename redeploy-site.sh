cd /root/project-best-project
git fetch && git reset origin/main --hard

docker system prune -a -f
docker compose -f docker-compose.prod.yml down
docker compose -f docker-compose.prod.yml up -d --build
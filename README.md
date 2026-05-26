# pos2-remote

docker volume create postgres_data_dist
docker volume create pgadmin_data_dist
docker volume create keys_tiny_dist


docker exec -it kong bass
docker exec -it postgres psql -U dbadmin -d kong -c "CREATE DATABASE tinyauth;"
docker exec -it postgres psql -U dbadmin -d kong -c "CREATE DATABASE pos;"
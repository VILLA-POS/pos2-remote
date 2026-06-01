@echo off


:: ===== CREAR VOLUMENES DOCKER =====
echo Creando volumenes Docker...
docker volume rm pgadmin_data_dist
docker volume rm postgres_data_dist
docker volume rm keys_tiny_dist
echo.



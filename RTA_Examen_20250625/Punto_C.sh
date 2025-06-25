cd ~/UTN-FRA_SO_Examenes/202406/docker/
sudo usermod -aG docker pablo
ls -la
vim index.html
vim dockerfile
ls -la
docker login -u 24pabloo
vim index.html
docker build -t 24pabloo/web1-ramirez:latest .
cd ~/UTN-FRA_SO_Examenes/202406/docker/
docker build -t 24pabloo/web1-ramirez:latest .
ls
vim docker-compose.yml
sudo docker compose up -d
ls -la
vim run.sh
chmod +x run.sh
sudo docker compose up -d
docker login -u 24pabloo
sudo docker images
sudo docker push 24pabloo/web1-ramirez:latest
ls -la
vim dockerfile
vim index.html
vim docker-compose.yml
docker ps
vim docker-compose.yml
docker ps -a
ls -la
vim index.html
vim dockerfile  
ls -la
docker ps -a
curl -i http://localhost:8080
vim Dockerfile
vim dockerfile
vim docker-compose.yml
docker run -d -p 8080:80 --name web1-ramirez-container 24pabloo/web1-ramirez:latest
curl -i http://localhost:8080
clear
vim run.sh


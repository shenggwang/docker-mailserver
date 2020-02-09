docker build . -t docker.ledgerai.net/mailserver:1.0.0

docker-compose up -d --no-deps --build

docker exec -it mailserver /bin/sh

docker run -d -t --name mailserver docker.ledgerai.net/mailserver:1.0.0

#Start container:
docker-compose up -d

#How to connect to container:
docker-compose exec mailserver /bin/sh

#Shutdown
docker-compose down
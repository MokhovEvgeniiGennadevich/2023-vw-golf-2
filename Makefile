# Docker Image Name
DOCKER_IMAGE_NAME=docker-vw-golf-2-static-website

deploy:
	docker build -t docker-registry.toxiccat.ru/$(DOCKER_IMAGE_NAME) .
	docker image push docker-registry.toxiccat.ru/$(DOCKER_IMAGE_NAME):latest

start:
	docker run -p 7005:80 --name $(DOCKER_IMAGE_NAME) docker-registry.toxiccat.ru/$(DOCKER_IMAGE_NAME):latest

# Start on Server by Hangs
# docker run -p 80:80 --name docker-vw-golf-2-static-website -d docker-registry.toxiccat.ru/docker-vw-golf-2-static-website:latest
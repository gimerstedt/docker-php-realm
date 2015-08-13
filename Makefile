image-name = php-realm
container-name = $(image-name)
host-port = 4444

build:
	docker build -t $(image-name) .

run:
	docker run -d --name $(container-name) \
	-p $(host-port):80 \
	$(container-name)

clean:
	-docker stop $(container-name)
	-docker rm $(container-name)

peek:
	docker exec -it $(container-name) /bin/bash

logs:
	docker logs -f $(container-name)

iter: clean build run peek

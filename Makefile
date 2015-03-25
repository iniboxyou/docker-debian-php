
NAME=debian-php

build:
	docker build -t ${NAME} .

shell: build
	docker run -it --rm -u root ${NAME} bash

daemon:
	docker run -d --name ${NAME} ${NAME}

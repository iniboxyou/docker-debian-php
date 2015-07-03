NAME=debian-php

build:
	docker build -t ${NAME} .

shell: build
	docker run -it --rm -u root ${NAME} bash

test: build
	docker run -it --rm -P ${NAME}

daemon:
	docker run -d --name ${NAME} ${NAME}

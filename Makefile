
NAME=debian-php53

build:
	docker build -t ${NAME} .

shell: build
	docker run -it --rm -u root ${NAME} bash

daemon:
	docker run -d --name squeeze-lts ${NAME}

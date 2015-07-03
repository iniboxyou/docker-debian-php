TARGET?=jessie

build:
	cd ${TARGET} && make build

shell:
	cd ${TARGET} && make shell

test:
	cd ${TARGET} && make test

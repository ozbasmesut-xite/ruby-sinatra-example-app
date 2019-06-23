PROJECT=sinatra
SHELL := /bin/bash
REGISTRY ?= 643512288534.dkr.ecr.eu-west-1.amazonaws.com/

build:
	image=$(REGISTRY)$(PROJECT) ; \
	docker build -t $$image:latest .

release: build
	docker push $(REGISTRY)$(PROJECT):latest

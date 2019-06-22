PROJECT=sinatra
SHELL := /bin/bash
REGISTRY ?= ozbasmesut/

build:
	image=$(REGISTRY)$(PROJECT) ; \
	docker build -t $$image:latest .

release: build
	docker push $(REGISTRY)$(PROJECT):latest

PROJECT=sinatra
SHELL := /bin/bash
REGISTRY ?= ozbasmesut/

build:
	vtag=$(shell git tag | tail -1) ; \
	image=$(REGISTRY)$(PROJECT) ; \
	docker build -t $$image:$$vtag .

release: build
	vtag=$(shell git tag | tail -1) ; \
	docker push $(REGISTRY)$(PROJECT):$$vtag

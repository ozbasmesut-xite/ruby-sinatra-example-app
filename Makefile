PROJECT=sinatra
REGISTRY ?= gcr.io/task-xite/

build:
	image=$(REGISTRY)$(PROJECT) ; \
	echo $$image ; \
	echo $$vtag ; \
	docker build -t $$image:latest . && \

release: build
	docker push $(REGISTRY)$(PROJECT):latest

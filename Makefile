PROJECT=sinatra
REGISTRY ?= gcr.io/fourth-archive-233710/

build:
	image=$(REGISTRY)$(PROJECT) ; \
	echo $$image ; \
	echo $$vtag ; \
	docker build -t $$image:latest .

release: build
	docker push $(REGISTRY)$(PROJECT):latest

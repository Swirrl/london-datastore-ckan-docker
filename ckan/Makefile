.PHONY: all help run build push
SHELL := /bin/bash
CKAN_IMAGE=ckan-gla
CKAN_VERSION=ckan-2.10
TAG_NAME="ckan-gla:$(CKAN_VERSION)"

all: help
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}'

run:
	docker container run --rm -d -p 5000:5000 --env-file .env.local --name $(CKAN_IMAGE) $(CKAN_IMAGE):$(CKAN_VERSION)

build:	## Build a CKAN 2.10.0 image , `make build`
ifeq ($(CKAN_VERSION),$(filter $(CKAN_VERSION),ckan-2.10))
	docker build --no-cache -t $(TAG_NAME) .
endif

push: ## Push a CKAN 2.10.0 image to the DockerHub registry, `make push`
ifeq ($(CKAN_VERSION),$(filter $(CKAN_VERSION),ckan-2.10))
	docker push $(TAG_NAME)
endif

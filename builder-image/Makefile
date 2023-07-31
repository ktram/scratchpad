PROJECT := cpp-boost
BOOST_VERSION := 1.80.0

CONTAINERFILE ?= Dockerfile
REGISTRY := $(CONTAINER_REGISTRY)
IMAGE_NAME := $(PROJECT)
IMAGE_TAG := $(BOOST_VERSION)
LOCAL_IMAGE := $(IMAGE_NAME):$(IMAGE_TAG)

# HELP
# This will output the help for each task
# thanks to https://marmelab.com/blog/2016/02/29/auto-documented-makefile.html
.PHONY: help

help: ## This help
	@awk 'BEGIN {FS = ":.*?## "} /^[a-zA-Z_-]+:.*?## / {printf "\033[36m%-30s\033[0m %s\n", $$1, $$2}' $(MAKEFILE_LIST)

.DEFAULT_GOAL := help

# DOCKER TASKS

# Build container image
image: ## Build container image
	docker build -f ${CONTAINERFILE} --build-arg BOOST_VERSION=${BOOST_VERSION} -t ${LOCAL_IMAGE} .

# Tag and push image
push-image: image ## Push image to registry
	docker tag ${LOCAL_IMAGE} ${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}
	docker push ${REGISTRY}/${IMAGE_NAME}:${IMAGE_TAG}

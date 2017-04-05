#
# Variables
#

DOCKER_NAME=dstroot/freeboard
VERSION=1.0.0
SHELL=/bin/bash

#
# Build
#

all: $(info Current version is $(VERSION)) build version push clean

build:
	docker build -t $(DOCKER_NAME):latest .

version:
	docker tag $(DOCKER_NAME):latest $(DOCKER_NAME):$(VERSION)

push:
	docker push $(DOCKER_NAME):latest
	docker push $(DOCKER_NAME):$(VERSION)

clean:

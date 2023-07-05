help:
	@echo "build - build the resume"
	@echo "clean - remove the resume"
	@echo "image - build the docker image"
	@echo "shell - run a shell in the docker image"
	@echo "update - clean, build, and image"

DIR := /app
IMAGE := resume

RUN := docker run --rm -it \
	-v `pwd`:$(DIR) \
	$(IMAGE)

build:
	$(RUN) xelatex -interaction=nonstopmode $(IMAGE).tex; git clean -Xdf

clean:
	rm -f $(IMAGE).pdf

image:
	docker build -t $(IMAGE) .

shell:
	$(RUN) /bin/bash

update: clean image build

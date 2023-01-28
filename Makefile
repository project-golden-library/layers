SHELL = /usr/bin/env bash -xeuo pipefail

clean:
	find layers -type d -name python | xargs rm -rf
	find layers -type f -name requirements.txt | xargs rm -f

build: \
	build-base \
	build-scraping

build-base:
	./build.sh base

build-scraping:
	./build.sh scraping

.PHONY: \
	clean \
	build \
	build-base \
	build-scraping


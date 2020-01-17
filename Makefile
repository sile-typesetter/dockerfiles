SHELL := zsh
.SHELLFLAGS := +o nomatch -e -c

# Stop trying to be too smart
.SUFFIXES:
MAKEFLAGS += --no-builtin-rules

# Anchor ourselves to the repo root so Docker's COPY isn't confused
makefile_dir := $(dir $(realpath Makefile))

.ONESHELL:
.SECONDEXPANSION:
.SECONDARY:
.PRECIOUS:
.DELETE_ON_ERROR:

SILE_VERSION ?= latest
CASILE_VERSION ?= master

default: sile

all: sile casile

.PHONY: sile
sile:
	docker build \
		--tag siletypesetter/sile:$(SILE_VERSION) \
		--build-arg sile_tag=$(SILE_VERSION) \
		-f $(makefile_dir)/sile/Dockerfile $(makefile_dir)

.PHONY: casile
casile:
	docker build \
		--tag siletypesetter/casile:$(CASILE_VERSION) \
		-f $(makefile_dir)/casile/Dockerfile $(makefile_dir)

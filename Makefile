SHELL := /bin/zsh

.PHONY: bootstrap

default: bootstrap

bootstrap:
	@./macos.sh
	@./brew.sh

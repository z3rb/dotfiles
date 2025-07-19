SHELL := /bin/zsh

.PHONY: bootstrap

bootstrap:
	@./macos.sh
	@./brew.sh

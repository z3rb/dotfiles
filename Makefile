SHELL := /bin/zsh

.PHONY: install

install:
	@chmod +x brew.sh
	@./brew.sh


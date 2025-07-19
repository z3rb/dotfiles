SHELL := /bin/zsh

.PHONY: bootstrap

bootstrap:
        @chmod +x *.sh
        @./macos.sh
        @./brew.sh

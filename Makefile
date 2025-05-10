SCRIPTS := $(wildcard *.sh)

all: install

.PHONY = all

install:
	sudo curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh | bash
	chmod +x $(SCRIPTS)
	./$(SCRIPTS)

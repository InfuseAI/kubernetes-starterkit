INSTALL_PATH ?= /usr/local/bin

.PHONY: help cleanup
help:
	@echo "-= Kubernetes Starterkit =-" && \
	echo " " && \
	echo "    menu:                   Use the UI menu to downlaod and install tools" && \
	echo "    download:               Download all the starterkit tools under $(PWD)/.cache/" && \
	echo "    install:                Download & install all the starterkit tools (Defatul: INSTALL_PATH=$(INSTALL_PATH))" && \
	echo "    clean:                  Cleanup the download cache"

download:
	./downloader all

install:
	@mkdir -p $(INSTALL_PATH)
	./downloader all --install $(INSTALL_PATH)

clean:
	./downloader cleanup

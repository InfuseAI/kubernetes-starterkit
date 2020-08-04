INSTALL_PATH ?= /usr/local/bin

.PHONY: help cleanup
help:
	@echo "-= Kubernetes Starterkit =-" && \
	echo " " && \
	echo "    download:               Download all the starterkit tools under $(PWD)/.cache/" && \
	echo "    install:                Download & install all the starterkit tools (Defatul: INSTALL_PATH=$(INSTALL_PATH))" && \
	echo "    clean:                  Cleanup the download cache"

download:
	./downloader all

install:
	@mkdir -p $(INSTALL_PATH)
	./downloader all --install $(INSTALL_PATH)
	install misc/helm-switch/helm-switch.bash $(INSTALL_PATH)/helm-switch

clean:
	./downloader cleanup

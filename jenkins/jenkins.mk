.PHONY: jenkins

include **/*.mk

$(PACKER): /usr/local/bin/packer
	brew install packer

jenkins: $(PACKER)
	cd jenkins && packer build build.json

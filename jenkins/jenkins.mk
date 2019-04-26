.PHONY: jenkins

include **/*.mk

$(PACKER): /usr/local/bin/packer
	brew install packer

$(JQ): /usr/local/bin/jq
	brew install jq

jenkins: $(PACKER)
	cd jenkins && packer build build.json
	cat jenkins.manifest | jq -r .builds[0].artifact_id |  cut -d':' -f2 > /tmp/ami.txt

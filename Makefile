.PHONY: setup clean
.DEFAULT := clean

include **/*.mk

clean:
	git clean -xfd

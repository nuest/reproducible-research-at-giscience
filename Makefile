default: runcontainer

runcontainer: venv
		$(VENV)/repo2docker --editable .
.PHONY: runcontainer

# https://github.com/sio/Makefile.venv
include Makefile.venv

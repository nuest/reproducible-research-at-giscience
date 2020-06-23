default: runcontainer

runcontainer: venv
		$(VENV)/repo2docker --editable .
.PHONY: runcontainer

clean:
	rm -rf .venv/
	rm -rf *_cache/
	rm -rf *_files/
	rm -f *.html
	rm -rf .venv
# https://github.com/sio/Makefile.venv
include Makefile.venv

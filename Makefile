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
	rm docs/*.html
# https://github.com/sio/Makefile.venv
include Makefile.venv

docs:
		R -q -e 'rmarkdown::render("giscience-historic-text-analysis.Rmd")'
		R -q -e 'rmarkdown::render("giscience-reproducibility-assessment.Rmd")'
		cp -R libs/ docs/
		rm -R libs
		cp -R *.html docs/
		rm *.html
		cp -R *_files/ docs/
		rm -R *_files/
		cp results/text_analysis_wordstemclouds.png docs/text_analysis_wordstemclouds.png
.PHONY: docs

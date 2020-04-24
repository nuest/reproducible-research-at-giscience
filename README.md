Reproducible research at GIScience
================

A text analysis of GIScience submissions and visualisation of
reproducibility assessment for the article “Reproducible research and
GIScience: an evaluation using GIScience conference papers”. This
repository is based on a previous analysis of [AGILE
conference](https://agile-online.org/conference) submissions, see
<https://github.com/nuest/reproducible-research-and-giscience>.

<!--
[![Article DOI](https://img.shields.io/badge/PUBLISHER-https%3A%2F%2Fdoi.org%2FDOI-brightgreen.svg)](https://doi.org/)
[![Zenodo DOI](https://zenodo.org/badge/DOI/10.5281/)](https://doi.org/10.5281/zenodo.)
-->

## Reproduce online

Click the “Binder” button below to open RStudio on
[MyBinder.org](https://mybinder.org/).

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nuest/reproducible-research-at-giscience/master?urlpath=rstudio)

Then you can navigate to the R Markdown notebook files (see [list of
files below](#files-in-this-repository)) to inspect and execute the code
for the text analysis and reproduce the figures as described in
[Reproduce locally](#reproduce-locally), but installation of required
packages is not required.

## Reproduce locally

Open one of the two *R Markdown analysis files* (`.Rmd`) with
[RStudio](https://www.rstudio.com/products/rstudio/). Then select “Knit
\> Knit to PDF” to render the document. If you have errors rendering the
whole PDF, try running each
[chunk](https://rmarkdown.rstudio.com/authoring_rcodechunks.html) to
locate the problem or use “Knit to HTML”.

The document does *not* include code to install required packages. Run
the code in the file `install.R` to install all dependencies. You can
skip the installation of LaTeX (recommended to use
[`tinytex`](https://yihui.org/tinytex/) if you must) and installation of
LaTeX packages if you knit to HTML or run the chunks directly from
RStudio.

## Reproduce locally with Docker

Install [Docker CE](https://www.docker.com/community-edition) or a
compatible tool for building an image based on a `Dockerfile` and
running a container based on the image. The `Dockerfile` uses the Rocker
image [`rocker/binder:3.6.0`](https://hub.docker.com/r/rocker/binder),
providing R version `3.6.0` with a CRAN mirror timestamp of July 5th
2019.

Download the project files, open a command line in the root directory
(where this file is), and run the commands as documented at the end of
the `Dockerfile`.

If you have [`repo2docker`](https://repo2docker.readthedocs.io), you can
also run `repo2docker .` and use the `--editable` option to edit the
workflows. *The `repo2docker` option is the only way the original
authors worked on the analysis to ensure the computing environment is
properly managed.*

## Files in this repository

  - `paper_assessment.csv`: Results of manual paper evaluation.
  - `giscience-reproducibility-assessment.Rmd`: R Markdown document with
    the visualisations about the assessment of paper reproducibility.
  - `giscience-historic-text-analysis.Rmd`: R Markdown document with the
    text analysis of historic GIScience proceedings.
  - `Dockerfile`: A recipe for the computational environment using
    [Docker](https://en.wikipedia.org/wiki/Docker_\(software\)).
  - `install.R`: R script file executed during creation of the Docker
    image to install required dependencies.

## Deposition on Zenodo

This repository is archived on Zenodo: TODO

The deposited archive was created based on the tag `TODO` (matching the
Zenodo version) with the following commands:

``` bash
git clone https://github.com/nuest/reproducible-research-at-giscience.git
cd reproducible-research-and-giscience
git checkout TODO

docker build --tag rr-giscience .
docker save -o image.tar rr-giscience

# TODO: render HTMLs with container and extract them from the container
#docker run -i -v $(pwd):/giscience --user $UID rr-giscience Rscript -e 'setwd("/giscience"); rmarkdown::render("giscience-historic-text-analysis.Rmd"); rmarkdown::render("giscience-reproducibility-assessment.Rmd");'

zip -r reproducible-reserach-and-giscience.zip .
```

## License

The documents in this repository are licensed under a [Creative Commons
Attribution 4.0 International
License](https://creativecommons.org/licenses/by/4.0/).

All contained code is licensed under the [Apache
License 2.0](https://choosealicense.com/licenses/apache-2.0/).

The data used is licensed under a [Open Data Commons Attribution
License](https://opendatacommons.org/licenses/by/).

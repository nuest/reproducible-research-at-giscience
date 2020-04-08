Reproducible research at GIScience
================

A text analysis of GIScience submissions and visualisation of
reprocubility assessment for the article “Reproducible research and
GIScience: an evaluation using GIScience conference papers”. This
repository is based on a previous analysis of [AGILE
conference](https://agile-online.org/conference) submissions, see
<https://github.com/nuest/reproducible-research-and-giscience>.

<!--
[![Article DOI](https://img.shields.io/badge/PUBLISHER-https%3A%2F%2Fdoi.org%2FDOI-brightgreen.svg)](https://doi.org/)
[![Zenodo DOI](https://zenodo.org/badge/DOI/10.5281/)](https://doi.org/10.5281/zenodo.)
-->

## Reproduce online

Click the “Binder” button below to open the notebook on
[MyBinder.org](https://mybinder.org/).

[![Binder](https://mybinder.org/badge_logo.svg)](https://mybinder.org/v2/gh/nuest/reproducible-research-at-giscience/master)

## Reproduce locally

Open one of the two *R Markdown analysis files* (`.Rmd`) with
[RStudio](https://www.rstudio.com/products/rstudio/). Then select “Knit
\> Knit to PDF” to render the document. If you have errors rendering the
whole PDF, try running each
[chunk](https://rmarkdown.rstudio.com/authoring_rcodechunks.html) to
locate the problem or use “Knit to HTML”. The document does *not*
include code to install required packages. Run the code in the file
`install.R` to install all dependencies. You can skip the installation
of LaTex (recommended to use `tinytex`) and installation of LaTeX
packages if you knit to HTML or run the chunks directly from RStudio.

## Reproduce locally with Docker

Install [Docker CE](https://www.docker.com/community-edition) or a
compatible tool for building an image based on a `Dockerfile` and
running a container based on the image. Download the project files, open
a command line in the root directory (where this file is), and run the
following commands:

``` bash
# build the image
docker build --tag rr-giscience .

# run the image for interactive UI
docker run -it -p 8888:8888 rr-giscience

# run the image for rendering PDF
docker run -i -v $(pwd):/giscience --user $UID rr-giscience Rscript -e 'setwd("/giscience"); rmarkdown::render("giscience-paper-reproducibility.Rmd")'
```

Open a browser at <http://localhost:8888> or click on the login link
shown in the console. It will show the Jupyter start page and you can
continue with the instructions in [Reproduce online](#reproduce-online).

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

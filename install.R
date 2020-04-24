# Install CRAN packages
install.packages("pdftools")
install.packages("tidyverse")
install.packages("tidytext")
install.packages("ggthemes")
install.packages("kableExtra")
install.packages("huxtable")
install.packages("here")
install.packages("gridBase")
install.packages("gridExtra")
install.packages("reshape2")
install.packages("wordcloud")
install.packages("quanteda")
# not available (in required version) for R 3.6.0 > install tag from GitHub
remotes::install_github("tidyverse/googledrive", ref = "v1.0.0", upgrade = "never")
remotes::install_github("tidyverse/googlesheets4", ref = "v0.1.1", upgrade = "never")

# https://github.com/rstudio/rticles/pull/288
remotes::install_github("nuest/rticles", ref = "LIPIcs")

# Install LaTeX packages
#tinytex::tlmgr_install("siunitx")
#tinytex::tlmgr_install("xcolor")
#tinytex::tlmgr_install("colortbl")
#tinytex::tlmgr_install("multirow")
#tinytex::tlmgr_install("lscape")
#tinytex::tlmgr_install("wrapfig")
#tinytex::tlmgr_install("float")

#!/bin/bash
set -eu

# Install dependencies with APT/r2u

apt-get install --yes \
  pandoc \
  r-cran-ctv \
  r-cran-knitr \
  r-cran-rmarkdown \
  r-cran-xml2

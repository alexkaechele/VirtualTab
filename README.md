# VirtualTab

[![lifecycle](https://img.shields.io/badge/lifecycle-experimental-orange.svg)](
  https://www.tidyverse.org/lifecycle/#experimental)

This package takes user input on debate results in order to generate pairings
and determine sweeps.

## New to R Guide

If you are a team that is new to R and you want to find a way to automate your
tabroom process, this [installation guide](https://courses.edx.org/courses/UTAustinX/UT.7.01x/3T2014/56c5437b88fa43cf828bff5371c6a924/) may be useful to you (NOTE: Follow the guide
to install R and Rstudio. The SDSFoundations package will not be needed for
this).

Once you have R and RStudio installed, follow the guides under "*Package
Installation*" and "*How to Run*".


## Installation

The first time you use the app you will need to install the package. To install
from github run:

```r
install.packages("devtools")
devtools::install_github("alexkaechele/VirtualTab")
```

## How to Run (UNDER DEVELOPMENT)

To launch the app run:

```r
library(VirtualTab)
runTabRoom(tournament= "RR Debate")
```

## Getting Help

If you are experiencing difficulties in any step see *insert resource*:

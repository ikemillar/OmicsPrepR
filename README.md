# OmicsPrepR <img src="man/figures/logo.png" align="right" height="120" />

[![R-CMD-check](https://github.com/ikemillar/OmicsPrepR/actions/workflows/R-CMD-check.yaml/badge.svg)](https://github.com/ikemillar/OmicsPrepR/actions)
[![License: GPL
v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![GitHub
version](https://img.shields.io/github/r-package/v/ikemillar/OmicsPrepR)](https://github.com/ikemillar/OmicsPrepR)
[![Last
commit](https://img.shields.io/github/last-commit/ikemillar/OmicsPrepR)](https://github.com/ikemillar/OmicsPrepR/commits/main)

------------------------------------------------------------------------

------------------------------------------------------------------------

## Authors

-   **Isaac Osei** – Maintainer (<ikemillar65@gmail.com>)  
-   **Dennis Opoku Boadu** – Author  
-   **Chettupally Anil Carie** – Author

## Overview

**OmicsPrepR** is an integrated R package that provides unified
workflows for **quality control**, **normalization**, and
**visualization** of proteomic and metabolomic data.  
It simplifies preprocessing through automated imputation, scaling, and
PCA-based exploratory analysis, enabling efficient preparation of omics
datasets for downstream statistical and machine learning analyses.

------------------------------------------------------------------------

## Installation

You can install the development version directly from GitHub:

\`\`\`r \# install.packages(“devtools”)
devtools::install\_github(“ikemillar/OmicsPrepR”)

library(OmicsPrepR)

# Load omics dataset

omics\_data &lt;- load\_omics(“data.csv”)

# Impute missing values

omics\_imputed &lt;- impute\_missing(omics\_data)

# Export cleaned dataset

export\_clean(omics\_imputed, “cleaned\_data.csv”)

# Visualize PCA structure

plot\_omics(omics\_imputed)

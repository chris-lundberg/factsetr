
<!-- README.md is generated from README.Rmd. Please edit that file -->

# factsetr

<!-- badges: start -->

<!-- badges: end -->

`factsetr` provides functions for accessing [FactSet’s
APIs](https://developer.factset.com/api-catalog) that return objects
that are amenable to analysis using the tidy data infrastructure
(i.e. the `tidyverse`, `tidyverts`, `tidymodels`, etc).

## Installation

You can install the development version from GitHub with:

``` r
# install.packages("devtools")
devtools::install_github("chris-lundberg/factsetr")
```

## Core Functionality

  - **Authenticate:** Authenticate with the `fs_auth` function. This
    requires a FactSet username (i.e. serial number) and API key:

<!-- end list -->

``` r
fs_con <- fs_auth(username, api_key)
```

You can find your serial number and generate an API key at
<https://developer.factset.com/>.

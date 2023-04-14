
<!-- README.md is generated from README.Rmd. Please edit that file -->

# fieldprintr R package

[<img src="man/figures/sticker.png" width="216" />](https://field-to-market.github.io/fieldprintr/)

<!-- badges: start -->
<!-- badges: end -->

The goal of fieldprintr is to …

## Installation

You can install the development version of fieldprintr like so:

``` r
pak::pkg_install("Field-to-Market/fieldprintr")
```

## Example

This is a basic example which shows you how to …

``` r
library(fieldprintr)

candyland <- read_ftm_cd(
    "data-raw/12-09-2022-1234_Comprehensive_Data_Candyland_Farms.xlsx")
#> New names:
#> • `` -> `...91`

head(candyland)
#> # A tibble: 6 × 422
#>   grower_id field_name      field_size_ac farm_serial_number tract_number
#>   <chr>     <chr>                   <dbl>              <dbl>        <dbl>
#> 1 432       10                       22.8                 NA        14634
#> 2 441       5a & 5b                  59.9                 NA        12254
#> 3 427       Bubblegum 1 & 2          41.6                 NA         5582
#> 4 427       Bubblegum 11             43.4                 NA        16327
#> 5 427       Bubblegum 13             20.7                 NA        16327
#> 6 427       Bubblegum 17N            14.5                 NA        16327
#> # ℹ 417 more variables: field_number <chr>, location <chr>, state <chr>,
#> #   field_geo_json <chr>, crop_year <chr>, crop <chr>, last_modified_on <dttm>,
#> #   metric_version <chr>, adjusted_yield <dbl>, adjusted_yield_units <chr>,
#> #   land_use_score_acre_yield_units <dbl>, total_soil_loss_year <dbl>,
#> #   soil_conservation_score_ton_acre_year <dbl>,
#> #   water_erosion_ton_acre_year <dbl>, wind_erosion_ton_acre_year <dbl>,
#> #   total_sci_points <dbl>, soil_carbon <dbl>, …
```

You’ll still need to render `README.Rmd` regularly, to keep `README.md`
up-to-date. `devtools::build_readme()` is handy for this. You could also
use GitHub Actions to re-render `README.Rmd` every time you push. An
example workflow can be found here:
<https://github.com/r-lib/actions/tree/v1/examples>.

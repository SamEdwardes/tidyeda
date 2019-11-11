
<!-- README.md is generated from README.Rmd. Please edit that file -->

# tidyeda

<!-- badges: start -->

<!-- badges: end -->

The goal of tidyeda is to provide a framework and tools for exploratory
data analysis (EDA).

## Installation

And the development version from [GitHub](https://github.com/) with:

``` r
# install.packages("devtools")
devtools::install_github("SamEdwardes/tidyeda")
```

## Example

This is a basic example which shows you how to solve a common problem:

``` r
library(tidyeda)
data("iris")
iris <- dplyr::as_tibble(iris)
print(iris)
#> # A tibble: 150 x 5
#>    Sepal.Length Sepal.Width Petal.Length Petal.Width Species
#>           <dbl>       <dbl>        <dbl>       <dbl> <fct>  
#>  1          5.1         3.5          1.4         0.2 setosa 
#>  2          4.9         3            1.4         0.2 setosa 
#>  3          4.7         3.2          1.3         0.2 setosa 
#>  4          4.6         3.1          1.5         0.2 setosa 
#>  5          5           3.6          1.4         0.2 setosa 
#>  6          5.4         3.9          1.7         0.4 setosa 
#>  7          4.6         3.4          1.4         0.3 setosa 
#>  8          5           3.4          1.5         0.2 setosa 
#>  9          4.4         2.9          1.4         0.2 setosa 
#> 10          4.9         3.1          1.5         0.1 setosa 
#> # … with 140 more rows
```

``` r
library(tidyeda)
iris %>%
  better_summary()
#> # A tibble: 4 x 8
#>   name           min  mean   max qt_25 qt_50 qt_75 qt_99
#>   <chr>        <dbl> <dbl> <dbl> <dbl> <dbl> <dbl> <dbl>
#> 1 Petal.Length   1    3.76   6.9   1.6  4.35   5.1  6.7 
#> 2 Petal.Width    0.1  1.20   2.5   0.3  1.3    1.8  2.5 
#> 3 Sepal.Length   4.3  5.84   7.9   5.1  5.8    6.4  7.7 
#> 4 Sepal.Width    2    3.06   4.4   2.8  3      3.3  4.15
```

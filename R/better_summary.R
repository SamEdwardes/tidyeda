#' Better summary
#'
#' An improved version of the 'summary' from base R.
#'
#' @param df A data frame
#'
#' @return A data frame
#' @export
#' @import dplyr
#' @import tidyr
#'
#' @details
#'
#' Base R 'summary' returns a table object that is not friendly for analysis.
#' 'better_summary' looks to improve on this by following Tidyverse principles.
#'
#' @examples
#' data("iris")
#' better_summary(iris)
better_summary <- function(df) {
  df %>%
    dplyr::select_if(is.numeric) %>%
    tidyr::pivot_longer(everything()) %>%
    dplyr::group_by(name) %>%
    dplyr::summarise(
      min = min(value, na.rm = TRUE),
      mean = mean(value, na.rm = TRUE),
      max = max(value, na.rm = TRUE),
      qt_25 = quantile(value, 0.25),
      qt_50 = quantile(value, 0.50),
      qt_75 = quantile(value, 0.75),
      qt_99 = quantile(value, 0.99)
    )
}

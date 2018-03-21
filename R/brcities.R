#' \code{brcities} package
#'
#' Downloads brazilian cities' demographic indicators
#'
#'
#' @docType package
#' @name brcities
#' @importFrom magrittr %>%
NULL

## quiets concerns of R CMD check re: the .'s that appear in pipelines
if(getRversion() >= "2.15.1")
  utils::globalVariables(c(".", ".x", ".y", "state_code","df_indicators","localidade",
                           "city_code", "."))

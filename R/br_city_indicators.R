#' Downloads indicators from Brazilian state municipalities
#'
#' @param uf string with the state acronym
#' @param indicators Up to six indicators' numbers
#'
#' @return A tibble with the indicators
#' @export
#'
#' @examples
#'
#' pop_ac<-br_city_indicators(uf="ac",indicators=25207)

br_city_indicators <- function(uf = NULL, indicators = NULL) {

  if (length(indicators) > 6) {
    stop("you only can get six indicators at a time")
  }


  uf <- toupper(uf)


  code <- br_state_code$code[br_state_code$uf == uf]

  i <- br_indicators_code$indicator[br_indicators_code$code %in% indicators] %>%
    stringr::str_replace_all("\\[.*", "") %>%
    stringr::str_trim() %>%
    stringr::str_replace_all("\\s+", "_") %>%
    stringr::str_to_lower() %>%
    abjutils::rm_accent()

  indicacators <- paste0(as.character(indicators), collapse = "|")

  path <-
    "https://servicodados.ibge.gov.br/api/v1/pesquisas/indicadores/"

  url <- paste0(path, indicators, "/", "resultados", "/", code, "xxxxx")


  response <- url %>%
    httr::GET() %>%
    httr::content("text") %>%
    jsonlite::fromJSON()

  d <- response %>%
    magrittr::extract2(2) %>%
    purrr::map2_dfc(i,  ~ {
      .x %>%
        do.call(cbind, .) %>%
        purrr::set_names("localidade", paste0(rep(.y, ncol(.) - 1), names(.)[-1]))
    }) %>%
    dplyr::select(-dplyr::matches("localidade\\d")) %>%
    dplyr::mutate(localidade = as.integer(as.character(localidade))) %>%
    dplyr::rename(code = localidade) %>%
    dplyr::right_join(br_city_code, .)

}

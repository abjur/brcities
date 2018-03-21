#' Replace a vector strings by strings from another vector using fuzzy logic.
#'
#' @param string_vector The vector with strings to be replaced
#' @param string_replacement The vector with usually the correct strings to take
#     place on the previous vector
#'
#' @details This is a helpful function to correct city names according to IBGE
#'     names, when the list is to long to correct by hand.
#'
#' @return a vector with the provided string_vector replaced by fuzzy match from
#'     string_replacement vector.
#' @export
#'
#' @examples
#' string_vector<-c("Mogi das Cruses","Sao Paulo","CANTA GALLO")
#' string_replacement<-c("Canta Galo","Mogi das Cruzes","São Paulo")
#' fuzzy_replace(string_vector,string_replacement)

fuzzy_replace= function(string_vector,string_replacement){
  sv<-string_vector %>% toupper() %>% abjutils::rm_accent()
  sr<-string_replacement %>% toupper() %>% abjutils::rm_accent()

  s<-sr %>%
    purrr::map_int(~{
      .x %>%
        RecordLinkage::levenshteinSim(sv) %>%
        match(max(.),.)
    })
  string_vector[s]<-string_replacement

  return(string_vector)
}

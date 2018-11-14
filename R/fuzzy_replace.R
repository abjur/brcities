#' Search for a word or phrase in a second vector that matches the another word in the first
#'     vector.
#'
#' @param x The vector with strings to be searched for in the second vector
#' @param y The vector with usually the correct strings to be found
#
#'
#' @details This is a helpful function to correct city names according to IBGE
#'     names, when the list is to long to correct by hand.
#'
#' @return A vector of best matches from y based on the x input vector.
#' @export
#'
#' @examples
#' wrong_names<-c("Mogi das Cruses","Sao Paulo","CANTA GALLO")
#' correct_names<-c("Canta Galo","Mogi das Cruzes","São Paulo")
#' fuzzy_search(x=wrong_names,y=correct_names)


fuzzy_search<-function(x=NULL,y=NULL){

  if (is.null(x)){
    stop("You have a string vector for x and y")
  }

  if (is.null(y)){
    stop("You have a string vector for x and y")
  }

  x1 <-x %>%
    stringi::stri_trans_general("latin-ascii") %>%
    stringi::stri_trans_tolower() %>%
    stringi::stri_trim_both() %>%
    stringi::stri_replace_all_regex("\\s+","_")
  y1 <-y %>%
    stringi::stri_trans_general("latin-ascii") %>%
    stringi::stri_trans_tolower() %>%
    stringi::stri_trim_both() %>%
    stringi::stri_replace_all_regex("\\s+","_")

  purrr::map(x1,~{
    a<- stringdist::stringdist(.x,y1)
    b<-which.min(a)
    d<-y[b]
  }) %>%
    unlist()

}

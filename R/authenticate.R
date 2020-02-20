#' Authenticate with FactSet
#'
#' A wrapper function that makes it slightly
#' easier to authenticate with FactSet.
#'
#' @param username A FactSet serial number.
#' @param api_key A FactSet API key.
#' @return A FactSet API connection object.
#' @examples
#' fs_con <- fs_auth(username, api_key)
#' @seealso Visit \url{https://developer.factset.com/} to generate a key (FactSet license required).


# Authenticate

fs_auth <- function(username, api_key){

  factset.analyticsapi.engines::ApiClient$new(basePath = "https://api.factset.com",
                                              username = username,
                                              password = api_key)
}

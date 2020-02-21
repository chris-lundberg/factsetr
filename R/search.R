#' Search FactSet File System
#'
#' A wrapper function that makes it slightly
#' easier to authenticate with FactSet.
#'
#' @param con A FactSet serial number.
#' @param api_key A FactSet API key.
#' @return A FactSet API connection object.
#' @examples
#' fs_con <- fs_auth(username, api_key)
#' @seealso Visit \url{https://developer.factset.com/} to generate a key (FactSet license required).


# Authenticate

fs_search <- function(con, dir, type){


  if (type == "pa") {
    docs_con <- factset.analyticsapi.engines::DocumentsApi$new(con)

    docs <- docs_con$GetPA3Documents(dir)$documents %>%
      unlist() %>% tibble::as_tibble() %>%
      dplyr::transmute(pa_documents = value)

    return(docs)

  } else if (type == "spar") {
    print("SPAR not implemented yet")

  } else if (type == "dir") {
    print("Directory search not implemented yet")

  } else {
    print("Accounts not implemented yet")

  }
}

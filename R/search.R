#' FactSet Filesystem Search
#'
#' This function makes it easy to search your FactSet filesystem. It returns a tibble with the accounts, directories, or documents in the specified directory.
#'
#' @param con A FactSet connection object.
#' @param dir A directory in the FactSet filesystem associated with your serial number.
#' @param type The type of item you want to search for. Right now the options include accounts, directories, PA documents, or SPAR documents.
#' @return A tibble containing the accounts, documents, or directories within the specified directory.
#' @examples
#' fs_pa_docs <- fs_search(con, dir, type = "pa")
#' @seealso See \link{fs_auth} for authentication instructions.


# Authenticate

fs_search <- function(con, dir, type = c("pa", "spar", "dir", "accounts")){


  if (type == "pa") {
    docs_con <- factset.analyticsapi.engines::DocumentsApi$new(con)

    docs <- docs_con$GetPA3Documents(dir)$documents %>%
      unlist() %>% tibble::as_tibble() %>%
      dplyr::transmute(pa_documents = stringr::str_remove_all(value, '\"'))

    return(docs)

  } else if (type == "spar") {
    docs_con <- factset.analyticsapi.engines::DocumentsApi$new(con)

    docs <- docs_con$GetSPAR3Documents(dir)$documents %>%
      unlist() %>% tibble::as_tibble() %>%
      dplyr::transmute(spar_documents = stringr::str_remove_all(value, '\"'))

  } else if (type == "dir") {

    accounts_con <- factset.analyticsapi.engines::AccountsApi$new(con)

    accounts <- accounts_con$GetAccounts(dir)$directories %>%
      unlist() %>% tibble::as_tibble() %>%
      dplyr::transmute(directories = stringr::str_remove_all(value, '\"'))

  } else if (type == "accounts") {

    accounts_con <- factset.analyticsapi.engines::AccountsApi$new(con)

    accounts <- accounts_con$GetAccounts(dir)$accounts %>%
      unlist() %>% tibble::as_tibble() %>%
      dplyr::transmute(accounts = stringr::str_remove_all(value, '\"'))

  }
}

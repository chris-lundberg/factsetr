library(factset.analyticsapi.engines)

fs_auth <- function(username, api_key){

  factset.analyticsapi.engines::ApiClient$new(basePath = "https://api.factset.com",
                                              username = username,
                                              api_key = api_key)
}

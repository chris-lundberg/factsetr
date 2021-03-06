% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/authenticate.R
\name{fs_auth}
\alias{fs_auth}
\title{Authenticate with FactSet}
\usage{
fs_auth(username, api_key)
}
\arguments{
\item{username}{A FactSet serial number.}

\item{api_key}{A FactSet API key.}
}
\value{
A FactSet API connection object.
}
\description{
A wrapper function that makes it slightly
easier to authenticate with FactSet.
}
\examples{
fs_con <- fs_auth(username, api_key)
}
\seealso{
Visit \url{https://developer.factset.com/} to generate a key (FactSet license required).
}

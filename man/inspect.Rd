% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/inspect.R
\name{inspect}
\alias{inspect}
\title{Peek at a SPARQL query}
\usage{
inspect(.data)
}
\arguments{
\item{.data}{(list) input, using higher level interface}
}
\description{
Peek at a SPARQL query
}
\examples{
url <- "http://dbpedia.org/sparql"
sparql_dsl(url) \%>\% ask(s, p, o) \%>\% inspect
sparql_dsl(url) \%>\% select() \%>\% inspect
sparql_dsl(url) \%>\% where() \%>\% inspect
sparql_dsl(url) \%>\% prefix(dcterms = "http://purl.org/dc/terms/") \%>\% inspect
}

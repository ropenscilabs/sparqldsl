% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ask.R
\name{ask}
\alias{ask}
\alias{ask_}
\title{ASK}
\usage{
ask(.data, ...)

ask_(.data, ..., .dots)
}
\arguments{
\item{.data}{input. This can be JSON input, or an object of class
\code{sparql_dsl} that has JSON and query params combined, which is passed
from function to function when using the sparqldsl DSL.}

\item{...}{Comma separated list of unquoted variable names}

\item{.dots}{Used to work around non-standard evaluation}

\item{dots}{dots}
}
\description{
ASK
}
\examples{
\dontrun{
### should separate where from within ask, so ask() \%>\% where()
sparql_dsl("http://dbpedia.org/sparql") \%>\% ask(s, p, o)
}
}

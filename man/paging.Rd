% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/paging.R
\name{offset}
\alias{offset}
\alias{limit}
\title{Paging}
\usage{
offset(.data, offset = 0)

limit(.data, limit = 10)
}
\arguments{
\item{.data}{input. This can be JSON input, or an object of class
\code{sparql_dsl} that has JSON and query params combined, which is passed
from function to function when using the sparqldsl DSL.}

\item{offset}{(numeric|integer) an offset value}

\item{limit}{(numeric|integer) a limit value}
}
\description{
Paging
}

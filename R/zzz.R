cp <- function(x) Filter(Negate(is.null), x)

spqurl <- function() "http://dbpedia.org/sparql"

sparql_GET <- function(url, query, ...) {
  res <- httr::GET(url, query = list(query = query), ...)
  txt <- httr::content(res, "text", encoding = "UTF-8")
  jsonlite::fromJSON(txt)
}

try_qry <- function(x) {
  res <- tryCatch(x$query, error = function(e) e)
  if (inherits(res, "simpleError")) {
    list()
  } else {
    x$query
  }
}

comb <- function(x, y) {
  cp(do.call("c", list(x, list(y))))
}

# tryargs <- function(x) {
#   res <- tryCatch(x$args, error = function(e) e)
#   if (inherits(res, "simpleError")) {
#     list()
#   } else {
#     x$args
#   }
# }

combine_args <- function(x) {
  if (length(x) > 0) {
  paste(
    "?",
    vapply(x, function(z) deparse(z$expr), "", USE.NAMES = FALSE),
    sep = "",
    collapse = " "
  )
  } else {
    NULL
  }
}

`%||%` <- function(x, y) if (is.null(x)) y else x

make_query <- function(x) {
  paste(vapply(x, "[[", "", 1), collapse = "")
}
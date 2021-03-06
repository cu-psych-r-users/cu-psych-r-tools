% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/manip_strings.R
\name{str_locate_whichever}
\alias{str_locate_whichever}
\title{Locate the position of one of a series of patterns in a string.}
\usage{
str_locate_whichever(string, patterns)
}
\arguments{
\item{string}{Input vector. Either a character vector, or something
coercible to one.}

\item{patterns}{Patterns to look for, as a character vector. Each string in
the vector may be used as \code{pattern} would be in \code{\link[stringr]{str_locate}}.}
}
\value{
An integer matrix. First column gives start position of whichever pattern matched,
and second column gives end position.
}
\description{
Vectorized over \code{string}; compares each element of \code{string} to every element of \code{patterns}.
Expects that only one of the patterns provided will match the input string,
and returns the position of said match. If the match is of length 0,
(e.g. from a special match like $) end will be one character less than start.
If more than one of patterns provided match input string, returns position of first
matching element from patterns provided. Wraps \code{\link[stringr]{str_locate}} with \code{\link[purrr]{map}}.
}
\examples{
fruit <- c("apple", "banana", "pear", "pineapple")
str_locate_whichever(fruit, c("ap", "ba", "pe"))

}

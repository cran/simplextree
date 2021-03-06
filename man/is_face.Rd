% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/simplex_tree.R
\name{is_face}
\alias{is_face}
\title{Is face}
\usage{
is_face(st, tau, sigma)
}
\arguments{
\item{st}{a simplex tree.}

\item{tau}{a simplex which may contain \code{sigma} as a coface.}

\item{sigma}{a simplex which may contain \code{tau} as a face.}
}
\value{
boolean indicating whether \code{tau} is a face of \code{sigma}.
}
\description{
Checks whether a simplex is a face of another simplex and is in the complex.
}
\details{
A simplex \eqn{\tau} is a face of \eqn{\sigma} if \eqn{\tau \subset \sigma}. This function 
checks whether that is true. \code{tau} and \code{sigma} are sorted before comparison.
}
\examples{
st <- simplex_tree()
st \%>\% insert(1:3)
st \%>\% is_face(2:3, 1:3)
st \%>\% is_face(1:3, 2:3)
}
\seealso{
\href{https://en.cppreference.com/w/cpp/algorithm/includes}{std::includes}
}

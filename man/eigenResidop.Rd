% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/RcppExports.R
\name{eigenResidop}
\alias{eigenResidop}
\title{fast matrix residual operator using RcppEigen}
\usage{
eigenResidop(A, B)
}
\arguments{
\item{A}{a matrix}

\item{B}{a matrix}
}
\value{
The matrix product of
\deqn{A - B(B^t B)^{-1} B^t A}
}
\description{
fast matrix residual operator using RcppEigen
}
\examples{
Y = M = diag(1, 500)
system.time(scMerge::eigenResidop(Y, M))
system.time(ruv::residop(Y, M))
}

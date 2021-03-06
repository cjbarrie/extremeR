% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/fit.R
\name{fit}
\alias{fit}
\title{Function to estimate a Bayesian case-control model.}
\usage{
fit(
  data = data_sim,
  contamination = F,
  show_code = T,
  offset = F,
  beta_prior = "normal",
  small_area_prior = "fixed",
  large_area_prior = NA,
  intercept_scale = NA,
  iter = 100,
  warmup = 50,
  thin = 4,
  cores = 4,
  chains = 4,
  control = list(max_treedepth = 7, adapt_delta = 0.8),
  verbose = TRUE
)
}
\arguments{
\item{data}{list, survey and shapefile combined list object created with the data.prep() function.}

\item{contamination}{logical, should the model include the Rota et al. (2013) style contamination layer? Defaults to \code{TRUE}.}

\item{show_code}{logical, should the stan code print on the screen at the end of the run? Defaults to \code{TRUE}.}

\item{offset}{logical, should the model include a King and Zeng (2001) style offset ? if contamination is also specified, this will be a contaminated-offset. Defaults to \code{TRUE}.}

\item{beta_prior}{string, what prior should the regression coefficients have? Choice between: "normal" and "cauchy."}

\item{small_area_prior}{string, what should be the small-area effects type? Choice between: "fixed," "random," "ICAR," and "BYM2." Specify \code{NA} for no area effects. Defaults to "fixed.}

\item{large_area_prior}{string, what should be the large-area effects type? Choice between: "fixed" and "random." Specify \code{NA} for no area effects. Defaults to \code{NA}.}

\item{intercept_scale}{integer, scale of intercept; see \code{?stan} for further information.}

\item{iter}{integer, number of draws; see \code{?stan} for further information.}

\item{warmup}{number of warmup draws; see \code{?stan} for further information.}

\item{thin}{integer, number to thin draws; see \code{?stan} for further information.}

\item{cores}{integer, number of cores to use; see \code{?stan} for further information.}

\item{chains}{integer, number of chains; see \code{?stan} for further information.}

\item{control}{list; tree depth and adapt delta; see \code{?stan} for further information.}

\item{verbose}{logical, print full stan output? Defaults to \code{TRUE}.}
}
\value{

}
\description{
Function to estimate a Bayesian case-control model.
}

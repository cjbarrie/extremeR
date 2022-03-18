# Remotes ----
install.packages("remotes")
remotes::install_github('hrue/r-inla/rinla@stable')
# Attachments ----
to_install <- c("ape", "data.table", "dplyr", "geodist", "INLA", "magrittr", "MASS", "Matrix", "MatrixModels", "R2jags", "rstan", "sf", "SpatialEpi", "spdep")
  for (i in to_install) {
    message(paste("looking for ", i))
    if (!requireNamespace(i)) {
      message(paste("     installing", i))
      install.packages(i)
    }
  }


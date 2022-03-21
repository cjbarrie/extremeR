library(usethis)
# code to prepare datasets taken from `SpatialEpi`

library(SpatialEpi)
usethis::use_data(pennLC, overwrite = T)
usethis::use_data(scotland, overwrite = T)
usethis::use_data(NYleukemia, overwrite = T)

# code to prepare case-control data

## load individual-level training data
library(data.table)
library(dplyr)
library(sf)

individual.data_path <- 'data-raw/matchdata_isisegysc.csv'
survey = data.table::fread(file = individual.data_path)

survey_egypt <- survey %>%
  dplyr::select(coledu, age, married, student, lowstat,
         population_density, total_population_2006, christian_2006_pct, university_2006_pct,
         agriculture_2006_pct, mursi_vote_2012_pct, sqrt_killed_at_rabaa, unemployment_2013q4_pct,
         sqrt_protest_post_Mubarak, adm2_pcode)

usethis::use_data(survey_egypt, overwrite = T)

# load Egypt shape file
shapefile_path <- "data-raw/EGY_adm2.shp"
shape_egypt = sf::st_read(shapefile_path)
usethis::use_data(shape_egypt, overwrite = T)

# get denominators data for prevalence adjustment
denom_mena = data.table::fread(file = 'data-raw/mena_pops.csv')
usethis::use_data(denom_mena, overwrite = T)

library(sf)
library(tibble)

df_sf <- data.frame(
  a = 1,
  b = 2,
  geometry = "{\"type\": \"Polygon\", \"coordinates\": [[[-79.4359157087306, 43.6801533947749], [-79.4359157087306, 43.6801533947749]]]}"
)

df_sf[["geometry"]] <- st_as_sfc(df_sf[["geometry"]], GeoJSON = TRUE, crs = 4326)

# First convert to tibble, then save as object in package

df_sf_tibble <- as_tibble(df_sf)

df_sf_tibble

usethis::use_data(df_sf_tibble, overwrite = TRUE)

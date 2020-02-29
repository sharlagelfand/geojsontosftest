library(sf)

df_sf <- data.frame(
  a = 1,
  b = 2,
  geometry = "{\"type\": \"Polygon\", \"coordinates\": [[[-79.4359157087306, 43.6801533947749], [-79.4359157087306, 43.6801533947749]]]}"
)

df_sf

df_sf[["geometry"]] <- st_as_sfc(df_sf[["geometry"]], GeoJSON = TRUE, crs = 4326)

df_sf

# Save as an object in package
usethis::use_data(df_sf, overwrite = TRUE)

%let pgm=utl-drawing-a-world-map-using-the-eckert-projection-ggplot-map-rnaturalearth;

Drawing a world map using the eckert projection ggplot map

Output world map
https://tinyurl.com/2wmrhyfy
https://github.com/rogerjdeangelis/utl-drawing-a-world-map-using-the-eckert-projection-ggplot-map-rnaturalearth/blob/main/eckert.pdf


github
https://tinyurl.com/ytam3kuw
https://stackoverflow.com/questions/78750499/r-language-drawing-eckert-projection-conversion-many-horizontal-lines-appear-w

      1 self contained mapping
        https://stackoverflow.com/users/24949300/user24949300

      2 related repos

github
https://tinyurl.com/5abfczby
https://github.com/rogerjdeangelis/utl-drawing-a-world-map-using-the-eckert-projection-ggplot-map-rnaturalearth

/*            _  __                   _        _                _                               _
/ |  ___  ___| |/ _|   ___ ___  _ __ | |_ __ _(_)_ __   ___  __| |  _ __ ___   __ _ _ __  _ __ (_)_ __   __ _
| | / __|/ _ \ | |_   / __/ _ \| `_ \| __/ _` | | `_ \ / _ \/ _` | | `_ ` _ \ / _` | `_ \| `_ \| | `_ \ / _` |
| | \__ \  __/ |  _| | (_| (_) | | | | || (_| | | | | |  __/ (_| | | | | | | | (_| | |_) | |_) | | | | | (_| |
|_| |___/\___|_|_|    \___\___/|_| |_|\__\__,_|_|_| |_|\___|\__,_| |_| |_| |_|\__,_| .__/| .__/|_|_| |_|\__, |
                                                                                   |_|   |_|            |___/
*/
%utlfkil(d:/png/eckert.png);

%utl_rbeginx;
parmcards4;
library(sf)
library(ggplot2)
library(rnaturalearth)
library(dplyr)
# library(rnaturalearthdata)
# library(rnaturalearthdata) not needed for this reprex

world <- ne_countries(scale = "medium", returnclass = "sf",)
proj_params <- "+proj=eck4 +lon_0=181 +datum=WGS84"

world_eckert <- st_break_antimeridian(world, lon_0 = 181) |>
  st_transform(proj_params)
pdf("d:/pdf/eckert.pndf",width=10,height=8);
ggplot() +
  geom_sf(data = world_eckert, fill = "lightyellow", color = "black") +
  labs(title = "Eckert IV Projection World Map (Centered at 180 degrees)") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5))
pdf()
;;;;
%utl_rendx;

/*___             _       _           _
|___ \   _ __ ___| | __ _| |_ ___  __| |  _ __ ___ _ __   ___  ___
  __) | | `__/ _ \ |/ _` | __/ _ \/ _` | | `__/ _ \ `_ \ / _ \/ __|
 / __/  | | |  __/ | (_| | ||  __/ (_| | | | |  __/ |_) | (_) \__ \
|_____| |_|  \___|_|\__,_|\__\___|\__,_| |_|  \___| .__/ \___/|___/
                                                  |_|
*/

https://github.com/rogerjdeangelis/utl-ascii-line-maps-of-the-usa-and-each-state
https://github.com/rogerjdeangelis/utl-add-points-to-a-map-of-slovakia
https://github.com/rogerjdeangelis/utl-ascii-art-outline-maps-of-states-and-countries-AI
https://github.com/rogerjdeangelis/utl-creating-zipcode-zcta-choropleth-maps-in-R-and-SAS
https://github.com/rogerjdeangelis/utl-gis-census-zipcode-maps-no-credit-card-api-or-restrictions-wps-r-tmap
https://github.com/rogerjdeangelis/utl-gis-mapping-with-r-package-rnaturalearth-no-api-credit-card-or-access-limits-
https://github.com/rogerjdeangelis/utl-given-latitude-and-longitude-determine-the-us-state-mapping
https://github.com/rogerjdeangelis/utl-usmap-drilldown
https://github.com/rogerjdeangelis/utl_driving_distance_from_city_to_city_using_google_maps
https://github.com/rogerjdeangelis/utl_google_and_SAS_maps
https://github.com/rogerjdeangelis/utl_google_map_of_USA_with_long_and_lat_and_earnings
https://github.com/rogerjdeangelis/utl_google_map_of_earnings_for_canada_cities
https://github.com/rogerjdeangelis/utl_graphics_zipcode_boundary_maps
https://github.com/rogerjdeangelis/utl_javascript_and_classic_map_graphics_with_mouseovers_and_multiple_drilldowns
https://github.com/rogerjdeangelis/utl_map_counties_within_one_state_choropleth_map
https://github.com/rogerjdeangelis/utl_proc_gmap_classic_graphics_grid_containing_four_states
https://github.com/rogerjdeangelis/utl_where_am_i_show_the_street_or_satelite_map
https://github.com/rogerjdeangelis/utl-free-unlimited-geocoding-reverse-geocoding-wps-aprox-I41-million-addresses-with-gps
https://github.com/rogerjdeangelis/utl-gis-download-all-the-census_2023-tiger-line-files
https://github.com/rogerjdeangelis/utl-openaddress-database-to-sas-wps-tables-for-geocoding-and-reverse-geocoding
https://github.com/rogerjdeangelis/utl_geocode_reverse_geocode
https://github.com/rogerjdeangelis/utl_geocode_and_reverse_geocode_netherland_addresses_and_latitudes_longitudes
https://github.com/rogerjdeangelis/utl-free-unlimited-geocoding-reverse-geocoding-wps-aprox-I41-million-addresses-with-gps
https://github.com/rogerjdeangelis/utl-given-a-list-of-messy-addresses-geocode-and-reverse-geocode-using-us-address-database
https://github.com/rogerjdeangelis/utl-standardize-address-suffix-using-usps-abreviations
https://github.com/rogerjdeangelis/utl_US_address-standardization

/*              _
  ___ _ __   __| |
 / _ \ `_ \ / _` |
|  __/ | | | (_| |
 \___|_| |_|\__,_|

*/


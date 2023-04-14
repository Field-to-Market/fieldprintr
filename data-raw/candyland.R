library(fieldprintr)

candyland <-read_ftm_cd(
    "data-raw/12-09-2022-1234_Comprehensive_Data_Candyland_Farms.xlsx")

usethis::use_data(candyland, overwrite = TRUE)

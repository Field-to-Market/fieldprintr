# Import raw CD file
raw_cd <- read_ftm_cd("12-09-2022-1234_Comprehensive_Data_Candyland_Farms.xlsx")

test_that("import makes tibble", {
   expect_s3_class(raw_cd, c("tbl_df", "tbl", "data.frame"))
})

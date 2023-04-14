#' @title read_ftm_cd
#' @description
#' This wrapper function standardizes the import of the Comprehensive Data (CD)
#' output file, a file that is exported from the Field to Market Fieldprint
#' Platform as an Excel .xlsx file.
#'
#' @param file .xlsx comprehensive data output file as exported from Fieldprint
#' @param sheet the sheet of the .xlsx file to read (default = "Report Data")
#'
#' @details
#' The original name of an .xlsx CD file may be formatted like
#' "MM-DD-YYYY-####_Comprehensive_Data_My_Farm.xlsx". Regardless,
#' the read_ftm_cd() function looks for the sheet "Report Data", as exported
#' from the Fieldprint Platform.
#'
#' @return tidy data.frame (tibble)
#' @export
#'
#' @importFrom janitor clean_names
#' @importFrom readxl read_xlsx
#'
#' @examples
#' \dontrun{
#' raw_cd <- read_ftm_cd("data-raw/12-09-2022-1234_Comprehensive_Data_Candyland_Farms.xlsx")
#' }

read_ftm_cd <- function(file, sheet = "Report Data"){
    output_df <-
        readxl::read_xlsx(file, sheet) |>
        janitor::clean_names()

    return(output_df)
}

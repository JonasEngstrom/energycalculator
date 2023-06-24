#' Reference Values for Energy Intake
#'
#' Reference values for energy intakes in groups of adults with sedentary and active lifestyles according to the Nordic Nutrition Recommendations 2023.
#'
#' @format ## `energy_intake`
#' A data frame with 24 rows and 4 columns:
#' \describe{
#'   \item{female}{Logical. Whether reference is for females.}
#'   \item{low_age}{Integer. Low boundary for age interval for which reference is valid.}
#'   \item{activity}{Ordered. Activity level sedentary corresponds to PAL 1.4, average to PAL 1.6, and active to PAL 1.8.}
#'   \item{mj_per_day}{Double. Reference value for energy intake in megajoules per day.}
#' }
#'
#' @md
#'
#' @source <https://pub.norden.org/nord2023-003>
"energy_intake"

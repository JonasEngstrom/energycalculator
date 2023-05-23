#' Calculate Lean Body Weight
#'
#' Calculates lean body weight in kilograms according to Janmahasatian.
#'
#' @param height Height in meters.
#' @param weight Weight in kilograms.
#' @param female Boolean indicating female sex.
#'
#' @return A number of kilograms.
#' @export
#'
#' @examples
#' lbw(1.81, 71.2, female = FALSE)
lbw <- function(height, weight, female = TRUE) {
  9270 * weight / (6680 + 2100 * female + ((216 + 28 * female) * bmi(height, weight)))
}

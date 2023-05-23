#' Calculate Adjusted Body Weight
#'
#' Calculates adjusted body weight.
#'
#' @param height Height in meters.
#' @param weight Weight in kilograms.
#' @param female Boolean indicating female sex.
#' @param formula Formula to use for calculating ideal body weight, see documentation for [energycalculator::ibw()] for options
#'
#' @seealso [energycalculator::ibw()]
#'
#' @return A number of kilograms.
#' @export
#'
#' @md
#'
#' @examples
#' abw(1.81, 71.2, female = FALSE, formula = 'Hawmi')
abw <- function(height, weight, female = TRUE, formula = 'Broca') {
  ibw <- ibw(height, female, formula)
  ibw + 0.4 * (weight - ibw)
}

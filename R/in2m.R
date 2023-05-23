#' Convert Inches to Meters
#'
#' Converts inches to meters as per the international yard defined in 1959.
#'
#' @param inches A number of inches.
#'
#' @return A number of meters.
#' @export
#'
#' @examples
#' in2m(12)
in2m <- function(inches) {
  inches * 0.0254
}

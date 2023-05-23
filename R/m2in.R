#' Convert Meters to Inches
#'
#' Converts meters to inches as per the international yard defined in 1959.
#'
#' @param meters A number of meters.
#'
#' @return A number of inches.
#' @export
#'
#' @examples
#' m2in(12)
m2in <- function(meters) {
  meters / 0.0254
}

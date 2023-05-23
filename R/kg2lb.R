#' Convert Kilograms to Pounds
#'
#' Converts a value in kilograms to an exact value of international avoirdupois
#' pounds as defined in 1959.
#'
#' @param kilograms A number of kilograms.
#'
#' @return A number of pounds.
#' @export
#'
#' @examples
#' kg2lb(71)
kg2lb <- function(kilograms) {
  kilograms / 0.45359237
}

#' Convert Pounds to Kilograms
#'
#' Converts a value in international avoirdupois pounds as defined in 1959 to an exact value of kilograms.
#'
#' @param pounds A number of pounds.
#'
#' @return A number of kilograms.
#' @export
#'
#' @examples
#' lb2kg(156)
lb2kg <- function(pounds) {
  pounds * 0.45359237
}

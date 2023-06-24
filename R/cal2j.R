#' Convert Calories to Joules
#'
#' Converts thermochemical calories to Joules.
#'
#' @param calories A number of calories.
#'
#' @return A number of Joules.
#' @export
#'
#' @examples
#' cal2j(11*10^6)
cal2j <- function(calories) {
  calories * 4.184
}

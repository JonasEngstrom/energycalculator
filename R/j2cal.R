#' Convert Joules to Calories
#'
#' Converts Joules to thermochemical calories.
#'
#' @param joules A number of Joules.
#'
#' @return A number of calories.
#' @export
#'
#' @examples
#' j2cal(11*10^6)
j2cal <- function(joules) {
  joules / 4.184
}

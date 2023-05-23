#' Calculate Body Mass Index
#'
#' Calculate [body mass index according to the World Health
#' Organization](https://www.who.int/europe/news-room/fact-sheets/item/a-healthy-lifestyle---who-recommendations)
#' from height and weight.
#'
#' @param height Height in meters.
#' @param weight Weight in kilograms.
#'
#' @return Body mass index in kg per square meter.
#' @export
#'
#' @md
#'
#' @examples
#' bmi(1.81, 90.5)
bmi <- function(height, weight) {
  weight / height ^ 2
}

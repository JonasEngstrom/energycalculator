#' Calculate Body Mass Index Weight Limits
#'
#' Calculate the lower weight limits of body mass index categories based on body height in meters.
#'
#' @param height Body height in meters.
#'
#' @return A tibble with lower weight limits for each body mass index category.
#' @export
#'
#' @examples
#' bmi_limits(1.65)
bmi_limits <- function(height) {
  tibble::tibble(
    bmi_category = c(
      'Underweight',
      'Normal weight',
      'Pre-obesity',
      'Obesity class I',
      'Obesity class II',
      'Obesity class III'
    ),
    weight = c(
      0,
      18.5,
      25,
      30,
      35,
      40
    ) * height ^ 2
  )
}

#' Print BMI Category
#'
#' Prints the [weight category according to the World Health
#' Organization](https://www.who.int/europe/news-room/fact-sheets/item/a-healthy-lifestyle---who-recommendations)
#' for a given body mass index.
#'
#' @param bmi A body mass index.
#'
#' @return A string containing the body mass index’s weight category.
#' @export
#'
#' @md
#'
#' @examples
#' bmi_category(21.7)
bmi_category <- function(bmi) {
  dplyr::case_when(
    bmi < 18.5 ~ 'Underweight',
    bmi < 25 ~ 'Normal weight',
    bmi < 30 ~ 'Pre-obesity',
    bmi < 35 ~ 'Obesity class I',
    bmi < 40 ~ 'Obesity class II',
    bmi >= 40 ~ 'Obesity class III'
  )
}

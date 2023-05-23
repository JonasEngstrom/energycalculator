#' Calculate Ideal Body Weight
#'
#' Calculate the ideal body weight based on height and sex, using one of the following formulas:
#'
#' * Broca, 1871
#' * Hamwi, 1964 (without consideration for frame size)
#' * Devine, 1974
#' * Robinson, 1983
#' * Miller, 1983
#' * Hammond, 2000
#' * Lemmens, 2005
#' * Deitel, 2003 (without consideration for frame size)
#'
#' @param height Height in meters.
#' @param female Boolean indicating female sex.
#' @param formula The formula to use for calculations, se documentation for available options.
#'
#' @return A value in kilograms.
#' @export
#'
#' @md
#'
#' @examples
#' ibw(1.65)
ibw <- function(height, female = TRUE, formula = 'Broca') {
  kilograms <-
    dplyr::case_when(
      formula == 'Broca' ~ height * 100 - 100 - 5 * female,
      formula == 'Hawmi' ~ (106 - 6 * female + ifelse(m2in(height) > 60, m2in(height) - 60, 0) * (6 - female)) |> lb2kg(),
      formula == 'Devine' ~ 50 - 4.5 * female + 2.3 * ifelse(m2in(height) > 60, m2in(height) - 60, 0),
      formula == 'Robinson' ~ 52 - 3 * female + (1.9 - 0.2 * female) * ifelse(m2in(height) > 60, m2in(height) - 60, 0),
      formula == 'Miller' ~ 56.2 - 3.1 * female + (1.41 - 0.05 * female) * ifelse(m2in(height) > 60, m2in(height) - 60, 0),
      formula == 'Hammond' ~ 48 - 3 * female + (1.1 - 0.2 * female) * ifelse(height > 1.5, height - 1.5, 0) * 100,
      formula == 'Lemmens' ~ 22 * height ^ 2,
      formula == 'Deitel' ~ (135 - 19 * female + (ifelse(m2in(height) > 63, m2in(height) - 63, 0) + 3 * female) * 3) |> lb2kg(),
      .default = NA
      )

  # Throw error if non-existant formula has been specified in parameters.
  if (kilograms |> is.na()) {
    stop('Incorrect formula selection. See documentation on ibw() for available options.')
  } else {
    kilograms
  }
}

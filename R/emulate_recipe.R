#' Emulate Recipe
#'
#' Gives the user the ability to calculate the nutrtional values of a recipe
#' without writing it to the database. Accepts a list of key-value pairs
#' specifiying the number of grams of a `food_number` from a database imported
#' by `get_database_ingredients()` (e.g. `c('sfa1' = 150, 'sfa17' = 37)`) as
#' input and outputs a list of nutritional values per ingredients and a row of
#' totals. A list of ingredients imported from the database must also be
#' provided.
#'
#' @param recipe_ingredient_list A list of ingredients to include in the recipe
#'   in the format of a list of key-value pairs (e.g. `c('sfa1' = 150, 'sfa17' =
#'   37)`) and the number of grams of each ingredient in the recipe.
#' @param global_ingredient_list A list of all available ingredients imported by
#'   `get_database_ingredients()`.
#'
#' @return A list of nutritional values by ingredient and a row of totals at the
#'   end.
#' @export
#'
#' @seealso [energycalculator::get_database_ingredients()]
#'
#' @md
emulate_recipe <- function(recipe_ingredient_list, global_ingredient_list) {
  NULL ->
    food_number ->
    food_name

  return_list <-
    global_ingredient_list |>
    dplyr::filter(food_number == 0)

  for (ingredient in names(recipe_ingredient_list)) {
    return_list <-
      return_list |>
      dplyr::bind_rows(
        global_ingredient_list |>
          dplyr::filter(food_number == ingredient) |>
          dplyr::mutate(
            dplyr::across(
              dplyr::where(is.numeric),
              ~ . / 100 * recipe_ingredient_list[ingredient]
            )
          )
      )
  }

  return_list <-
    tibble::tibble(
      food_number = names(recipe_ingredient_list),
      grams = recipe_ingredient_list
    ) |>
    dplyr::full_join(
      return_list,
      by = 'food_number'
    ) |>
    dplyr::bind_rows(
      return_list |>
        dplyr::summarise(
          dplyr::across(
            dplyr::where(is.numeric),
            sum
          )
        )
    )

  return(return_list)
}

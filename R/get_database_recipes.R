#' Get Database Recipes
#'
#' Imports nutrition facts for recipes in a database formatted ad modum
#' [food_database_scripts](https://github.com/JonasEngstrom/food_database_scripts).
#'
#' @param database_path File path to database.
#'
#' @return A tibble of nutrition facts.
#' @export
#'
#' @md
get_database_recipes <- function(database_path) {
  nutrition_database <-
    DBI::dbConnect(RSQLite::SQLite(), database_path)

  recipe_tibble <-
    nutrition_database |>
    dplyr::tbl('VIEW_recipe_nutrition') |>
    dplyr::collect()

  DBI::dbDisconnect(nutrition_database)

  return(recipe_tibble)
}

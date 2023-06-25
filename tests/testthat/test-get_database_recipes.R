test_that("get_database_recipes returns expected query", {
  testthat::test_path() |>
    file.path('testdata', 'test_database.db') |>
    get_database_recipes() |>
    dplyr::filter(recipe_id == 1) |>
    expect_equal(
      tibble::tibble(
        recipe_id = 1,
        recipe_name = 'MISSING DATA',
        energy_kcal = 552.87,
        fat_total_g = 7.34,
        sum_saturated_fatty_acids_g = 3.41,
        carbohydrates_available_g = 106.68,
        sugars_total_g = 78.75,
        protein_g = 9.22,
        sodium_chloride_g = 6.09
      )
    )
})

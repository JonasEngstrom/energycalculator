test_that("get_database_recipes returns expected query", {
  testthat::test_path() |>
    file.path('testdata', 'test_database.db') |>
    get_database_ingredients() |>
    dplyr::filter(food_number == 'sfa3') |>
    expect_equal(
      tibble::tibble(
        food_name = 'Gris ister',
        food_number = 'sfa3',
        energy_kcal = 884,
        fat_total_g = 100,
        sum_saturated_fatty_acids_g = 48.8,
        carbohydrates_available_g = 0,
        sugars_total_g = 0,
        protein_g = 0,
        sodium_chloride_g = 0
      )
    )
})

test_that("emulate_recipe returns expected tibble", {
  correct_tibble <-
    tibble::tibble(
      food_number = c('sfa1', 'sfa17', NA),
      grams = c(150, 37, NA),
      food_name = c('Nöt talg', 'Lättmargarin fett 38% berikad typ Becel', NA),
      energy_kcal = c(984, 128.76, 1112.76),
      fat_total_g = c(106.5, 14.06, 120.56),
      sum_saturated_fatty_acids_g = c(53.7, 2.96, 56.66),
      carbohydrates_available_g = c(0, 1.11, 1.11),
      sugars_total_g = c(0, 0, 0),
      protein_g = c(10.5, 0, 10.5),
      sodium_chloride_g = c(0, 0.444, 0.444)
    )

  for (name in names(correct_tibble)) {
    names(correct_tibble[[name]]) = c('sfa1', 'sfa17', '')
  }

  names(correct_tibble$food_name) <- NULL
  names(correct_tibble$food_number) <- NULL

  db_ingreds <-
    testthat::test_path() |>
    file.path('testdata', 'test_database.db') |>
    get_database_ingredients()

  test_tibble <-
    c('sfa1' = 150, 'sfa17' = 37) |>
    emulate_recipe(db_ingreds)

  test_tibble |>
    expect_equal(correct_tibble)
})

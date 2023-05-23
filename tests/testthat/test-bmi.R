test_that("bmi calculation works", {
  expect_equal(bmi(1.81, 71) |> round(2), 21.67)
})

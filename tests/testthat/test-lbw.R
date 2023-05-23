test_that("lbw calculates correct value for women", {
  expect_equal(lbw(1.65, 78) |> round(2), 45.85)
})

test_that("lbw calculates correct value for men", {
  expect_equal(lbw(1.81, 71.2, female = FALSE) |> round(2), 58.03)
})

test_that("lb2kg converts correctly from pounds to kilograms", {
  expect_equal(lb2kg(156) |> round(2), 70.76)
})


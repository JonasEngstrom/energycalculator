test_that("kg2lb converts correctly from kilograms to pounds", {
  expect_equal(kg2lb(71) |> round(2), 156.53)
})

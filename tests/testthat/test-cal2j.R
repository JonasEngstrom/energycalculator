test_that("cal2j converts correctly", {
  (cal2j(2629*10^3)/10^6) |>
    round(0) |>
    expect_equal(11)
})

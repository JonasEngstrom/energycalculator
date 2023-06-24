test_that("j2cal converts correctly", {
  (j2cal(11*10^6) / 1000) |>
    round(0) |>
    expect_equal(2629)
})

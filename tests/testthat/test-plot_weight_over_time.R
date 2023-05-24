test_that("plot_weight_over_time does not throw an error", {
  expect_no_error(
    tibble::tibble(
      date=c(
        as.POSIXct('2016-01-04'),
        as.POSIXct('2020-06-07')
      ),
      weight = c(
        75,
        72
      )
    ) |> plot_weight_over_time(1.81)
  )
})

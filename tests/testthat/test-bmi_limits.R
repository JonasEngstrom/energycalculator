test_that("bmi_limits returns correct weight values", {
  expect_equal(
    bmi_limits(1.65),
    tibble::tibble(
      bmi_category = c(
        'Underweight',
        'Normal weight',
        'Pre-obesity',
        'Obesity class I',
        'Obesity class II',
        'Obesity class III'
      ),
      weight = c(
        0,
        50.36625,
        68.0625,
        81.675,
        95.2875,
        108.9
      )
    )
  )
})

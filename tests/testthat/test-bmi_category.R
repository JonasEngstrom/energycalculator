test_that("bmi_catgory yields correct underweight response", {
  expect_equal(bmi_category(16), 'Underweight')
})

test_that("bmi_catgory yields correct normal weight response", {
  expect_equal(bmi_category(19), 'Normal weight')
})

test_that("bmi_catgory yields correct pre-obesity response", {
  expect_equal(bmi_category(26), 'Pre-obesity')
})

test_that("bmi_catgory yields correct obesity class I response", {
  expect_equal(bmi_category(31), 'Obesity class I')
})

test_that("bmi_catgory yields correct obesity class II response", {
  expect_equal(bmi_category(37), 'Obesity class II')
})

test_that("bmi_catgory yields correct obesity class III response", {
  expect_equal(bmi_category(48), 'Obesity class III')
})

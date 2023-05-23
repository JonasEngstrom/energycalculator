test_that("ibw throws an error if an incorrect forumla choice is made", {
  expect_error(ibw(1.65, formula = 'Fake formula'))
})

test_that("using Broca’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Broca'), 60)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Broca'), 81)
})

test_that("using Hawmi’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Hawmi') |> round(2), 56.61)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Hawmi') |> round(2), 78.73)
})

test_that("using Devines’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Devine') |> round(2), 56.91)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Devine') |> round(2), 75.9)
})

test_that("using Robinsons’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Robinson') |> round(2), 57.43)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Robinson') |> round(2), 73.39)
})

test_that("using Miller’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Miller') |> round(2), 59.85)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Miller') |> round(2), 72.08)
})

test_that("using Hammond’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Hammond') |> round(2), 58.5)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Hammond') |> round(2), 82.1)
})

test_that("using Lemmens’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Lemmens') |> round(2), 59.89)
})

test_that("using Deitel’s forumal in ibw works", {
  expect_equal(ibw(1.65, formula = 'Deitel') |> round(2), 59.37)
  expect_equal(ibw(1.81, female = FALSE, formula = 'Deitel') |> round(2), 72.47)
})

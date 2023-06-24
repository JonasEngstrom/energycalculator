## code to prepare `energy_intake` dataset goes here

energy_intake <-
  tibble::tibble(
    female = c(
      rep(TRUE, 4*3),
      rep(FALSE, 4*3)
    ),
    low_age = rep(
      c(
        rep(18, 3),
        rep(25, 3),
        rep(51, 3),
        rep(70, 3)
      ),
      2
    ),
    activity = rep(c('sedentary', 'average', 'active'), 8),
    mj_per_day = c(
      8.3,
      9.4,
      10.6,
      8,
      9.0,
      10.2,
      7.2,
      8.3,
      9.3,
      7.1,
      8.2,
      9.2,
      10.4,
      11.8,
      13.2,
      9.9,
      11.3,
      12.7,
      9,
      10.3,
      11.6,
      8.8,
      10.1,
      11.3
    )
  ) |>
  dplyr::mutate(
    across(low_age, as.integer),
    across(
      activity,
      ~ ordered(., levels = c('sedentary', 'average', 'active'))
    )
  )

usethis::use_data(energy_intake, overwrite = TRUE)

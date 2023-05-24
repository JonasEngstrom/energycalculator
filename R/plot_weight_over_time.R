#' Plot Weight Over Time
#'
#' Plots weight over time on a background divided [according to World Health Organization body mass index classes](https://www.who.int/europe/news-room/fact-sheets/item/a-healthy-lifestyle---who-recommendations).
#'
#' @param weight_tibble A tibble with two columns named *date* and *weight*, the former formatted as `POSIXct` and the latter as `double`.
#' @param height A body height in meters.
#'
#' @return A ggplot2.
#' @export
#'
#' @md
#'
#' @examples
#' tibble::tibble(
#'   date=c(
#'     as.POSIXct('2016-01-04'),
#'     as.POSIXct('2020-06-07')
#'   ),
#'   weight = c(
#'     75,
#'     72
#'   )
#'  ) |> plot_weight_over_time(1.81)
plot_weight_over_time <- function(weight_tibble, height) {
  weight <- NULL

  bmi_limits <- bmi_limits(height)

  weight_tibble |>
    ggplot2::ggplot(ggplot2::aes(x = date, y = weight)) +
    ggplot2::geom_rect(ymin = -Inf, ymax = bmi_limits$weight[2], xmin = -Inf, xmax = Inf, fill = '#FF000040') +
    ggplot2::geom_rect(ymin = bmi_limits$weight[2], ymax = bmi_limits$weight[3], xmin = -Inf, xmax = Inf, fill = '#00FF0040') +
    ggplot2::geom_rect(ymin = bmi_limits$weight[3], ymax = bmi_limits$weight[4], xmin = -Inf, xmax = Inf, fill = '#FF000040') +
    ggplot2::geom_rect(ymin = bmi_limits$weight[4], ymax = bmi_limits$weight[5], xmin = -Inf, xmax = Inf, fill = '#C0000040') +
    ggplot2::geom_rect(ymin = bmi_limits$weight[5], ymax = bmi_limits$weight[6], xmin = -Inf, xmax = Inf, fill = '#80000040') +
    ggplot2::geom_rect(ymin = bmi_limits$weight[6], ymax = Inf, xmin = -Inf, xmax = Inf, fill = '#40000040') +
    ggplot2::xlab('Date') +
    ggplot2::labs(
      title = 'Weight Over Time'
    ) +
    ggplot2::scale_y_continuous(
      name = 'Weight (kg)',
      limits = c(
        min(14.5 * height ^ 2, min(weight_tibble$weight) - height ^ 2),
        max(max(44 * height ^ 2, max(weight_tibble$weight) + height ^ 2))
      ),
      sec.axis = ggplot2::sec_axis(
        trans = ~ .,
        breaks = height ^ 2 * c(16, 21.75, 27.5, 32.5, 37.5, 42.5),
        labels = bmi_limits$bmi_category
      )
    ) +
    ggplot2::geom_hline(
      yintercept = 21.75 * height ^ 2,
      linetype = 'dotted',
      alpha = .5
    ) +
    ggplot2::geom_line()
}

#' Re-scale a numeric vector to a new target range
#'
#' This function re-scales a numeric vector with at least 2 items to a new
#' vector with the same length but different, designated target range.
#'
#' @param x A numeric vector to be re-scaled; items cannot all be the same number.
#' @param y A numeric vector of length 2, indicating the min and max of the
#'   target range, respectively. The default is `c(0, 1)`.
#' @param na.rm A logical parameter indicating if `NA` values should be removed.
#'   The default is `TRUE`.
#'
#' @return A numeric vector of the same length as `x`, with values scaled
#'   according to the range provided in `y`.
#'
#' @examples
#' rescale_min_max(c(10, 25, 40, 58))
#' rescale_min_max(c(2, NA, 7, 11, 50), y = c(0, 100))
#'
#' @export
rescale_min_max <- function(x, y = c(0, 1), na.rm = TRUE) {
  stopifnot(is.numeric(x), is.numeric(y), length(y) == 2, y[1] < y[2])
  rng <- range(x, na.rm = na.rm)
  if (rng[1] == rng[2]) stop("Cannot rescale a constant number")
  (x - rng[1]) / (rng[2] - rng[1]) * (y[2] - y[1]) + y[1]
}

#' @export
rescale_min_max <- function(x, y = c(0, 1), na.rm = TRUE) {
  stopifnot(is.numeric(x), is.numeric(y), length(y) == 2, y[1] < y[2])
  rng <- range(x, na.rm = na.rm)
  if (rng[1] == rng[2]) stop("Cannot rescale a constant number")
  (x - rng[1]) / (rng[2] - rng[1]) * (y[2] - y[1]) + y[1]
}

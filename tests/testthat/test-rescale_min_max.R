test_that("rescale_min_max works correctly across all ranges", {
  # default to [0, 1]
  expect_equal(
    rescale_min_max(c(10, 20, 30)),
    c(0, 0.5, 1)
  )

  # negative endpoints -- y[1], y[2]
  expect_equal(
    rescale_min_max(c(0, 5, 10), y = c(-1, 1)),
    c(-1, 0, 1)
  )

  # handling NA
  expect_equal(
    rescale_min_max(c(1, NA, 3), na.rm = TRUE),
    c(0, NA, 1)
  )
})

test_that("rescale_min_max outputs errors correctly", {
  # error on non-numeric x
  expect_error(
    rescale_min_max(c("a", "b", "c")),
    class = "error"
  )

  # error on constant vector (same numbers)
  expect_error(
    rescale_min_max(c(7, 7, 7)),
    "Cannot rescale a constant number"
  )

  # error when target bounds in y are inverted
  expect_error(
    rescale_min_max(c(1, 2, 3), y = c(5, 1)),
    class = "error"
  )
})

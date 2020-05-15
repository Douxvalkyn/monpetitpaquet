test_that("fix_missing fonctionne", {
  vec <- c(1, 2, 3)
  liste <- list(1, 2, 3)

  expect_identical(fix_missing(vec, 2), c(1, NA, 3))
  expect_identical(fix_missing(liste, 2), list(1, NA, 3))

  expect_identical(fix_missing(vec, 4), vec)
  expect_identical(fix_missing(liste, 4), liste)

  #expect_vector(fix_missing(vec, 1), ptype = numeric(), size = 3)
  expect_length(fix_missing(liste, 1), 3)
})

test_that("na.value doit être de longueur 1", {
  data <- c(18, 25, -99, -98, 37, 52)

  expect_error(fix_missing(data, c(-98, -99)))
})

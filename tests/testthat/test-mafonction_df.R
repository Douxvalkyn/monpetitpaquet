test_that("x doit être un data.frame", {
  data <- c(1, 2, 3)
  expect_error(fix_missing_df(data, 1))
})

test_that("fix_missing_df fonctionne", {
  df <- data.frame(
    entier = c(1L, 2L, -99L),
    reel = c(1, 2, -99),
    caracteres = c("1", "2", "-99"),
    facteur = factor(c("1", "2", "-99")),
    stringsAsFactors = FALSE
  )

  expected_df <- data.frame(
    entier = c(1L, 2L, NA),
    reel = c(1, 2, NA),
    caracteres = c("1", "2", NA),
    facteur = factor(c("1", "2", NA)),
    stringsAsFactors = FALSE
  )

  expect_identical(fix_missing_df(df, -99), expected_df)
})

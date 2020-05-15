#' @importFrom purrr map
NULL

#' Recode une valeur en valeur manquante dans un data frame
#'
#' La fonction `fix_missing_df()` permet de recoder une valeur
#' manquante dans l'ensemble d'un `data.frame`.
#'
#' @param x Un `data.frame`.
#' @inheritParams fix_missing
#'
#' @return Un objet de classe `data.frame`.
#' @encoding UTF-8
#' @export
#' @examples
#' df <- data.frame(a = c(12, 23, -99),
#'                  b = c(-99, 45, 56))
#' fix_missing_df(df, -99)
fix_missing_df <- function(x, na.value) {
  stopifnot(inherits(x, "data.frame"))

  x[] <- purrr::map(x, fix_missing, na.value = na.value)
  x
}

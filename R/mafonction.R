#' titre
#'
#' @param x
#' @param na.value
#'
#' @return
#' @export
#'
#' @examples
fix_missing <- function(x, na.value) {
  x[x == na.value] <- NA
  x
}
usethis::edit_r_environ("user")

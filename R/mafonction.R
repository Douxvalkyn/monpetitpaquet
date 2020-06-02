#' Recode une valeur en valeur manquante
#'
#' Cette fonction permet de recoder une valeur déclarée par l'utilisateur en
#' valeur manquante (`NA`).
#'
#' @param x Un vecteur ou une liste.
#' @param na.value La valeur que l'on souhaite recoder en valeur manquante (`NA`).
#'
#' @return Un vecteur si `x` est un vecteur, une liste si `x` est une liste. La
#'     longueur de l'objet renvoyé est identique à la longueur de `x`.
#' @encoding UTF-8
#' @export
#'
#' @examples
#' data <- c(10, 20, -99)
#' fix_missing(data, -99)
fix_missing <- function(x, na.value) {
  stopifnot(
    is.vector(na.value),
    identical(length(na.value), 1L)
  )

  if (is.factor(x)) {
    return(factor(x, exclude = na.value))
  }

  x[x == na.value] <- NA
  x
}

# passage de gitlab à github

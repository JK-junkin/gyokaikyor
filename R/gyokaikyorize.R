#'
#'
#' @return
#'
#' @examples
#' @export
gyokaikyorize <- function(df, species) {
  class(df) <- append(class(df), species)
  UseMethod("gyokaikyorize")
}

#' Format and wrangle catch data to fit business requirements
#'
#' @param df a data frame to be processed
#' @param species species name. Only supported with 'maaji' for now.
#'
#' @return formatted data.frame
#'
#' @examples
#' \dontrun{
#' gyokaikyorize(df = data.frame())
#' }
#' @export
gyokaikyorize <- function(df, species = NULL) {
  if (is.null(species) || length(species) == 0) {
    stop("Specify `species` such as 'maaji', 'maiwashi', 'masaba', etc..")
  }

  if (!requireNamespace("stockdbr", quietly = T)) {
    stop(
      paste("R pkg `stockdbr` will be needed if `df` is missing.",
            "Please install it from GitHub.",
            "remotes::install_github(JK-junkin/stockdbr)"),
      call. = F)
  }

  if (missing(df)) {
    message("stockdbr::load_catch() loaded catch database automatically.")
    df <- stockdbr::load_catch()
  } else {
    df
  }

  class(df) <- append(class(df), species)
  UseMethod("gyokaikyorize", df)
}

#' @export
gyokaikyorize.default <- function(df, species = NULL) {
  if (species != "maaji") {
    stop("Argument `species` only supports 'maaji' for now.")
  }
}

#' @param df a data frame
#' @param species 'maaji'
#' @export
gyokaikyorize.maaji <- function(df, species) {
  if (missing(df)) df <- stockdbr::load_catch() else df

  df %>%
    dplyr::filter(Species == "マアジ")
}

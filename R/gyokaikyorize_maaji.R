#' @param df a data frame
#' @param species 'maaji'
#' @export
gyokaikyorize.maaji <- function(df, species = NULL) {
  # if (missing(df)) df <- stockdbr::load_catch() else df
  if (is.null(species)) species <- "マアジ"

  df %>%
    dplyr::filter(Species == species) %>% print()
    # dplyr::mutate()
}

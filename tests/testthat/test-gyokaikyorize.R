library(gyokaikyor)
context("gyokaikyorize() choose correct 'Fishery' and 'Location' from binary?")

context("- maaji")

test_that("gyokaikyorize() formats data.frame correctly", {
  target <- load_catch_dummy_kagoshima() %>%
    gyokaikyorize(df = ., species = "maaji")

  against <- stockdbr::parse_legacy.maiwashi_maaji(
    fname = "excel/gyokaikyo_dummy_maaji.xlsx",
    year = 2020,
    species = "マアジ"
    )

  expect_equal(target, against, scale = 1)
})

context("Function set_region_by_two()")

catch_data <- load_catch()

test_that("Prefec is regioned correctly", {
  expect_equal(set_region_by_two(prefec = "青森", boundary_prefec = "和歌山"),
               "三重以東")
})

test_that("Multiple prefec is regioned correctly", {
  expect_equal(set_region_by_two(c("三重", "和歌山"), "和歌山"),
               c("三重以東", "和歌山以西"))
})

test_that("Multiple prefec in a tibble format is divided into two regions", {
  expect_equal(catch_data %>%
                 dplyr::mutate(Region = set_region_by_two(Prefec, "和歌山")) %>%
                 dplyr::select(Region) %>%
                 unique() %>%
                 unlist() %>%
                 unname(),
               c("三重以東", "和歌山以西"))
})

test_that("'boundary_prefec' must be a prefecture from the Pacific block", {
  expect_error(set_region_by_two("神奈川", "新潟"),
               "Non Pacific block prefec is given to 'boundary_prefec'")
})

test_that("'prefec' must be a prefecture from the Pacific block", {
  expect_error(set_region_by_two("香川", "和歌山"),
               "Non Pacific block prefec is given to 'prefec'")
})

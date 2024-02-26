library(DBI)
# Create an ephemeral in-memory RSQLite database
con <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")

# Write mtcars and iris
dbWriteTable(con, "mtcars", mtcars)
dbWriteTable(con, "iris", iris)

# Run tests
## Count test
test_that("count mtcars", {
  expect_equal(
    count_table(con, 'mtcars'),
    32
  )
})

test_that("count iris", {
  expect_equal(
    count_table(con, 'iris'),
    150
  )
})

## Error for non-existing table
test_that("non-existing table count test", {
  expect_error(
    count_table(con, 'iris1')
  )
})



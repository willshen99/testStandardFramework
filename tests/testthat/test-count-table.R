# Run tests
## Count test
test_that("count mtcars", {
  con <- test_db()
  expect_equal(
    count_table(con, 'mtcars'),
    32
  )
})

test_that("count iris", {
  con <- test_db()
  expect_equal(
    count_table(con, 'iris'),
    150
  )
})

## Error for non-existing table
test_that("non-existing table count test", {
  con <- test_db()
  expect_error(
    count_table(con, 'iris1')
  )
})



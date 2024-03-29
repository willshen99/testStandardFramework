# Function to generate a test DB

test_db <- function(){
  # Create an ephemeral in-memory RSQLite database
  con <- DBI::dbConnect(RSQLite::SQLite(), ":memory:")
  # Write mtcars and iris
  dbWriteTable(con, "mtcars", mtcars)
  dbWriteTable(con, "iris", iris)
  con
}

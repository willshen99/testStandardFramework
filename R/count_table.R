library(dbplyr)
library(dplyr)
library(DBI)



count_table <- function(con, table){
  tbl <- tbl(con, table)
  tbl %>%
    count() %>%
    collect() %>%
    as.numeric()
}

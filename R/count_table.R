library(dplyr)
library(DBI)



count_table <- function(con, table){
  t <- tbl(con, table)
  t %>%
    count() %>%
    collect() %>%
    as.numeric()
}

# Sample skeleton for custom application

# read input
data <- read.csv("/data/in/tables/source.csv");

# do something very clever
for (column in colnames(data)) {
  data[[column]] <- gsub("rr", "r", data[[column]])
  data[[column]] <- gsub("r", "w", data[[column]])
  data[[paste0('length_', column)]] <- stringr::str_length(data[[column]])
}

# write output
write.csv(data, file = "/data/out/tables/result.csv", row.names = FALSE)


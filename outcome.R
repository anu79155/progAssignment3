#installing the "data.table" package is used for working with tabular data in R

library("data.table")
# Reading the Hospital data

 outcome <- read.csv('outcome-of-care-measures.csv', colClasses = 'character')

head(outcome)
outcome[, 11] <- as.numeric(outcome[, 11])

## Ignoring the warning message  about NAs being introduced

 hist(outcome[, 11])

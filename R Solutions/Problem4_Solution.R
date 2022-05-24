# Project Euler
# Problem 4
# Find the largest palindrome made from the product of two 3-digitnumbers.


# Clear memory before query
rm(list=ls())
options(scipen = 999)
library(stringi)
t0 = Sys.time()

# Let's do this with data frames!
# Generate the multiplication columns
base = 100
high = 999
col1 = rep( c( base:high ), each = ( high - base ) + 1 )
col2 = rep( c( base:high ), times = ( high - base ) + 1 )

# Put it in the data frame
df <- data.frame( col1, col2 )
colnames(df) <- c( "X","y" )
df$output <- NA
df$output <- df[,1] * df[,2]

# Reverse the output, convert to string
df$routput <- stri_reverse(df$output)

# Complare to determine palindrome
df$boolPalindrome[as.character(df$output) == df$routput] <- T
# df$boolPalindrome[df$output != df$routput] <- F

df <- df[!is.na(df$boolPalindrome),]
df <- df[order( df$output, decreasing = T ),]
df[1,]
t1 = Sys.time()
t1 - t0

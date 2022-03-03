# Project Euler
# Problem 1
# Multiples of 3 and 5
# - If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. 
#   The sum of these multiples is 23.
# - Find the sum of all the multiples of 3 or 5 below 1000.

# Clear memory before query
rm(list=ls())

# Defines max number
max = 999

# Finds the highest integer possible for 3 & 5
maxNum3 = floor(max/3)
maxNum5 = floor(max/5)

# Creates array from 1:highest value
array3 = 1:maxNum3
array5 = 1:maxNum5

# Multiples arrays by base number to get vector of values
array3 = array3*3
array5 = array5*5

# Combines the arrays and removes duplicates
combined = c(array3,array5)[order(c(array3,array5))]
combined = combined[!duplicated(combined)]

# Sums the two arrays for the final solution
solution = sum(combined)

solution
# Project Euler
# Problem 3
# Largest prime factor
# - The prime factors of 13195 are 5, 7, 13 and 29.
# - What is the largest prime factor of the number 600851475143 ?

# Clear memory before query
rm(list=ls())
options(scipen = 999)

# baseNumber = 13195 
baseNumber = 600851475143

# The method for calculating prime numbers is "Sieve of Eratosthenes"
# Source: https://en.wikipedia.org/wiki/Sieve_of_Eratosthenes
# In addition, we can limit this to sqrt(600851475143) as it would give a factor greater than max value
# Source: https://stackoverflow.com/questions/5811151/why-do-we-check-up-to-the-square-root-of-a-prime-number-to-determine-if-it-is-pr

# Calculates sqrt(600851475143)
# The largest value cannot exceed the square root per 2nd source
maxTheoretical = ceiling(sqrt(baseNumber))

# Generates vector of integers
allValues = 2:maxTheoretical

# keeps only numbers that can divide the base number
allValues = allValues[baseNumber %% allValues == 0]

# Gets the largest viable number and finds all prime numbers up to that number
# Calculate viable prime numbers per 1st source
primeVector = 2:max(allValues)
iLoop = 1

# Prime filter
while(primeVector[iLoop] != max(primeVector))
{
  # Creates vector to keep past values
  pastBool = !logical(iLoop - 1)
  
  # For tracking purposes
  currentLength = length(primeVector)
  
  # Creates vector to keep future values
  futureBool = primeVector[iLoop + 1:currentLength] %% primeVector[iLoop] != 0
  futureBool <- na.omit(futureBool)
  
  # Combines future w/ past for full vector of values to keep
  fullBool = c(pastBool, T, futureBool)
  
  # Removes non-prime based off current interation
  primeVector = primeVector[fullBool]
  
  # For reporting purposes
  newLength = length(primeVector)
  print(paste("Removed:", currentLength - newLength))
  print(paste("On:", primeVector[iLoop]))
  
  # Next loop
  iLoop = iLoop + 1
}

final = NA

for (i in 1:length(allValues))
{
  temp = primeVector
  temp = temp[!temp == allValues[i]]
  
  if (min(allValues[i] %% temp) != 0)
  {
    final = c(final, allValues[i])
  }
}

final <- na.omit(final)
paste(final)

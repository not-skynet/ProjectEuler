# -*- coding: utf-8 -*-
"""
Project Euler: Problem 1

Created on Tue May 24 14:43:30 2022

@author: not-skynet
"""

import math
import numpy

print('What is the maximum number?')
maxNumber = int(input())

maxNumber3 = math.floor(maxNumber/3)
maxNumber5 = math.floor(maxNumber/5)

# Create array from 1 to n
tempList = list(range(1,maxNumber3+1))
arrayNumber3 = numpy.array(tempList)

tempList = list(range(1,maxNumber5+1))
arrayNumber5 = numpy.array(tempList)

# Multiply arrays by n
arrayNumber3 = arrayNumber3 * 3
arrayNumber5 = arrayNumber5 * 5

# print('max arrayNumber3 is ', arrayNumber3[-1])
# print('max arrayNumber5 is ', arrayNumber5[-1])

# Combines the two numpy arrays; note - must be tuple (double parentheses)
fullArray = numpy.concatenate((arrayNumber3, arrayNumber5))

# Removes duplicates
fullArray = numpy.unique(fullArray)
# print(fullArray)

# Result
solution = sum(fullArray)
print('The solution is ', solution)
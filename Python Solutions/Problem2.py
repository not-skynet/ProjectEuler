# -*- coding: utf-8 -*-
"""
Project Euler: Problem 2

Created on Wed Jun 22 16:16:45 2022

@author: not-skynet
"""

import math

# Input for problem
print('What is the maximum number?')
maxNumber = int(input())

# Define variables in loop
currentValue = 1
fullList = [1]

# While loop to generate fib sequence
while currentValue < maxNumber:
    
    print("Generating fib seq:")
    
    # if first number
    if currentValue == 1:
        print("currentValue: ", currentValue)
        lastValue = 1
        print("lastValue: ", lastValue)
    # if not first number
    else:
        lastValue = fullList[len(fullList)-1]
        print("lastValue: ", lastValue)
        print("Length of list: ", len(fullList))
        
    # Add to last value to generate sequence
    currentValue = currentValue + lastValue
    fullList.append(currentValue)
    print("currentValue: ", currentValue)
    
    
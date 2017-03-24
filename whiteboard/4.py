#!/usr/bin/env python

# find a duplicate element in a limited range array

input = [1,2,3,4,4]

def find_duplicate(input):
  actual_sum = sum(input)
  expected_sum = sum(range(1,len(input)))
  if actual_sum != expected_sum:
    print("Duplicate value is %s" % (actual_sum - expected_sum))
  else:
    print("No duplicate values found!")
    
find_duplicate(input)
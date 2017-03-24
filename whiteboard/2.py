#!/usr/bin/env python
from sets import Set

def zeroSumExists(input):
  map = Set([0])
  sum = 0
  for i in range(0,len(input)-1):
    sum += input[i]
    if(sum in map):
      return True
    else:
      map.add(sum)
  return False
    
input = [4,2,-3,-1,0,4]
print(zeroSumExists(input))
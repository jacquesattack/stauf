#!/usr/bin/env python

# sort binary array in linear time

input = [1,0,0,0,1,0,1,1]

def partition(input):
  pivot = 1
  j = 0
  
  for i in range(0,len(input)-1):
    if input[i] < pivot:
      placeholder = input[i]
      input[i] = input[j]
      input[j] = placeholder
      j += 1
  
  return input
  
result = partition(input)
print(result)


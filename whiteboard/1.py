#!/usr/bin/env python

arr = [8,7,2,5,3,1]
sum = 10

n = len(arr)

map = {}
for i in range(0,n-1):
  if(map.has_key(sum-arr[i])):
    print("pair found at %s, %s" % (map[sum-arr[i]],i))
    break
  map[arr[i]] = i
    
# pair is found at 0 and 2
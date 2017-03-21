#!/usr/bin/env python

import sys
import time
from random import randint

fibn = int(sys.argv[1])

init = []
init.append(randint(0,1))

def getNextFM(val):
  if val == 0:
    return [1]
  if val == 1:
    newrand = randint(0,1)
    if newrand == 0:
      return [0]
    if newrand == 1:
      return [0,1]

while len(init) < fibn:
  newlist = []
  for i in init:
    newlist += getNextFM(i)
  init = newlist

print(init)

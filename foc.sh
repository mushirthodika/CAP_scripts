#!/bin/bash


for j in `seq 1 10`

do

  num=$j

  for i in `seq 0 100 10000`

  do

  grep -A 5 "Properties for CS/CAP-EOM-CCSD/MP2 state $num/A" acal_$i.out | awk 'NR==5' | sed 's/.*://' | sed 's/a.u.//' > energy

  echo $i > cap

  paste cap energy >> acal-foc-state$num.dat

  done
 
  done

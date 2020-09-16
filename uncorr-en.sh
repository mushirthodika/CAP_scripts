#!/bin/bash


for j in `seq 1 10`

do

  num=$j

  for i in `seq 0 100 10000`

  do

  grep -A 3 "Properties for CS/CAP-EOM-CCSD/MP2 state $num/A" acal_$i.out | awk 'NR==3' | cut -c 25-50 | sed 's/,//g' | sed 's/)//g' > energy

  echo $i > cap

  paste cap energy >> acal-uncorr-state$num.dat

  done
 
  done

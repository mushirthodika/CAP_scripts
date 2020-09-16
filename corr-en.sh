#!/bin/bash


for j in `seq 1 10`

do

  num=$j

  for i in `seq 0 100 10000`

  do

  grep -A 6 "Properties for CS/CAP-EOM-CCSD/MP2 state $num/A" acal_$i.out | awk 'NR==6' | cut -c 29-54 | sed 's/,//g' | sed 's/)//g' > energy

  echo $i > cap

  paste cap energy >> acal-corr-state$num.dat

  done
 
  done

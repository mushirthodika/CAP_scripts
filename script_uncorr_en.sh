#!/bin/bash


for j in `seq 1 10`

do

num=$j

for i in `seq 0 100 15000`

	do

	grep -A 3 "Properties for CS/CAP-EOM-CCSD/MP2 transition $num/B1" hcn_$i.log | awk 'NR==3' | cut -c 25-50 | sed 's/,//g' | sed 's/)//g' > energy

        echo $i > cap

        paste cap energy >> hcn_uncorr_b1_state$num.dat

	done

        done
 

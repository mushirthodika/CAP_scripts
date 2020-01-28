#!/bin/bash


for j in `seq 1 10`

do

num=$j

for i in `seq 0 200 15000`

	do

	grep -A 5 "Properties for CS/CAP-EOM-CCSD/MP2 transition $num/B1" hcn_$i.log | awk 'NR==5' | sed 's/.*://' | sed 's/a.u.//' > energy

        echo $i > cap

        paste cap energy >> hcn_foc_b1_state$num.dat

	done

        done
 

#!/bin/bash


for j in `seq 1 10`

do

	num=$j

	for i in `seq 0 100 10000`

	do

grep -A 4 "Excited state properties for EOMEA-CCSD transition $num/A" acal_$i.out | awk 'NR==4' | sed 's/.*=//' | sed 's/.*(\(.*\))/\1/' | sed 's/,/  /' > energy

		echo $i > cap

		paste cap energy >> acal-rsq-state$num.dat

		done

		done

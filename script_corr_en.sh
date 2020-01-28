#!/bin/bash

        for j in `seq 0 9`

        do

        num=$[2+$j]

	for i in `seq 0 200 15000`

	do

	grep -B $num 'Excited state properties for EOMEA-CCSD transition 1/B1' hcn_$i.log | sed -e 2,$[$num+1]d | cut -c 8-39 > energy

	echo $i > strength

	paste strength energy >> hcn_b1_state$[10-$j].dat

	done

        done

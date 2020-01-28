#!/bin/bash
for i in {0..15000..200}
do
sed "s/CAP_ETA 0/CAP_ETA $i/g" hcn_sample.inp > hcn_$i.inp
done

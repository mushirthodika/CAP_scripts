#!/bin/bash

 new_last=0

 while [[ $new_last -lt 15000 ]]; do
    a=$(ps aux | grep qcprog | grep -v grep | wc -l) #number of running
    if [[ $a -eq 0 ]]; then
        first=$(cat script1 | grep for | sed "s/.*{//" | sed "s/\.\..*//")
        last=$(cat script1 | grep for | sed "s/\.\.200}//" | sed "s/.*\.\.//")
        new_first=$(($first+2200))
        new_last=$(($last+2200))
        sed -i "s/$first/$new_first/" script1
        sed -i "s/$last/$new_last/" script1 
        ./script1

        fi

        sleep 1000 
        
        done

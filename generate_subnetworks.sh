#!/bin/bash

#generate a sequence of subnetworks with consecutively higher number of interactions

for i in $(seq 101  100 901) ; do

head -n $i ~/notron/aracne/redes_cytoscape/Basal_toplist.sif > Basal_top00$i.sif

done

for i in $(seq 1001  100 9901) ; do

head -n $i ~/notron/aracne/redes_cytoscape/Basal_toplist.sif > Basal_top0$i.sif

done

for i in $(seq 10001  100 15001) ; do

head -n $i ~/notron/aracne/redes_cytoscape/Basal_toplist.sif > Basal_top$i.sif

done

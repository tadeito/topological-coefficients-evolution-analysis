#!/bin/bash

#this script utilizes as input all the .netstats files on folder generated by cytoscape´s network analyzer batch analysis.
#the output is a .csv file with subnetwork topological parameters

#get subnetwork samples column
for i in $(ls *-u.netstats); do
 head -n 2 $i | tail -n 1 | cut -f 1 -d " "
done > items
#get parameters from individual reports
for i in $(ls *-u.netstats); do
 echo $(head -n 15 $i | tail -n 11 | cut -f 3 -d " ")
done > params

#make everything fit together and put it into file
paste -d " " items params > report
tr " " "," <report > report.csv
#include header
echo -e "subred,Clustering Coef,Connected components,Network diameter,Network radius,Network centralization,Shortest paths,Characteristic path length,Avg num neighbors,Number of nodes,Network density,Network heterogeneity">header
cat header report.csv >reporte_subredes.csv

#clean the garbage
rm items
rm params
rm report
rm report.csv
rm header

#show me the results!
column -s "," -t report_completo.csv | less -N -S

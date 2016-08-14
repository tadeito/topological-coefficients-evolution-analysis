# topological-coefficients-evolution-analysis
some scripts to analyze how topological characteristics of (MI ARACNE-style) weighted networks change as we take the top n  interactions 

On this project we intend to:

generate a batch of subnetworks to be analyzed with cytoscape´s network analyzer

use the output from the batch analysis to generate a report with the topological coefficients of each subnetwork

The goal is to obtain enough information to decide an apropriate cut for the network

You will need a .sif file with node-interaction-node format (which can be interpreted by cytoscape)

First step:
Generate a series of networks from original sorted file and put hem into the same folder.

Second step:
Use Cytoscape's Network Analyzer Batch Analysis function to obtain the statistics of your subnetworks. for this you may include an empty folder to save your reports.

Third step:
once Network Analyzer finishes, go to folder and paste the reporte_netstats_batch.sh script, then execute it from terminal 

Now you have a table with statistics associated to edge count.

Fourth step:
use the reports generated in last step to visualize the data in with R
 the estadisticas_de_red_vs_numero_de_edges.R script produces a .pdf report with graphs of the different statistics vs edge count

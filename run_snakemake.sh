#!/bin/bash
set -e

# Script containing boilerplate for running Snakemake
# Specify additional parameters (e.g. --dryrun) and rule names 
# after invoking this script, e.g.
# $ bash run_snakemake.sh --dryrun rule_name

# Assumptions:
#  * Workflow scripts are in a subfolder of working dir called `workflow/`
#  * Conda environments will be created in a subfolder `envs/`

# PATHS
SNAKEMAKE_ENV=/ebio/ag-swart/home/kbseah/anaconda3/envs/snakemake
WD=/ebio/abt2_projects/ag-swart-loxodes/annotation/falcon-comb_LmagMIC/pogigwasc_intronless

# activate snakemake conda environment
source activate $SNAKEMAKE_ENV

snakemake \
--cores 16 \
--configfile $WD/workflow/config.yaml \
--use-conda \
--conda-frontend mamba \
--printshellcmds \
--conda-prefix $WD/envs \
-s $WD/workflow/Snakefile $@

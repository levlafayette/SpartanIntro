#!/bin/bash
# SBATCH --partition=physical
#SBATCH --constraint=physg4
#SBATCH --ntasks=72
# Load modules, show commands etc
echo $(hostname ) $SLURM_JOB_NAME running $SLURM_JOBID >> hostname.txt

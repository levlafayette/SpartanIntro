#!/bin/bash
#SBATCH --ntasks=1
#SBATCH --nodelist=spartan-bm005
# Alternative to exclude specific nodes.
# SBATCH --exclude=spartan-bm005
echo $(hostname ) $SLURM_JOB_NAME running $SLURM_JOBID >> hostname.txt

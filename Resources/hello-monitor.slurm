#!/bin/bash
#SBATCH --ntasks=8
module purge
module load OpenMPI/1.10.0-GCC-4.9.2
time srun mpi-helloworld

# Add job monitor snipped to determine resource usage

JOBID=$SLURM_JOB_ID
if [ ! -z $SLURM_ARRAY_JOB_ID ]; then
  JOBID="${SLURM_ARRAY_JOB_ID}_${SLURM_ARRAY_TASK_ID}"
fi
my-job-stats -a -j $JOBID


#!/bin/bash
module purge
module load OpenMPI/1.10.0-GCC-4.9.2
time srun mpi-helloworld

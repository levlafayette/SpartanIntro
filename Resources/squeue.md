The Slurm command `squeue` provides information about jobs in the squeue. The following are some basic and useful commands.

squeue -a 

This displays information in all jobs and job steps in all partitions.

squeue -A $account

This displays information for jobs according to account (i.e., group). Accepts a comma separated list.

squeue -j $jobids

Displays information for jobs according to job id. Accepts a comma separated list.

squeue -p $partition

Displays information for jobs according to partition. e.g., squeue -p cloud

squeue -u $users

Displays information for jobs according to users. Accepts a comma separated list.


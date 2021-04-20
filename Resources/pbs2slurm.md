For those who are more familiar with PBS there is a handy script which can do a lot of the conversion from PBS to Slurm.

https://github.com/bjpop/pbs2slurm

The following is a summary of common PBS commands and their Slurm equivalent, in part taken from `https://genomedk.fogbugz.com/?W6`


User commands 	PBS/Torque 		Slurm
Job submission 	qsub <job script> 	sbatch <job script>
Job deletion 	qdel <job_id> 		scancel <job_id>
Job deletion 	qdel ALL 		scancel -u <user>
List jobs 	qstat [-u user] 	squeue [-u user] [-l for long format]
Job status 	qstat -f <job_id> 	jobinfo <job_id>
Job hold 	qhold <job_id> 		scontrol hold <job_id>
Job release 	qrls <job_id> 	​	scontrol release <job_id>

Environment 	PBS/Torque 		Slurm
Job ID 		$PBS_JOBID 		$SLURM_JOBID
Node list  	$PBS_NODEFILE 		$SLURM_JOB_NODELIST (new format)
Submit dir 	$PBS_O_WORKDIR 		$SLURM_SUBMIT_DIR

Job Specification 	PBS/Torque 		Slurm
Script directive 	#PBS 			#SBATCH
Queue 			-q <queue> 		-p <partition>
Node count 		-l nodes=<number>	-N <min[-max]>
Cores(cpu) per node 	-l ppn=<number> 	-c <number>
Memory size 		-l mem=16384 		--mem=16g OR --mem-per-cpu=2g
Wall time  		-l walltime=<hh:mm:ss> 	-t <days-hh:mm:ss>
Standard output file 	-o <file_name> 		-o <file_name>
Standard error file 	-e <file_name> 		-e <file_name>
Output directory 	-o <directory> 		-o "directory/slurm-%j.out"
Event notification 	-m abe 			--mail-type=[BEGIN, END, FAIL, REQUEUE, or ALL]
Email address 		-M <address> 		--mail-user=<address>
Job name 		-N <name> 		--job-name=<name>
Job dependency 		-W depend= 		--depend=C:<jobid>
Account to charge 	-W group_list=<account> --account=<account>

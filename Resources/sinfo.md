The following as some sinfo examples that you might find useful on Spartan.

`sinfo -s`

Provides summary information the system's partitions, from the partition name, whether the partition is available, walltime limits, 
node information (allocated, idle, out, total), and the nodelist.

`sinfo -p $partition`

Provides information about the particular partition specified. Breaks sinfo up for that partition into node states (drain, drng, 
mix, alloc, idle) and the nodes in that state. `Drain` means that the node is marked for maintenance, and whilst existing jobs will 
run it will not accept new jobs.

`sinfo -a`

Similar to `sinfo -p` but for all partitions.

`sinfo -n $nodes -p $partition`

Print information only for specified nodes in specified partition; can use comma-separated values or range expression e.g., `sinfo 
-n spartan-bm[001-010]`.



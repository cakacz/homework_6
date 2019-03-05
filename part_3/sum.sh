cd CDS

filename= $1

get_fasta_stats.pl -gt $1 >> output_stats

cd CDS

#first for loop
for i in *.cds; do
    cut="$i.cut"
    stats="$i.stats"
    trans="$i.pep"
    cut $i -d " " -f 1 >> $cut
    #next, get stats
    get_fasta_stats.pl -gt $i >> $stats
    transeq $cut $trans -frame=1 -sformat pearson >> $trans
done

#second for loop
for i in *.pep; do
    output="$i.stats"
    get_fasta_stats.pl -gt $i >> $i.stats
done



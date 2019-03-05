#!/bin/bash
#truncate each descriptor to the left of the first whitespace

cd CDS
#file=Metabetaeus_minutus_TRI_1_20_2014_NORM.fasta.transdecoder.cds
cat Metabetaeus_minutus_TRI_1_20_2014_NORM.fasta.transdecoder.cds | cut -d " " -f 1 | awk '{print $1}' >> output
#lines >> output


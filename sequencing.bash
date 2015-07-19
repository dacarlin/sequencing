WELLS=$( cat wells.txt ) 
SUBJECT='example/nucleotide.fasta'
READS='example/reads/'
ORDER='example/order.txt' 

transeq ${SUBJECT} subject.fasta 

for WELL in $WELLS; do
  merger -asequence ${READS}*T7pro*${WELL}.seq -bsequence ${READS}*T7ter*${WELL}.seq \
    -sreverse2 -outseq ${WELL}.fasta -outfile ${WELL}.merger && \
  blastn -subject ${SUBJECT} -query ${WELL}.fasta -outfmt "6 qseq" > ${WELL}.seq && \
  transeq ${WELL}.seq ${WELL}.protein.fasta && \
  printf "%s " ${WELL} && \
  blastp -subject subject.fasta -query ${WELL}.protein.fasta -outfmt "6 sseq qseq" | python diff.py 
done | python chooser.py ${ORDER}

WELLS=$( cat wells.txt ) 
SUBJECT='private/1lc3.fasta'
READS='reads/'
ORDER='order.txt' 

transeq ${SUBJECT} subject.fasta #translates into protein 

for WELL in $WELLS; do
  if [ -e ${READS}*Promoter*${WELL}.seq ]; then 
    if [ -e ${READS}*Terminator*${WELL}.seq ]; then
      merger -asequence ${READS}*Promoter*${WELL}.seq -bsequence ${READS}*Terminator*${WELL}.seq \
        -sreverse2 -outseq ${WELL}.fasta -outfile ${WELL}.merger 
  
      blastx -subject subject.fasta -query ${WELL}.fasta -outfmt "6 sseq qseq" | python diff.py 
    fi
  fi 


  #merger -asequence ${READS}*Promoter*${WELL}.seq -bsequence ${READS}*Terminator*${WELL}.seq \
  #  -sreverse2 -outseq ${WELL}.fasta -outfile ${WELL}.merger 


done #| python chooser.py ${ORDER}

#mv *merger *fasta *seq out/ 

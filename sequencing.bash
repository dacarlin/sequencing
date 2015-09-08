WELLS=$( cat 2v6g_dyad_well_list.txt ) 
SUBJECT='private/2v6g.fasta'
READS='2v6g_dyads/'
#ORDER='order.txt' 


#YH_421939-10_B2_k121h+n179t+m189a+g272e+f317a+i321h-1_T7-Pro_B02.seq


transeq ${SUBJECT} subject.fasta #translates into protein 

for WELL in $WELLS; do

  ASEQ=${READS}*${WELL}*Pro*seq
  BSEQ=${READS}*${WELL}*term*seq

  if [ -e $ASEQ ] && [ -e $BSEQ ]; then 
    merger -asequence $ASEQ -bsequence $BSEQ -sreverse2 -outseq ${WELL}.fasta -outfile ${WELL}.merger 
    printf "%s " $WELL 
    blastx -subject subject.fasta -query ${WELL}.fasta -outfmt "6 sseq qseq" | python diff.py 
  fi 

done #| python chooser.py ${ORDER}

mv *merger *fasta out/ 

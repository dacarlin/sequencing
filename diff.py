import sys
for line in sys.stdin:
  if len( line ) > 300 and len( line.split() ) == 2: # throw away short alignments and filter 
    sseq, qseq = line.lower().split() 
    print '+'.join([ '%s%s%s' % (j[0], i, j[1]) for i, j in enumerate(zip(sseq, qseq)) if j[1] != j[0] ]) 

# outputs difference (in terms of mutations) between two protein sequences
# in the form <sequence a> <sequence b> 

import sys
for line in sys.stdin:
  sseq, qseq = line.split() 
  print '+'.join([ '%s%s%s' % (j[0], i, j[1]) for i, j in enumerate(zip(sseq, qseq)) if j[1] != j[0] ]) 
    

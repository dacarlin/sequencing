import sys 

with open( sys.argv[1] ) as fn:
  orders = set( [ i.strip().upper() for i in fn.readlines() ] ) 

hits = { } 
for line in sys.stdin:
  if ' ' in line and len( line.split() ) == 2:
    well, mutation_list = line.split()
    if mutation_list in orders:
      hits.update( { mutation_list: well } ) 

print 'found %d of %d desired mutants' % ( len( hits ), len( orders ) )
print '---'

for mutation_list, well in hits.iteritems():
  print 'prep well %s for mutant %s' % ( well, mutation_list ) 

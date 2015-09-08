import argparse 

parser = argparse.ArgumentParser()
parser.add_argument( '--reads', help='folder of reads' )
parser.add_argument( '--wt', help='wild type nucleotide sequence' ) 
args = parser.parse_args() 

from glob import glob 
import re

# get a list of wells to work with 
list_of_wells = [] 
for read in glob( args.reads + '*.seq' ):
  list_of_wells += re.findall( r'_([A-Z][0-9]{1,2})_', read )

 
# iterate over the list and merge them 
for well in list_of_wells:
  print glob( args.reads + '*' + well + '*' ) 

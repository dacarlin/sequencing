# Use

```bash 
bash sequencing.bash > out.txt
# redirect to a file and ignore all the stderr output from EMBOSS
```

`out.txt` will suggest a well to prep for each mutant. You'll have to edit the paths on the first few lines of `sequencing.bash`. You are expected to provide the nucleotide sequence of the wild type gene (FASTA format), a directory full of Sanger reads (SEQ format), and a list of the mutants you'd like `chooser.py` to look for. 

# Requirements 

Requires [EMBOSS](http://www.ebi.ac.uk/Tools/emboss/) and [BLAST](http://blast.ncbi.nlm.nih.gov/Blast.cgi). On Mac OS X, you can install with Homebrew:

```bash
brew tap homebrew/science
brew install emboss blast 
```

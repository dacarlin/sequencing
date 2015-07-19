# Use

```bash 
bash sequencing.bash > diff.txt 
# output is one per line, <well> <mutations>
```

You'll have to the paths in `sequencing.bash` to fit your setup. 

# Requirements 

Requires [EMBOSS](http://www.ebi.ac.uk/Tools/emboss/) and [BLAST](http://blast.ncbi.nlm.nih.gov/Blast.cgi). On Mac OS X, you can install with Homebrew:

```bash
brew tap homebrew/science
brew install emboss blast 
```



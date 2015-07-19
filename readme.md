# Use

```bash 
bash sequencing.bash > out.txt
# redirect to a file and ignore all the stderr output from EMBOSS
```

`out.txt` will suggest a well to prep for each mutant. You'll have to edit the paths in `sequencing.bash` if you want to run more than the example. 

# Requirements 

Requires [EMBOSS](http://www.ebi.ac.uk/Tools/emboss/) and [BLAST](http://blast.ncbi.nlm.nih.gov/Blast.cgi). On Mac OS X, you can install with Homebrew:

```bash
brew tap homebrew/science
brew install emboss blast 
```


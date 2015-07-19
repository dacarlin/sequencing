# Use

```bash 
bash sequencing.bash > diff.txt 
# output is one per line, <well> <mutations>
```

to get protein sequence differences between sequencing reads and a provided wild type sequence.

Edit the paths in `sequencing.bash` to fit your setup. 

# Requirements 

Requires EMBOSS `merger` and BLAST. On Mac OS X, you can install with Homebrew.

```bash
brew tap homebrew/science
brew install emboss blast 
```



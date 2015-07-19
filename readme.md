# Use

```bash 
bash sequencing.bash > diff.txt 
# output is one per line, <well> <mutations>
```

You'll have to the paths in `sequencing.bash` to fit your setup. 

# Requirements 

Requires EMBOSS `merger` and BLAST. On Mac OS X, you can install with Homebrew:

```bash
brew tap homebrew/science
brew install emboss blast 
```



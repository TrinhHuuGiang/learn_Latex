#### Some package help draw on page
- Package `pgf` is 
- Package `tikz`
- Both package draw on the page by coordinates. 

```latex
    tlmgr install pgf % auto pull pgf and tikz
```

##### `tickz and pgf` package
- After install, check the document of `pgf`
    ```bash
        $tex_bin/tlmgr list --list --only-installed pgf

        # check the doc files
        texmf-dist/doc/generic/pgf/pgfmanual.pdf details="PGF Manual"
    ```
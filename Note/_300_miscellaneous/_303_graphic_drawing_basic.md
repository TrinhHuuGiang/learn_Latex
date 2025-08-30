### Topic
- [tikz install](#tickz-and-pgf-package)
- [tikz funtions](#tikz-functions)

#### Some package help draw on page
- Package `pgf` is 
- Package `tikz`
- Both package draw on the page by coordinates. 

```latex
    tlmgr install pgf % auto pull pgf and tikz
```

##### `tikz and pgf` package
- After install, check the document of `pgf`
    ```bash
        $tex_bin/tlmgr list --list --only-installed pgf

        # check the doc files
        texmf-dist/doc/generic/pgf/pgfmanual.pdf details="PGF Manual"
    ```

##### `tikz` functions
```latex
    \usepackage{tikz}
```
###### 1. Setup environment
- tikz using environment `tikzpicture` and it using `\draw` command to drawing.
    - unit of each coordinate point to draw by default is `cm` centimeter
    - but we can use custom unit like `(3pt, 6pt)`
        ```latex
        \tikzpicture
        \draw (-1.5,0) -- (1.5,0);
        \draw (0,-1.5) -- (0,1.5);
        \endtikzpicture.
        ```
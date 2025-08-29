#### Add prefix for title in the TOC, LOT, LOF
- By default the latex `TOC` do not has a prefix for each level section, so it only printable `Latin I, II,... for part` or `1,2,3... for chapter` or lower section level.
- Method is use package [tocloft]
    ```bash
        sudo tlmgr install tocloft

        # check
        tlmgr list --list --only-installed tocloft 

        # return
        doc files:
            texmf-dist/doc/latex/tocloft/README details="Readme"
            texmf-dist/doc/latex/tocloft/tocloft.pdf details="Package documentation"
    ```
- Note that by default LaTeX put TOC, LOT, LOF in new page but `tocloft` will disable and we has to do by hand `\newpage` or `\clearpage`

##### 1. set page style for TOC, LOT, LOF
```latex
    % preamble
    \usepackage{tocloft}

    % before TOC, LOT, LOF
    \tocloftpagestyle{〈style〉}
```
- By default `style` is `plain`
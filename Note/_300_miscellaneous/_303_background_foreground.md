### Topic
- [About background and foreground](#how-to-change-background-or-fork-ground)
- [eso-pic package](#eso-pic-package)
    - 

### How to change background or fork ground
- Origin package `atbegshi` supple ability hook at time a page drawing and insert new graphic (background) before draw main page or draw graphic after draw main page.
- The package `eso-pic` is a convenient wraper of `atbegshi`, friendly with end user.

- Both package work with the page coordinates. And sometimes cooperate with `tikz`, [see more](drawing_basic_graphic.md).

```latex
    tlmgr install eso-pic % auto pull eso-pic and atbegshi
```

#### `eso-pic` package
- After install, check the document of `eso-pic`
    ```bash
        $tex_bin/tlmgr list --list --only-installed eso-pic

        # check the doc files, `eso-pic.pdf` is manual
        run files:
            texmf-dist/tex/latex/eso-pic/eso-pic.sty
            texmf-dist/tex/latex/eso-pic/showframe.sty
        source files:
            texmf-dist/source/latex/eso-pic/eso-pic.dtx
            texmf-dist/source/latex/eso-pic/eso-pic.ins
        doc files:
            texmf-dist/doc/latex/eso-pic/README.md details="Package documentation"
            texmf-dist/doc/latex/eso-pic/eso-article-test.tex
            texmf-dist/doc/latex/eso-pic/eso-ex1.tex
            texmf-dist/doc/latex/eso-pic/eso-ex2.tex
            texmf-dist/doc/latex/eso-pic/eso-ex4.tex
            texmf-dist/doc/latex/eso-pic/eso-ex5.tex
            texmf-dist/doc/latex/eso-pic/eso-memoir-test.tex
            texmf-dist/doc/latex/eso-pic/eso-pic.pdf details="Package documentation"
    ```

##### 
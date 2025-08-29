### Topic
- [About background and foreground](#how-to-change-background-or-fork-ground)
- [eso-pic package](#eso-pic-package)
    - [command background and foreground](#1-eso-pic-command-background-foreground-picture)

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

##### 1. `eso-pic` command background foreground picture
- `\AddToShipoutPictureBG{content}`  : add background at begin each newpage, default draw at low lower left corner
- `\AddToShipoutPictureBG*{content}` : add background at begin of current page.
---
- `\AddToShipoutPictureFG{content}`  : add foreground at top each newpage, default draw at low lower left corner
- `\AddToShipoutPictureFG*{content}` : add foreground at top of current page.
---
- `\ClearShipoutPictureBG`  : temporary disable background for current page
- `\ClearShipoutPictureFG`  : temporary disable background for current page
---
Note: Backgroud and foreground above can recall to set new style for the rest pages follow

<br>

##### 2. `eso-pic` sub command positioning
- `eso-pic` supply some function to set position start drawing background/foreground.
- They have to declared in main command above.
    - `\AtPageUpperLeft{content}`
    - `\AtPageLowerLeft{content}`
    - `\AtPageCenter{content}`
    - `\AtTextUpperLeft{content}`
    - `\AtTextCenter{content}`
    - `\AtStockUpperLeft{content}`
    - `\AtStockLowerLeft{content}`
    - `\AtStockCenter{content}`
- `Page` is size of paper, `Text` is text area exclude margin (inner, outer, top, bottom), `Stock` >= `Page` or larger is realsize print paper.
    ```latex
    \AddToShipoutPictureBG
    {
        \AtPageUpperLeft
        {
            \includegraphics[width=0.2\paperwidth,height=0.2\paperheight,keepaspectratio=false]{sunset.png}
        }

        \AtPageLowerLeft
        {
            \includegraphics[width=0.2\paperwidth,height=0.2\paperheight,keepaspectratio=false]{sunset.png}
        }
    }
    ```
    - In this example because `\includegraphics` will draw at the lower left so when using `\AtPageUpperLeft`, the start point will set top left -> draw picture out of page.
- To set start point custom coordinate we should use method `\put(x,y)`
    - some convenient command `\paperheight` to get pagerheight use for `y`, `\paperwidth` to get paper width use for `x`
    - some time we need calculate, package `calc` help `+ - * /`

### Title sectioning
```latex
sudo tlmgr install titlesec
```
- Topic:
    - [Format section title](#1-adjust-title-content-and-format)
    - [locate title in page](#2-adjust-locate-title-in-page)

#### 1. Adjust title content and format
```latex
    \titleformat{⟨command ⟩}[⟨shape⟩]{⟨format⟩}{⟨label ⟩}{⟨sep⟩}{⟨before-code⟩}[⟨after-code⟩]
```
- command: 
    + `\part, \chapter, \section, \subsection, \subsubsection, \paragraph or \subparagraph`
- shape:
    + `hang`:
        - is default value for level `\section`, hanging `label`, if title too long, `label` is on independent line
        - using for `\section` of lower
    + `block`: 
        - typesets whole `label` and `title` in a paragraph style, linebreak is too long and not slpit `label` as `hang`
        - sometime use `chapter`, `section`, lower level or for centering sectioning level
    + `display`:
        - `label` in 1 like, `title` in others line
        - default for `chapter level`
    + `runin`:
        - `the sectioning` will integrate with the next paragraph.
    + others: `leftmargin`, `rightmargin`, `drop`, `wrap`, `frame`         
- format:
    + some text style: \bfseries, \itshape,...
    + some text size: \Huge, \huge,...
    + some flush, fill: \hfill, \centering,...
- label:
    + a text string format for label, example:
        ```latex
        {Chapter \arabic{chapter}} % `chapter` is a default variable counter
        ```
        + other variable counter: part, chapter, section, subsection, subsubsection, paragraph, subparagraph, page, figure, table, footnote, mpfootnote
        + see more in [wikibook - 24.1](../../Doc/LaTeX_wikibook.pdf)
- sep: 
    + a distance between `label` and `title`
- before-code:
    + this code only apply from after `label` but before `title`
    + some time using design color, special shape for `title`
- after-code: 
    + this code is option, represent for a note content after title

#### 2. Adjust locate title in page
```latex
\titlespacing*{⟨command ⟩}{⟨left⟩}{⟨before-sep⟩}{⟨after-sep⟩}[⟨right-sep⟩]
```
- command: like above maybe `\part, \chapter, \section, \subsection,...`
- left: space between left margin to `label`
- before-sep: vertical space before `heading`
- before-sep: vertical space after `heading`
- right-sep: space after title to right margin
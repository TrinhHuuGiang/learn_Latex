### Document structure
- [Click to view](../../Code/_205_document_structure/main.tex)

### List of common preamble
#### List
- [documentclass](#documentclass)
    - Standard type layout document
- [usepackage](#usepackage)
    - include packages enhance more ability for TeX:
    - [lipsum]()
        - auto generate some `lorem` sample paragraphs
- [document environment](#document-environment)
    - Common commands
        - Line break [\\\\]()
        - [\newpage]()
    - The top matter [\maketitle]():
        - [\title]()
        - [\author]()
            - [\and]()
        - [\date]()
    - Abstract environment
        - Design for `artical` and `report` but not for `book`
        - [\renewcommand{\abstractname}{New abstract title}]()
    - [7 sectioning commands]()
- [miscellaneous command]()
    - [\LaTeX]()
        - Only a special LaTeX word
    - [\lipsum[m-n]]()
        - Template paragraph if include package `lipsum`

#### documentclass
[^list^](#list)
```latex
\documentclass[option]{class}
```
- option:
    - `10pt`, 11pt, ... : size
    - `a4paper`, letterpaper, a5paper, b5paper, legalpapar,... : paper type
    - `fleqn` : Align the mathematical formulas to the left instead of the default between the default
    - `leqno` : Number the mathematical formulas on the left instead of the default to the default
    - `titlepage`, `notitlepage`: 
        - `titlepage` Create a separate cover page for the title (\ maketitle) of the document.
            - Suitable for class: report, book
        - `notitlepage` The title part does not create a separate page, will be placed at the beginning of the document.
            - Suitable for class: artical (default notitlepage)
    - `twocolumn` : 2 column format suitable for artical
    - `landscape` : rotate default verical format to horizontal
    - `openright`, `openany`:
        - `openright` A chapter always begin at right page (odd page), if previous chapter end at right page, a blank page will be inserted
        - `openany` When writing a artical (no chapter) or some document don't care about chapter layout style 
- class:
    - artical(short report, program documentation, invitations,...)
    - report (longer report with several chapters, small books, thesis,... )
    - book   (real book)
    - beamer (better slide)
    - slides (simple slide)
    - lettle (writting letter)
    - IEEEtran (artical but IEEE transaction format)


#### usepackage
[^list^](#list)

```latex
\usepackage[option]{package}
```


#### document environment
[^list^](#list)


##### Common
###### Line break
[^list^](#list)
```latex
This is row 1\\This is row 2
```

##### Abstract environment
[^list^](#list)
```latex
\begin{abstract}

\end{abstract}
```


##### 7 sectioning commands
[^list^](#list)
|Command|Level|Comment|
|-|-|-|
|\part{title}|-1|not in letters|
|\chapter{title}|0|only books and reports|
|\section{title}|1|not in letters|
|\subsection{title}|2|not in letters|
|\subsubsection{title}|3|not in letters|
|\paragraph{title}|4|not in letters|
|\subparagraph{title}|5|not in letters|
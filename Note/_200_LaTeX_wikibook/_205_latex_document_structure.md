### Document structure
- [Click to view example](../../Code/_205_document_structure/main.tex)

### List of common preamble
#### List
- [documentclass](#documentclass)
    - Standard type layout document
- [usepackage](#usepackage)
    - include packages enhance more ability for TeX:
    - `lipsum`
        - auto generate some `lorem` sample paragraphs
- [document environment](#document-environment)
    - Common commands
        - Line break `\\`
            - sometime compile say `There's no line here to end.`, fix like this `\hspace{0pt} \\`
            - Line break and extra verical space `\\[3pt]`, e.g. 3pt ~ 1mm, 1pt = 0.35mm
            - Note that `\\` still in the same paragraph
        - End paragraph: just input an blank line. 
        - `\newpage`
        - `\tableofcontents`
            - Change default title  `\renewcommand{\contentsname}{** Table of Contents **}`
        - `\listoffigures`
        - `\listoftables`
    - The top matter [\maketitle]():
        - `\title{_typing_title_}`
        - `\author{_typing_list_author_}`
            - sub command `\and` if more than 1 author
        - `\date{_typing_date_}`
            - auto typing by subcommand `\today`
    - Abstract environment
        - Design for `artical` and `report` but not for `book`
        - `\renewcommand{\abstractname}{New abstract title}`
    - [7 sectioning commands](#7-sectioning-commands)
        - Short display in TOC `\section_type[short title]{long title}`
        - Set TOC display depth `\setcounter{tocdepth}{<level>}`
        - Unnumber a section and dismiss from TOC `\section_type*{title}`
            - Add a phantom anchor `\phantomsection` before `\addcontentsline...` below
            - Add a Unnumber section into TOC `\addcontentsline{toc}{section_type}{title}`
                - Usually using for `Opening` or `Conclusion`
                - Purpose when using a `phantom` is help TOC identified where `title` place if section type is unnumber `*`
    - Appendix `\appendix`:
        - Pointing that now start appendix, all sections will distinguise by alphabet
    - [`\frontmatter`, `\mainmatter`, `\backmatter`](#page-order-for-book)
        - Using for `book`, the front and back matter help hide numbering of tilte, make some title like `Opening` or `Cónlusion` seem better.
        - In other `article` or `report` can using `phantom` and unnumbering title instead
- miscellaneous command
    - `\LaTeX`
        - Only a special LaTeX word
    - `\lipsum[m-n]`
        - Template paragraph if include package `lipsum`
    - `\ldots`: 3 dots `...`

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

##### Page order for book
- `\frontmatter`:
```txt
1. Half-title
2. Empty
3. Title page
4. Information (copyright notice, ISBN, etc.)
5. Dedication if any, else empty
6. Table of contents
7. List of figures (can be in the backmatter too)
8. Preface chapter
```
- `\mainmatter`
    - Typing main topic
- `\appendix`
    - Some subordinate chapters
- `\backmatter`
    - Bibliography
    - Glossary/Index
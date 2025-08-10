### Document structure
- [Click to view](../../Code/_205_document_structure/main.tex)

### List of common preamble
#### List
- [documentclass](#-documentclass)
    - Standard type layout document
- [usepackage]()


#### [^](#list) documentclass
```txt
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


#### [^](#list) usepackage
```txt
\usepackage[option]{package}
```
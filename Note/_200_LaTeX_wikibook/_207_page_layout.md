### Topic
- [Title page](#title-page)
    - [Standard title](#standard-titles)
    - Custom title: this is quit complicate, we can use frepared topic about textformat, container ... to modify content field `\title` or `author`
- [Page layout](#page-layout)
    - Command `documentclass` setup document type layout. [Lookback](./_205_latex_document_structure.md#documentclass)
        - Option `oneside` make document have the same margin and dont care put chapter or part on which page.
        - Option `twoside` make document have toggle margin (set by `inner` and `outer` of pack `geometry`), any part, chapter will on the `odd page - right page` if it exist on `left page` so a blank page will be inserted
    - [Page demention (size)](#page-demention)
        - Package `geometry` help set page layout and choose right paper type, some document type like `article` has use `geometry` to set paper to A4, otherwise `documentclass` alway set it to `US letter`.
    - [Page margin](#page-margin)
- Page multi column
    - Default support upto 2 column: `\documentclass[twocolumn]{article}`
    - Use package `multicolumn` up to 10 column

- Header/Footer design
    - By default LaTeX support 3 type design when use `\pagestyle{style}` for all page or `\thispagestyle{style}` for current page:
        - Default is `plain`: header is cleaned, `footer` has page number at center.
        - `headings` make `footer` blank, while header display information like section name and page number at top right.
        - User custom by hand with `myheadings`. See [wikibook](../../Doc/LaTeX_wikibook.pdf) page 202.
    - The `\pagestyle{style}` is a command so put it early at beginning document.  
    - Advance design, the package `fancyhdr`, read more at wiki book.


### Title page

#### Standard titles
- Before generate a title, we must specify some feild will implement on title page at the `top matter`/`front matter`. 
    - Basic command: 
        - `\title`: Large title represent for main purpose of document
            - Sup command: `\thanks` using create footnote for the phrase before.
        - `\author`: Introducing information about the authors, using `,` or `\and` if many authors.  
            - Sup command: `\thanks` using create footnote for the phrase before.
        - `\date`: Typing today or empty for auto callback `\today` command.
    - After that has to call `\maketitle` to update title page otherwise compiler can abort.
        - With `artical` title page on the same page with main content
        - With `book` and `report` title page is implement independence on first page.
    
### Page layout

#### Page demention 
```latex
    \documentclass[a4paper]{article} % article and suggest a4paper for geometry but still be US letter
    \usepackage[a4paper,]{geometry}   % set a4paper
```
- Package `geometry` still support some page size:
    ```txt
    • a0paper, a1paper, ..., a6paper,
    • b0paper, b1paper, ..., b6paper,
    • letterpaper,
    • legalpaper,
    • executivepaper.
    ```
#### Page margin
- Package `geometry` still support some page margin for document:
    ```txt
    \usepackage[top=1in, bottom=1.25in, left=1.25in, right=1.25in]{geometry}
    ```
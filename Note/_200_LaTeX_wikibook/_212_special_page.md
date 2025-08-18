## Catalog
- Input a content file
    - Command `\input{filename}`, the input conten will append right position callback command.
    - By default, the file extension is optional. pdflatex first searches for the specified extension; if none is given, it will search for a .tex file.

- [Abbreviation part](#abbreviation-part)
    - package `nomencl` will create `nlo` file, but `latexmk` need `nls` to create `Abbreviation`
    - `latexmk` current no support auto convert filt `nlo` to printable `nls`
    - `makeindex` support convert`nls`
- [Glossary part](#glossary-part)
    - package `glossaries` will create `glo` file, but `latexmk` need `gls` to create `Glossary`
        - `latexmk` current no support auto compile `glo` file and convert to printable `gls`
        - `makeglossaries` support convert to `gls`
    - Because `Glossary` need explain about less common concept and refer to `Glossary part` in document, so to reuse the reference by `gls` the `newglossaryentry` should predefine in a `tex` and put early at begin document.

- [Bibliography](#bibliography)
    - `latexmk` support auto for bibliography 
    - Require BibTeX format `.bib`
    

- [Index part](#index-part)
    - `latexmk` support auto for index part



## Topic

### Abbreviation part
- List of nomenclature summaries
- Dowload package:
    ```bash
    sudo tlmgr install nomencl
    ```
- Package required `nomencl`
    ```Latex
    % in preamble
    \usepackage{nomencl}
    \makenomenclature
    % `babel` package nosupport translate `Nomenclature` title so change by hand
    \renewcommand{\nomname}{List of Abbreviations}

    % in front matter or somewhere in document need abbreviation table
    \printnomenclature

    % in main matter, where exist nomenclature
    \nomenclature[⟨prefix⟩]{⟨symbol⟩}{⟨description⟩}
        % prefix using to group symbol in Table of abbreviations
    ```
- Compile has 3 step:
    ```bash
        latexmk --pdf -output-directory="$tex_tmpf" -jobname="OUTPUT_file_PDF" main.tex

        # TeX prohibit using `makeindex` out of range current folder
        # so jump to temporary folder then convert `nlo` to `nls`
        cd "$tex_tmpf"
        makeindex "OUTPUT_file_PDF.nlo" -s nomencl.ist -o "OUTPUT_file_PDF.nls"
        cd -

        # return by `cd -` then recompile
        latexmk --pdf -output-directory="$tex_tmpf" -jobname="OUTPUT_file_PDF" main.tex
    ```

### Glossary part
- Using Explain less common terms or acronyms 
- Package: must import `hyperref` first then `glossaries` else hyper reference no available on-click
- Install: `sudo tlmgr install glossaries`
- Syntax: 
    ```latex
    %in preamble
    \usepackage{glossaries}
    \makeglossaries


    %At very early of begin document, should define all `newglossaryentry` here
    % create a tex about define glossary is best choice to manage them before add reference in document
    \newglossaryentry{<unique_label>}{<settings>}
    %example
    \newglossaryentry{computer}
    {
        name=computer,
        description=
        {is a programmable machine that receives input,
        stores and manipulates data, and provides
        output in a useful format}
    }


    % indocument where need refer to defined entry, add refer 
    \gls{<unique_label>}

    % in back matter
    \printglossaries

    ```
- Compile has 3 step:
    ```bash
        latexmk --pdf -output-directory="$tex_tmpf" -jobname="OUTPUT_file_PDF" main.tex

        # using `makeglossaries` tools to compile `.glo` file
        # has to jump to temporary folder then convert `.glo` to `.gls`
        cd "$tex_tmpf"
        makeglossaries OUTPUT_file_PDF.glo
        cd -

        # return by `cd -` then recompile
        latexmk --pdf -output-directory="$tex_tmpf" -jobname="OUTPUT_file_PDF" main.tex
    ```


### Bibliography
- LaTeX using BibTeX a sub program help select and arrange cite from `.bib` database.
    - `latexmk` support auto handle creat a bib table by generate `.aux` file from `\cite` exist each paragraph in document
        - Then internal handle will call `BibTeX` select cite from `.bib` file declared in document, arrange by some optional order.

- Use `\cite{unique}` to create refer to `bibliography table` at very end of document
    - Use `\cite{key1, key2,...}` to add multiple references.

#### Declare new cite in file `.bib`
- Syntax: 
    ```bibtex
    @type
    {   unique-cite-key %this is compulsory, unique and must be first
        author = "Names of authors",
        title  = "Short title",
        year   = "year public",
        journal= "where public",
        ...
    }
    ```
- some BibTeX entry type:
    - article, book, booklet, inbook, incollection,  
    inproceeding, manual, mastersthesis, phdthesis,  
    misc, proceedings, tech report, unpublished

- Print `Bibliography part at the end of document`
    ```latex
    % other style 
    \bibliographystyle{plain}
    % register `.bib` file
    \bibliography{sample_bib_1,sample_bib_2,...,samplen} 
    ```

- some basic BibTeX entry field:
    - `authors, title, year, publisher, address`
    - `note=""`: comment for entry of `.bib` , still be printed by plain text
        - or `%` only for outside entry for comment won't printed

- some bibliography style `\bibliographystyle{ style }`
    - plain: sort by author
    - unsrt: sort by referenced order exist in document 
    - abbrv: sort by author and short author name
    - alpha: sort by author and refor label `[short name+short year]` instead of `[1]` format
    - abstract: like alpha but `[name+year]`
    - acm: ACM standard
    - ieeetr: sort by IEEE standard, like `unsrt` but layout `bibli part` has alittle different

- Standard templates
    1. @article
        - for article from journal, magazine
        - Required fields: author, title, journal, year
        - Optional ﬁelds: volume, number, pages, month, note
    2. @inproceedings
    3. @proceedings 
    4. @book
        - for published book
        - Required ﬁelds: author/editor, title, publisher, year.
        - Optional ﬁelds: volume/number, series, address, edition, month, note.
    5. @booklet
        - for thin book without a named publisher or sponsor.
        - Required fields: title.
        - Optional fields: author, howpublished, address, month, year, note.
    6. @manual
    7. @inbook
        - for a section of a book without its own title.
        - Required ﬁelds: author/editor, title, chapter and/or pages, publisher, year
        - Optional ﬁelds: volume/number, series, type, address, edition, month, note.
    8. @incollection
        - A section of a book having its own title
        - Required ﬁelds: author, title, booktitle, publisher, year.
    9. @mastersthesis
    10. @phdthesis
    11. @unpublished
    12. @techreport
    13. @misc
    
### Index part
- Index is a method group all mark about special keywords and note which pages exist them. 
- Package required `makeidx` and has to put this command in `preamble`
    ```latex
    % in preamble
    \usepackage{hyperref}
    \usepackage{makeidx}
    \makeindex % setup specific to use index

    % in main document
    % when writing paragraph, some keyword just want to note:
    \index{keyword_i}

    % another paragraph
    \index{keyword_i}
    ...

    % in back matter, make index page
    \printindex 
    ```


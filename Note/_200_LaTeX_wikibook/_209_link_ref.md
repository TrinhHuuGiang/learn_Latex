### Topic

- write URL:
    - package `\usepackage[hidelinks]{hyperref}`
        - `hidelinks` is option hide rectangle frame around link
    - `\url{<my_url>}` show `url` in paragraph, keep display raw url, can click to open web browser
    - `\href{<my_url>}{<description>}` or `Hyper reference` is another show method represent for `url` by `description`, can click.
- Footnotes:
    - Identify where/which word wanna add footnote, then type:
        ```latex
        hello footnote for this word_1 \footnote{This footnote for word_1} , thanks
        ```

- Label and Cross-referencing
    - `\label{marker}`
        - `label` has to define in a countable environment, example `figure`, `table`, `equation`, or after set [7 type sectioning](./_205_latex_document_structure.md#7-sectioning-commands)
    - `\ref{marker}` return number was numbered for the `countable environment` set by `\label{marker}`
    - `\href{marker}` another return but return page number to `\label{marker}`
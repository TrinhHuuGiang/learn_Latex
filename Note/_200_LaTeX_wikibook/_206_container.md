## References:
- [Using p{} m{} b{}](https://tex.stackexchange.com/questions/35293/p-m-and-b-columns-in-tables)

## topic
- [list](#list)
- [table](#table)
    - Can require package `array` to format paragraph
    - `\arraybackslash` has to append when add format `>` for the last column `paragraph table spec` like `p{}`,`m{}`,`b{}`
    - `\usepackage{graphicx}` to limit table size
        - `\resizebox{width}{height}{object}`, size type can set `!` for auto resize
        - Note: `resizebox` will scale size of text. Check the table after creating the appropriate font size yet.
    - `\usepackage[table]{xcolor}` before add color for table
- [parbox](#box)
    - support wrap sentences in a `paragraph box` and auto linebreak. Very use full when typing in table have cell is `l``c``r` type (Because default it no support multipleline).

### list
- List can be added in another list
```latex
\begin{list_type}
    \item text typing here
    \item ...
    \item ...
    \begin{list_child}
    ...
    \end{list_child}
\end{list_type}
```
- LaTeX support 3 basic list environment:
    - `itemize` is bullet list or list with item distinguish by dot symbol
    - `enumerate` is enumerated list
    - `description` is list has special label for `item`
        ```latex
        \begin{description}
            \item[dog] text typing about dog
            \item[cat] ...
            \item[mouse] ...
        \end{description}
        ```
        - if not supply a `label`, the first word will be label

### table
LaTeX using `tabular` environment for table
```latex
\begin{tabular}[pos]{table spec}
    
    & & & & 

\end{tabular}
```

- Package pre include `array`
- The `tabular` parameters:
    - optional: `pos` default is `c`, other choice is `t`, `b` using to adjust table at center or top or bottom on the row between 2 line cover
    - compulsory `table spec` has syntax combine with symbol below:
        - Note: `baseline` is line has the same heigh with other baseline columns
            |symbol|purpose||symbol|purpose|
            |-|-|-|-|-|
            |l|left-justified column <br> no support multiple line||p{'width'}|paragraph `baseline` top line <br> so paragraph seem lower than others column content|
            |c|centered columnbr <br> no support multiple line||m{'width'}|paragraph `baseline` at the middle|
            |r|right-justified column<br> no support multiple line||b{'width'}|paragraph `baseline` at bottom line <br> so paragraph seem higher than others column content|
            |`\|`| 1 verical line||more `\|...\|`|multiple vertical lines|
    - each cell of table con format by command below
        |symbol|purpose||symbol|purpose|
        |-|-|-|-|-|
        |`\\`| end old row, start new row||`\\`[pt,cm,mm,in,...]| start new row|
        |`\hline`|add horizontal line||`\newline`| linebreak in a cell, suitable for paragraph|
        |`\cline{i-j}`| only draw line from <br> col i to col j <br> i start from 1 ||`&`|column separate|
    - each `table spec` can cooperate with prefix `>{ format }`, where `format` can be:
        |format|purpose||format|purpose|
        |`\bfseries`| font bold||`\itshape`| italic shape|
        |`\centering`|||`\raggedleft`| put text to right, ragged left|
        |`\raggedright`| put text to left, ragged right||||
        - Because `\\` in table is special end row, it will modify action as normal `paragraph` when call `>{format}`
            - So error reach when end of row continue using `\\`, `tabular` unkown normal `\\`
            - The method is add 1 `\arraybackslash` after last paragraph call `>{format}`
                - e.g. The last paragraph column call `>{}` must add sub command like example below:
                    ```latex
                    \begin{tabular}{ 
                        | >{\raggedleft}m{3cm} | >{\raggedright\arraybackslash}b{3cm} | 
                        l | >{\bfseries}c | r | >{\centering}p{3cm} |
                        }
                    ```
- Set color for `tabular row`, call command `\rowcolors` of pack `xcolor` before create `tabular` 
    ```txt
        \rowcolors{<''starting row''>}{<''odd color''>}{<''even color''>} 
        
        e.g.: 
        \rowcolors{1}{yellow}{blue}
        \begin{tabular}...
    ```
- Set size for table by `\usepackage{graphicx}`:
    - `\resizebox{width}{height}{object}` help limit table size:
        ```latex
            \usepackage{graphicx}
            % ...
            \resizebox{8cm}{!} {
            \begin{tabular}...
            \end{tabular}
            }
        ```



### box
```latex
\parbox[position]{width}{content}
```
- `parbox` is a paragraph box has permanent width (unchanged), auto wrap sentences inside
    - Optional `position`: `t` top, `c` center, `b` bottom position in curent row

### References
- [linespread](https://tex.stackexchange.com/questions/61155/linespacing-without-packages)
- [extsize classes](https://www.google.com/url?sa=t&source=web&rct=j&opi=89978449&url=https://www.overleaf.com/learn/latex/Questions/How_do_I_adjust_the_font_size%253F&ved=2ahUKEwjwwMCjuYWPAxWTYPUHHb4-JHQQFnoECBcQAQ&usg=AOvVaw11kO0yK0BlSS2N-NtmtzGJ)
- [xcolor list](https://www.overleaf.com/learn/latex/Using_colors_in_LaTeX)

### Topic
Include: line, text, paragraph format. Some color package and guide to set font, size of text
- Line format
    - Expand line spacing [\linespread](#linespread)
        - Sub command reload font `\selectfont`
        - the `\linespread` will useless when put in a group `{}`
    - No-breaking, keep phrase together by `~`. E.g.: `H.~Giang` 
        - Another convenient command `\mbox{ nobreaking content }` == `hbox{ ... }`
        - If you want a box cover content `\fbox{ nobreaking content }` instead
        - If you want color see `Color` below for `colorbox` or `fcolorbox`
    - Fill verical or horizontal by `blank space`:
        - `\vfill` will press the rest content to top and bottom
        - `\hfill` will press the rest content on both sides left and right
        - `\vspace{ unit }` add a space by vertical
            - Expand row height if unit `>` `baseline`
            - Pull the row higher if unit `<` 0, :v and also pull all backward rows higher
        - `\hspace{ unit }` add a space by horizontal on a line 
            - Add a block blank with length by unit (mm, cm, pt, in,...)
            - Pull row to the left if unit `<` 0
- Text format
    - Set [hyphenation](#hyphenation) for phrase:
        - Note: `hyphenation` default only support English, To using another rule for right language,
        a package `babel` should include at `preamble`, see `babel` below at `Font and multiple languages`
    - `\url{input_url}` print original url with exactly syntax, auto split without hyphenation `-`.
        - package require `hyperref`.
            - Option `\usepackage[hidelinks]{hyperref}` to hide retangle line cover link.
- Paragraph:
    - Alignment environment `flushleft`, `flushright`, `center` 
        - using with \begin{...} and \end{...}
    - Verbatim text environment `\begin{verbatim}` `\end{verbatim}`
        - when start until end this environment, all syntax will keep print raw, no complie. Very useful for coding text.
    - `\verb` like verbatim but scope only 1 line
        - How to use: `\verb` + `key` + raw content + `key`. Where `key` is a visible character can input from keyboard and sure not exist in `raw content`

- Color:
    - Package `color` and `xcolor`. For convenient, i only test `color` and basic HTML `xcolor`, about `xcolor` [xcolor](https://www.overleaf.com/learn/latex/Using_colors_in_LaTeX) and `design a color` [check wikibook from page 87](../../Doc/LaTeX_wikibook.pdf)
        - `\color{color_name}` this command affect on group
        - `\textcolor{color_name}{text}` affect on `text`
            - Basic color for pack `xcolor` were checked supply optional `usenames` parameter for package before use: 
                - 19 color are accepted for `xcolor`: 
                    ```txt
                        red, green, blue, cyan, magenta, yellow, black, white
                    ```
                - 8 color are accepted for `color`: 
                    ```txt
                        red, green, blue, cyan, magenta, yellow, black, white, gray, darkgray, lightgray,  
                        brown, lime, olive, orange, pink, purple, teal, violet
                    ```
        - Background color, note that `colorbox` and `fcolorbox` is unbreaking with paragraph like `\hbox` or `fbox`, any thing write 1 line
            - `\colorbox{back_color}{text}` suitable for phrase, short sentence or a not recommend is highlight a path of paragraph
            - `\fcolorbox{frame_color}{back_color}{text}` extra frame

- Font and multiple languages
    - Package `babel` setup standard form for title, chapter, word space suitable for current language is chosen. 
        - [How to use babel, inputenc, fontenc with many languages at same time](#babel)
    - Package `inputenc` define method input encode like `UTF-8`
    - Package `fontenc` define method encode data from input for current font family display right. 
        - e.g. Encoder `T1` for english or modern Latin, `T5` for Vietnamese
        - Note 1 destination `font family` must support `encode type` otherwise maybe wrong display. Set `font family` below.
        - Note 2 `\selectfont` must be called to update when swith by `\fontencoding{encode type}` and select new `font family`
    - Font family by default is `Computer Modern` does not support T1.
        - If we use `fontenc` and set `T1`, default font in family `Computer Modern Super` (cm-super)
            - Latin Modern (lmodern) still along with `T1` encoding by `\usepackage{lmodern}` after set `fontenc` to `T1`. The `cm-super` using bitmap while `lmorden` using vector so family `modern` display better when zoom.
        - if `fontenc` set `T5`, and we need download tools `vntex` from `tlmgr`, then `fontenc` auto switch to `T5` suitable font.
        - Common command: e.g. `fontencoding{T1}\fontfamily{anttlc}\fontseries{m}\fontshape{n}\selectfont`
            - `\fontfamily`: The font family for `T1` encoder, e.g.:
                - For `lmodern` family: lmr, lmss, lmtt
                - For `cm-super` family: cmr, cmss, cmtt
                    - prefix `r Roman` better for book, `ss san serif` better for slide, `tt typewritter` for monospace document.
            - `\fontseries`: l=light, m=medium, b=bold, bx=very bold
            - `\fontshape` : it=italic, n=normal, sl=slanted, sc=small capitals
        - Note always callback `\selectfont` to update change

    - Font style: [Table of font style](#font-style)

    - Font size: [Table of font size ](#font-size)
        - Latex default support 10pt, 11pt, 12pt for readable document file artical, report, book.
        - To use extra size can use [extsizes option](#extra-size-for-page) 
            - Ext: 8pt, 9pt, 10pt, 11pt, 12pt, 14pt, 17pt and 20pt. 
            - Refer [extra size](#references)

#### linespread
Using to set format line spread (or word spacing) from next content after call reload font command `\selectfont` 
```latex
\linespread{factor}
\selectfont{}
```
- LaTeX uses baseline (invisible line under text) as reference, not row height.
    - `Line spacing` = distance between baselines.
    - Default: `baseline skip`= 1.2 × font size.

- `\linespread{factor}` == `new spacing` = factor × (1.2 × font size).
- Convert to Word spacing: Word_spacing ≈ factor × 1.2.
    - factor 1.3 → ≈ 1.56 (≈ 1.5 in Word)
    - factor 1.6 → ≈ 1.92 (≈ double in Word)





#### hyphenation
- Set inline `\-`, when phrase meet linebreak will split at `\-`, swap by `-` then go down
- Training hyphenate phrase at `preamble` before `begin document`:
    - E.g.: \hyphenation{trinh-huu giang}, hyphen auto cut when see `trinhhuu`


#### babel
- Download vietnamese: 
    ```bash
        # download babel to set view interface
        sudo tlmgr install babel-vietnamese
        # sudo $tex_bin/tlmgr install babel-vietnamese # if using custom PATH script

        # download vntex to get font encoder T5 for vietnamese
        sudo tlmgr install vntex

    ```
- In use, we can switch between declared list of languages
```latex
\usepackage[utf8]{inputenc}
\usepackage[T5,T1]{fontenc}
\usepackage[vietnamese, english]{babel} % include in preamble,
% the last input is the main language active



% then in document environment call command to swith main active 
\selectlanguage{vietnamese} % babel
\fontencoding{T5}           % fontenc
\selectfont
    % type something vietnamese


\selectlanguage{english}    % babel
\fontencoding{T1}           % fontenc
\selectfont
    % type something english
    ...
```



#### font style
|Style| describe|
|-|-|
|\texnormal{...}| set text to default normal font, style, bold, size,...|
|\textup{...}| set text upright but keep current characteristic |
|\textit{...}| Set italic shape, rotate character but format shape seem natural |
|\textsl{...}| set slanted shape, only rotate character |
|\textsc{...}| Set small capital, a character have normal shape but is upper case |
|\uppercase{...}| Set uppercase size |
|\textbf{...}| Set text bold|
|\textmd{...}| medium weight, bettween normal and bold|
|\textlf{...}| (Only for xelatex, lualatex) light weight, text size is thinner normal|
|\textrm{...}| set Roman shape in font family, each character have `Serif - a small sharp on foot`, best for document|
|\textsf{...}| set Sans Serif in font family, `Sans == not` in French, best for slide|
|\texttt{...}| set Type writter in font family, best for implement code or computer language or monospace document|


#### font size

##### extra size for page
- Set extra size by primary command `\documentclass`[`font_normal_size`, `paper_type`]{`ext_document_type`}
    - Where `font_normal_size` include: 8pt, 9pt, 10pt, 11pt, 12pt, 14pt, 17pt and 20pt
    - `paper_type`: refer [document class](./_205_latex_document_structure.md#documentclass)
    - `ext_document_type`: just add `ext` before original document type, refer [document class](./_205_latex_document_structure.md#documentclass)
        - e.g.: extarticle, extbook, extreport , ...